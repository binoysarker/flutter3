import 'package:ecommerce_app/graphqlSection/products.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ProductsController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  var isLoading = false.obs;
  var searchInProgress = false.obs;
  var productList = <Query$GetAllProducts$products$items>[].obs;
  var searchResultList = <Query$SearchProducts$search$items>[].obs;
  var productDetail = {}.obs;


  void getProductsList() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().query$GetAllProducts(
        Options$Query$GetAllProducts(
            variables: Variables$Query$GetAllProducts(take: 20)));
    if (res.hasException) {
      print('${res.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('products list ${res.parsedData!.toJson()}');
      productList.value = res.parsedData!.products.items.toList();
      isLoading.value = false;
    }
  }

  void getProductDetail(String slug) async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().query$GetProductDetail(
        Options$Query$GetProductDetail(
            variables: Variables$Query$GetProductDetail(slug: slug)));
    if (res.hasException) {
      print('${res.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('products detail ${res.parsedData!.toJson()}');
      productDetail.value = res.parsedData!.product!.toJson();
      isLoading.value = false;
    }
  }

  void searchForProducts(String searchText) async {
    searchInProgress.value = true;
    final res = await graphqlService.clientToQuery().query$SearchProducts(
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
      searchResultList.value = res.parsedData!.search.items.toList();
      searchInProgress.value = false;
    }
  }
}
