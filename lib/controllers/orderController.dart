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
      isLoading.value = false;
    }
  }

  void removeAllItemFromOrder(String orderLineId) async {
    isLoading.value = true;
    final res = await graphqlService.clientToQuery().mutate$RemoveAllOrderLines();
    if (res.hasException) {
      print('${res.exception.toString()}');
      isLoading.value = false;
    }
    if (res.data != null) {
      print('${res.parsedData!.removeAllOrderLines.toJson()}');
      isLoading.value = false;
    }
  }
}
