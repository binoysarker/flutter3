import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/themes.dart';

import '../services/commonVariables.dart';
import '../services/util_service.dart';

class InvoiceComponent extends StatefulWidget {
  InvoiceComponent({Key? key, required this.orderController}) : super(key: key);
  OrderController orderController;

  @override
  State<InvoiceComponent> createState() => _InvoiceComponentState();
}

class _InvoiceComponentState extends State<InvoiceComponent> {
  final UserController userController = Get.find<UserController>();
  OrderController orderController = Get.find<OrderController>();

  String getFormatedString(String dateText) {
    if (dateText.isNotEmpty) {
      var dateTime = DateTime.parse(dateText).toLocal();
      return DateFormat('yMd','en-IN').format(dateTime);
    } else {
      return '';
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('invoice page is loaded');
      initializeDateFormatting('en-IN','');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => widget.orderController.getOrderByCodeResponse.value == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Thank you for your order!',
                    style: CustomTheme.headerStyle3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Order code: ',
                        style: CustomTheme.headerStyle,
                      ),
                      Text(
                        widget.orderController.getOrderByCodeResponse.value
                                ?.code ??
                            '',
                        style: CustomTheme.headerStyle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Placed: ',
                        style: CustomTheme.headerStyle,
                      ),
                      Text(
                        getFormatedString(widget.orderController
                                .getOrderByCodeResponse.value?.updatedAt ??
                            ''),
                        style: CustomTheme.headerStyle,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Payment Type: ',
                        style: CustomTheme.headerStyle,
                      ),
                      Text(
                        widget.orderController.selectedPaymentOption.value ==
                                PaymentOptionType.online.name
                            ? 'Online'
                            : 'Cash On Delivery',
                        style: CustomTheme.headerStyle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                Container(
                  child: Column(
                    children: widget
                        .orderController.getOrderByCodeResponse.value!.lines
                        .map((element) => Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FadeInImage.assetNetwork(
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
                                  Column(
                                    children: [
                                      Text(
                                        UtilService.formateText(
                                            element.productVariant.name),
                                        style: CustomTheme.headerStyle,
                                      ),
                                      Text(
                                        'Quantity: ${element.quantity}',
                                        style: CustomTheme.headerStyle,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${UtilService.getCurrencySymble(widget.orderController.currencyCode.value)}${UtilService.formatPriceValue(element.linePriceWithTax)}',
                                    style: CustomTheme.headerStyle,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                Container(
                  child: Column(
                    children: widget
                        .orderController.activeOrderResponse.value!.discounts
                        .map((e) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  e.description,
                                  style: CustomTheme.headerStyle,
                                ),
                                Text(
                                  widget.orderController.activeOrderResponse
                                      .value!.couponCodes.first,
                                  style: CustomTheme.headerStyle,
                                ),
                                Text(
                                  '- ${UtilService.getCurrencySymble(widget.orderController.activeOrderResponse.value!.currencyCode.name)}${UtilService.formatPriceValue(e.amountWithTax)}',
                                  style: CustomTheme.headerStyle,
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
                Container(
                  child: Column(
                    children: widget.orderController.activeOrderResponse.value!
                        .shippingLines
                        .map((e) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  e.shippingMethod.name,
                                  style: CustomTheme.headerStyle,
                                ),
                                Text(
                                  '+ ${UtilService.getCurrencySymble(widget.orderController.activeOrderResponse.value!.currencyCode.name)}${UtilService.formatPriceValue(e.priceWithTax)}',
                                  style: CustomTheme.headerStyle,
                                ),
                              ],
                            ))
                        .toList(),
                  ),
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
                    Text(
                      'Total',
                      style: CustomTheme.headerStyle,
                    ),
                    Text(
                      '${UtilService.getCurrencySymble(widget.orderController.currencyCode.value)}${(widget.orderController.getOrderByCodeResponse.value!.totalWithTax / 100).toStringAsFixed(2)}',
                      style: CustomTheme.headerStyle,
                    ),
                  ],
                ),
                // BannerComponent()
              ],
            ),
          ));
  }
}
