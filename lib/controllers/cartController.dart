import 'package:ecommerce_app/graphqlSection/cart_data.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final GraphqlService graphqlService = GraphqlService();

  void addItemToCart(String variantId, int qty) async {
    final res = await graphqlService.clientToQuery().mutate$AddToCart(
        Options$Mutation$AddToCart(
            variables:
                Variables$Mutation$AddToCart(variantId: variantId, qty: qty)));
    if(res.hasException){
      print('${res.exception.toString()}');
    }
    if(res.data != null){
      print('${res.parsedData!.addItemToOrder.toJson()}');
    }
  }
}
