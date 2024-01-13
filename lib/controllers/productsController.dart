import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/products.graphql.dart';
import 'package:recipe.app/services/graphql_service.dart';

import '../graphqlSection/vendureSchema.graphql.dart';

class ProductsController extends GetxController {
  var graphqlService = GraphqlService();
  TextEditingController quantityController = TextEditingController();
  var currentQuantity = 1.obs;
  var isLoading = false.obs;
  var searchInProgress = false.obs;
  var productList = <Query$GetAllProducts$products$items>[].obs;
  var searchResultList = <Query$SearchProducts$search$items>[].obs;
  var tempSearchResultList = <Query$SearchProducts$search$items>[].obs;
  var productDetailVariants = <Query$GetProductDetail$product$variants>[].obs;
  var selectedDropdownItemId = ''.obs;

  // ignore: unnecessary_cast
  var selectedProductDetail =
      (null as Query$GetProductDetail$product$variants?).obs;
  var productDetailResponse = (null as Query$GetProductDetail$product?).obs;
  var basePrice = 0.obs;
  var updatedPrice = 0.obs;

  void getProductsList() async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.query$GetAllProducts(
        Options$Query$GetAllProducts(
            variables: Variables$Query$GetAllProducts(take: 10)));
    if (res.hasException) {
      print('${res.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('products list ${res.parsedData!.toJson()}');
      productList.value = res.parsedData!.products.items;
      isLoading.value = false;
    }
  }

  void increaseQuantity() {
    currentQuantity.value++;
    print('current Quantity ${currentQuantity.value}');
    quantityController.text = currentQuantity.value.toString();
    updatedPrice.value = basePrice.value * currentQuantity.value;
  }

  void decreaseQuantity() {
    if (currentQuantity.value > 1) {
      currentQuantity.value--;
      quantityController.text = currentQuantity.value.toString();
      updatedPrice.value = basePrice.value * currentQuantity.value;
    }
  }

  void updateProductDetail(dynamic data) {
    selectedDropdownItemId.value = data;
    selectedProductDetail.value =
        productDetailVariants.firstWhere((element) => element.id == data);
    print('updated product detail ${selectedProductDetail.value?.toJson()}');
    basePrice.value = selectedProductDetail.value!.priceWithTax;
    updatedPrice.value = basePrice.value;
  }

  void getProductDetail(String id) async {
    isLoading.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.query$GetProductDetail(
        Options$Query$GetProductDetail(
            variables: Variables$Query$GetProductDetail(id: id)));
    if (res.hasException) {
      print('${res.toString()}');
      isLoading.value = false;
    }
    if (res.parsedData!.product != null) {
      print('products detail ${res.parsedData!.product!.toJson()}');
      productDetailResponse.value = res.parsedData!.product;
      productDetailVariants.value = res.parsedData!.product!.variants;
      selectedDropdownItemId.value =
          productDetailVariants.value.map((element) => element.id).toList()[0];
      updateProductDetail(selectedDropdownItemId.value);
      isLoading.value = false;
    } else {
      print('selected product id $id');
      Get.snackbar('', 'Can not find the product',
          backgroundColor: Colors.red, colorText: Colors.white);
      isLoading.value = false;
    }
  }
  Future<bool> makeRequestToCheckPrivate(String singleId) async{
    final res = await graphqlService.client.value
        .query$CheckCollectionIsPrivate(
        Options$Query$CheckCollectionIsPrivate(
            variables: Variables$Query$CheckCollectionIsPrivate(
                collectionId: singleId)));
    if(res.hasException){
      print('${res.exception.toString()}');
    }
    return res.parsedData!.checkCollectionIsPrivate == null ? false : res.parsedData!.checkCollectionIsPrivate;
  }

  void checkCollectionIsPrivate() async{
    for (var element in tempSearchResultList) {
      var collectionIds = element.collectionIds;
      var uniqueCollectionIds = [];
      for(String id in collectionIds){
        if(!uniqueCollectionIds.contains(id)){
          uniqueCollectionIds.add(id);
        }
      }
      var isPrivate = false;
      for (var singleId in uniqueCollectionIds) {
        isPrivate = await makeRequestToCheckPrivate(singleId);
        print("checkCollectionIsPrivate $isPrivate");
        if(isPrivate == true){
          break;
        }
      }
        if (isPrivate == true) {
          print('removing item $element');
          searchResultList.remove(element);
        }
    }
    searchInProgress.value = false;
  }

  void searchForProducts(String searchText) async {
    searchInProgress.value = true;
    graphqlService = GraphqlService();
    final res = await graphqlService.client.value.query$SearchProducts(
        Options$Query$SearchProducts(
            variables: Variables$Query$SearchProducts(
                input: Input$SearchInput(
                    take: 8,
                    term: searchText,
                    groupByProduct: true,
                    inStock: true))));
    if (res.hasException) {
      print('${res.toString()}');
      searchInProgress.value = false;
    }
    if (res.data != null) {
      // print('search result ${res.parsedData!.toJson()}');
      tempSearchResultList.value = res.parsedData!.search.items.toList();
      searchResultList.value = res.parsedData!.search.items.toList();
      print(
          "collection id ${tempSearchResultList.value.first.collectionIds.join(',')}");
      checkCollectionIsPrivate();

    }
  }
}
