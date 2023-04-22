import 'package:get/get.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/services/graphql_service.dart';

class CollectionsController extends GetxController {
  var graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  var collectionItems = <Query$GetAllCollections$collections$items>[].obs;
  var isLoading = false.obs;
  var collectionItemSelected = {}.obs;
  var singleCollectionDetail =
      (null as Query$GetCollectionsByIdOrSlug$collection?).obs;

  void getAllCollections() async {
    try {
      isLoading.value = true;
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value.query$GetAllCollections(
          Options$Query$GetAllCollections(
              variables: Variables$Query$GetAllCollections(
                  input: Input$CollectionListOptions(take: 10))));
      if (res.hasException) {
        print('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        print('collection data ${res.parsedData!.collections.toJson()}');
        collectionItems.value = res.parsedData!.collections.items.toList();
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
      isLoading.value = false;
    }
  }

  void getSingleCollectionDetail(String slug) async {
    try {
      isLoading.value = true;
      graphqlService = GraphqlService();
      final res = await graphqlService.client.value
          .query$GetCollectionsByIdOrSlug(
              Options$Query$GetCollectionsByIdOrSlug(
                  variables:
                      Variables$Query$GetCollectionsByIdOrSlug(slug: slug)));
      if (res.hasException) {
        print('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        print('single collection data ${res.parsedData!.collection!.toJson()}');
        singleCollectionDetail.value = res.parsedData!.collection!;
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
    }
  }
}
