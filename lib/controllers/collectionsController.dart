import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/controllers/utilityController.dart';
import 'package:ecommerce_app/graphqlSection/collections.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/models/collectionsModel.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';

class CollectionsController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  List<Items> collectionItems = <Items>[].obs;
  var isLoading = false.obs;

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
        collectionItems =
            CollectionDataModel.fromJson(jsonData).items!.toList();
        isLoading.value = false;
      }
    } catch (e) {
      print('$e');
    }
  }
}
