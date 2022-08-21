import 'package:ecommerce_app/controllers/orderController.dart';
import 'package:ecommerce_app/graphqlSection/cart_data.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';

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
    if(res.hasException){
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if(res.data != null){
      print('${res.parsedData!.addItemToOrder.toJson()}');
      orderController.getActiveOrders();
      isLoading.value = false;
    }
  }
}
