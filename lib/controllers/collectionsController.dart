import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/schema.graphql.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:get/get.dart';

class CollectionsController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  var collectionItems = <Query$GetAllCollections$collections$items>[].obs;
  var isLoading = false.obs;
  var collectionItemSelected = {}.obs;
  var singleCollectionDetail = {}.obs;
  var singleCollectionDetailChildrenList = <Query$GetCollectionsByIdOrSlug$collection$children>[].obs;
  var productVariantItemList = <SingleProductVariantItemType>[].obs;

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
      userController.checkAndSetToken();
      isLoading.value = true;
      final res = await graphqlService
          .clientToQuery()
          .query$GetCollectionsByIdOrSlug(
              Options$Query$GetCollectionsByIdOrSlug(
                  variables:
                      Variables$Query$GetCollectionsByIdOrSlug(slug: slug)));
      if (res.hasException) {
        print('${res.exception.toString()}');
        isLoading.value = false;
      }
      if (res.data != null) {
        print('collection data ${res.parsedData!.collection!.toJson()}');
        singleCollectionDetail.value = res.parsedData!.collection!.toJson();
        singleCollectionDetailChildrenList.value = res.parsedData!.collection!.children!.toList();
        productVariantItemList.value = res.parsedData!.collection!.productVariants.items;
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
    }
  }
}
