import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../controllers/orderController.dart';
import '../graphqlSection/orders.graphql.dart';
import '../services/commonVariables.dart';

class PaymentMethodComponent extends StatelessWidget {
  PaymentMethodComponent({Key? key, required this.orderController})
      : super(key: key);
  OrderController orderController;

  @override
  Widget build(BuildContext context) {
    // String getPriceValue(Query$GetActiveOrder$activeOrder$promotions option) {
    //   String text = '';
    //   option.actions.forEach((element) {
    //     if (element.code == 'order_percentage_discount') {
    //       text +=
    //           "${element.code.split('_').sublist(1).join(' ')}: ${element.args.first.value}%,";
    //     } else if (element.code == 'order_fixed_discount') {
    //       text +=
    //           "${element.code.split('_').sublist(1).join(' ')}: ${UtilService.getCurrencySymble(orderController.activeOrderResponse.value!.currencyCode.name)} ${UtilService.formatPriceValue(int.parse(element.args.first.value))},";
    //     }
    //   });
    //   return text;
    // }

    return orderController.activeOrderForCheckout.value!.lines.isEmpty &&
            orderController.activeOrderForCheckout.value!.shippingLines.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Products',
                  style: CustomTheme.headerStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: orderController.activeOrderForCheckout.value!.lines
                      .map((element) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.5),
                                child: FadeInImage.assetNetwork(
                                  width: 50,
                                  height: 50,
                                  placeholder:
                                      '${CommonVariableData.placeholder}',
                                  image: '${element.featuredAsset?.preview}',
                                  imageErrorBuilder:
                                      (context, error, stackTrace) =>
                                          Image.asset(
                                    '${CommonVariableData.placeholder}',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      UtilService.formateText(
                                          element.productVariant.name),
                                      style: CustomTheme.headerStyle,
                                    ),
                                    Text(
                                      'Quantity: ${element.quantity}',
                                      style: CustomTheme.paragraphStyle,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${UtilService.formatPriceValue(element.linePriceWithTax)}',
                                  style: CustomTheme.headerStyle,
                                  textAlign: TextAlign.end,
                                ),
                              )
                            ],
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(() => orderController.isLoading.isTrue
                    ? Center(
                        child: CircularProgressIndicator(
                          color: CustomTheme.progressIndicatorColor,
                        ),
                      )
                    : Column(
                        children: orderController
                            .activeOrderResponse.value!.discounts
                            .map((e) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      e.description,
                                      style: CustomTheme.headerStyle,
                                    ),
                                    Text(
                                      "- ${UtilService.getCurrencySymble(orderController.activeOrderResponse.value!.currencyCode.name)}${UtilService.formatPriceValue(int.parse(e.amountWithTax.toString()))}",
                                      style: CustomTheme.headerStyle,
                                    ),
                                  ],
                                ))
                            .toList(),
                      )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Obx(() => orderController
                          .activeOrderResponse.value!.shippingLines.isNotEmpty
                      ? Column(
                          children: orderController
                              .activeOrderResponse.value!.shippingLines
                              .map((e) => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          e.shippingMethod.name,
                                          style: CustomTheme.headerStyle,
                                        ),
                                      ),
                                      Text(
                                        '+ ${UtilService.getCurrencySymble(orderController.activeOrderResponse.value!.currencyCode.name)}${UtilService.formatPriceValue(e.priceWithTax)}',
                                        style: CustomTheme.headerStyle,
                                      ),
                                    ],
                                  ))
                              .toList(),
                        )
                      : SizedBox()),
                ),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Total',
                        style: CustomTheme.headerStyle,
                      ),
                    ),
                    orderController.shippingAddressOrder.value == null
                        ? Container(
                            child: Center(
                            child: CircularProgressIndicator(),
                          ))
                        : Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${UtilService.formatPriceValue(orderController.activeOrderResponse.value!.totalWithTax)}',
                              style: CustomTheme.headerStyle,
                            ),
                          ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Inclusive GST',
                        style: CustomTheme.paragraphStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // BannerComponent(),
                // SizedBox(
                //   height: 20,
                // ),
                Obx(() => orderController.otherInstructionResponse.value != null
                    ? Column(
                        children: [
                          Text(
                            'Cutting or other instructions',
                            style: CustomTheme.headerStyle,
                          ),
                          Text(
                              '${orderController.otherInstructionResponse.value?.customFields?.otherInstructions}')
                        ],
                      )
                    : SizedBox()),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Shipping Address',
                  style: CustomTheme.headerStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: double.infinity,
                    child: orderController.shippingAddressOrder.value == null
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.fullName ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.streetLine1 ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.streetLine2 ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.city ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.postalCode ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                orderController.shippingAddressOrder.value
                                        ?.shippingAddress?.country ??
                                    '',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                'phone: ${orderController.shippingAddressOrder.value?.shippingAddress?.phoneNumber ?? ''}',
                                style: CustomTheme.paragraphStyle,
                              ),
                            ],
                          ),
                  ),
                )
              ],
            ),
          );
  }
}
