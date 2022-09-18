import 'package:get/get.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/graphqlSection/cart_data.graphql.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';

class CartController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();
  OrderController orderController = Get.find<OrderController>();
  var isLoading = false.obs;

  void addItemToCart(String variantId, int qty) async {

    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$AddToCart(
        Options$Mutation$AddToCart(
            variables:
                Variables$Mutation$AddToCart(variantId: variantId, qty: qty)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
      Get.snackbar('Error', res.exception.toString());
      orderController.removeAllItemFromOrder();
    }
    if (res.data != null) {
      print('${res.parsedData!.addItemToOrder.toJson()}');
      orderController.getActiveOrders();
      isLoading.value = false;
    }
  }
}
