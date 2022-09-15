import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../controllers/orderController.dart';
import '../services/commonVariables.dart';

class PaymentMethodComponent extends StatelessWidget {
  PaymentMethodComponent({Key? key, required this.orderController})
      : super(key: key);
  OrderController orderController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: orderController.productLines.isEmpty &&
              orderController.shippingLines.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Products',
                    style: CustomTheme.headerStyle,
                  ),
                ),
                ...orderController.productLines
                    .map((element) => ListTile(
                          dense: true,
                          title: Text(element.productVariant.name),
                          leading: FadeInImage.assetNetwork(
                            width: 100,
                            height: 100,
                            placeholder: '${CommonVariableData.placeholder}',
                            image: '${element.featuredAsset?.preview}',
                            imageErrorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              '${CommonVariableData.placeholder}',
                              width: 100,
                              height: 100,
                            ),
                          ),
                          subtitle: Text('Quantity: ${element.quantity}'),
                          trailing: Text(
                              '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.unitPriceWithTax}'),
                        ))
                    .toList(),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Shipping Method',
                    style: CustomTheme.headerStyle,
                  ),
                ),
                ...orderController.shippingLines
                    .map((element) => ListTile(
                          title: Text(element.shippingMethod.name),
                          trailing: Text(
                              '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.priceWithTax}'),
                        ))
                    .toList(),
                SizedBox(
                  height: 20,
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 4.0,
                ),
                ListTile(
                  title: Text(
                    'Total',
                    style: CustomTheme.headerStyle,
                  ),
                  trailing: Text(
                    '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${orderController.shippingAddressOrder.value!.totalWithTax}',
                    style: CustomTheme.headerStyle,
                  ),
                ),
                Text(
                  'Shipping Address',
                  style: CustomTheme.headerStyle,
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 8.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(orderController.finalShippingAddress?.fullName ??
                              ''),
                          Text(orderController
                                  .finalShippingAddress?.streetLine1 ??
                              ''),
                          Text(orderController
                                  .finalShippingAddress?.streetLine2 ??
                              ''),
                          Text(
                              orderController.finalShippingAddress?.city ?? ''),
                          Text(orderController
                                  .finalShippingAddress?.postalCode ??
                              ''),
                          Text(orderController.finalShippingAddress?.country ??
                              ''),
                          Text(
                              'Mobile Number: ${orderController.finalShippingAddress?.phoneNumber ?? ''}'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
