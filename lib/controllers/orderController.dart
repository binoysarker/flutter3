import 'package:ecommerce_app/graphqlSection/orders.graphql.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderController extends GetxController {
  GraphqlService graphqlService = GraphqlService();

  var activeOrderResponse = {}.obs;
  var isLoading = false.obs;
  var activeOrderItemList = <Fragment$Cart$lines>[].obs;

  void getActiveOrders() async {
    isLoading.value = true;
    final res = await graphqlService
        .clientToQuery()
        .query$GetActiveOrder(Options$Query$GetActiveOrder());
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('active orders ${res.parsedData!.activeOrder!.toJson()}');
      activeOrderResponse.value = res.parsedData!.activeOrder!.toJson();
      activeOrderItemList.value = res.parsedData!.activeOrder!.lines;
      isLoading.value = false;
    }
  }

  void adjustOrderLine(String orderLineId, int quantity) async {
    final res = await graphqlService.clientToQuery().mutate$AdjustOrderLine(
        Options$Mutation$AdjustOrderLine(
            variables: Variables$Mutation$AdjustOrderLine(
                orderLineId: orderLineId, quantity: quantity)));
    if(res.hasException){
      print('${res.exception.toString()}');
    }
    if(res.data != null){
      print('adjusted order ${res.parsedData!.adjustOrderLine.toJson()}');
      getActiveOrders();
    }
  }

  void removeItemFromOrder(String orderLineId) async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$RemoveOrderLine(
        Options$Mutation$RemoveOrderLine(
            variables:
                Variables$Mutation$RemoveOrderLine(orderLineId: orderLineId)));
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.removeOrderLine.toJson()}');
      getActiveOrders();
      isLoading.value = false;
    }
  }

  void removeAllItemFromOrder() async {
    isLoading.value = true;
    final res =
        await graphqlService.clientToQuery().mutate$RemoveAllOrderLines();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.removeAllOrderLines.toJson()}');
      getActiveOrders();
      isLoading.value = false;
    }
  }
}
