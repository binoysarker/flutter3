import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/themes.dart';

import '../services/commonVariables.dart';
import '../services/util_service.dart';

class InvoiceComponent extends StatelessWidget {
  InvoiceComponent({Key? key, required this.orderController}) : super(key: key);
  OrderController orderController;


  String getFormatedString(String dateText) {
    if (dateText.isNotEmpty) {
      var dateTime = DateTime.parse(dateText).toLocal();
      return DateFormat('yMd').format(dateTime);
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => orderController.getOrderByCodeResponse.value == null
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
                Text('Order code: '),
                Text(
                  orderController.getOrderByCodeResponse.value?.code ?? '',
                  style: CustomTheme.headerStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Placed: '),
                Text(
                  getFormatedString(orderController.getOrderByCodeResponse.value?.updatedAt ?? ''),
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
              children: orderController
                  .getOrderByCodeResponse.value!.lines
                  .map((element) => Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
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
                        Text(element.productVariant.name),
                        Text('Quantity: ${element.quantity}'),
                      ],
                    ),
                    Text(
                        '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.linePriceWithTax}'),
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
          Text(
            'Shipping Method',
            style: CustomTheme.headerStyle,
          ),
          Container(
            child: Column(
              children: orderController
                  .getOrderByCodeResponse.value!.shippingLines
                  .map((element) => ListTile(
                title: Text(element.shippingMethod.name),
                trailing: Text(
                    '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.priceWithTax}'),
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Total',
                  style: CustomTheme.headerStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${orderController.getOrderByCodeResponse.value?.totalWithTax ?? ''}',
                  style: CustomTheme.headerStyle,
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
