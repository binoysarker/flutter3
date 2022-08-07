import 'package:ecommerce_app/controllers/userController.dart';
import 'package:ecommerce_app/graphqlSection/collections.graphql.dart';
import 'package:ecommerce_app/graphqlSection/schema.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';

class CollectionsController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  final UserController userController = Get.find<UserController>();
  var allCollectionsData = Map<String,dynamic>().obs;

  void getAllCollections() async {
    userController.checkAndSetToken();
    final res = await graphqlService.clientToQuery().query$GetAllCollections(
        Options$Query$GetAllCollections(
            variables: Variables$Query$GetAllCollections(
                input: Input$CollectionListOptions(take: 10))));
    if (res.hasException) {
      print('${res.exception.toString()}');
    }
    if (res.data != null) {
      print('collections ${res.parsedData?.collections.toJson()}');
      allCollectionsData.value = res.parsedData?.collections.toJson() as Map<String,dynamic>;
    }
  }
}
