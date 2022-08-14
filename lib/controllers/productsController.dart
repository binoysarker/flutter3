import 'dart:convert';

import 'package:ecommerce_app/graphqlSection/products.graphql.dart';
import 'package:ecommerce_app/models/ProductListDataModel.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ProductsController extends GetxController{
  final GraphqlService graphqlService = GraphqlService();
  var isLoading = false.obs;
  var productList = <Query$GetAllProducts$products$items>[].obs;


  void getProductsList() async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().query$GetAllProducts(
      Options$Query$GetAllProducts(
        variables: Variables$Query$GetAllProducts(
          take: 20
        )
      )
    );
    if(res.hasException){
      print('${res.toString()}');
      isLoading.value = false;
    }
    if(res.data != null){
      print('products list ${res.parsedData!.toJson()}');
      productList.value = res.parsedData!.products.items.toList();
      isLoading.value = false;
    }
  }
}