import 'dart:convert';

import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/graphqlSection/collections.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/models/SingleCollectionDetailDataModel.dart';
import 'package:ecommerce_app/models/collectionsModel.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';

class CollectionsController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  var collectionItems = <Query$GetAllCollections$collections$items>[].obs;
  var isLoading = false.obs;
  var collectionItemSelected = {}.obs;
  SingleCollectionDetailDataModel? singleCollectionDetailDataModel;



  void getAllCollections() async {
    try {
      userController.checkAndSetToken();
      isLoading.value = true;
      final res = await graphqlService.clientToQuery().query$GetAllCollections(
          Options$Query$GetAllCollections(
              variables: Variables$Query$GetAllCollections(
                  input: Input$CollectionListOptions(take: 10))));
      if (res.hasException) {
        print('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        print('collection data ${res.parsedData!.collections.toJson()}');

        var jsonData = res.parsedData!.collections.toJson();
        collectionItems.value =
            res.parsedData!.collections.items.toList();
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
      isLoading.value = false;
    }
  }

  void getSingleCollectionDetail() async {
    try {
      userController.checkAndSetToken();
      isLoading.value = true;
      final res = await graphqlService.clientToQuery().query$GetCollectionsByIdOrSlug(
        Options$Query$GetCollectionsByIdOrSlug(
          variables: Variables$Query$GetCollectionsByIdOrSlug(
            slug: collectionItemSelected.value['slug']
          )
        )
      );
      if (res.hasException) {
        print('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        print('collection data ${res.parsedData!.collection!.toJson()}');

        // var jsonData = res.parsedData!.collection!.toJson();
        singleCollectionDetailDataModel = SingleCollectionDetailDataModel.fromJson(res.parsedData!.collection!.toJson());
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
    }
  }
}
