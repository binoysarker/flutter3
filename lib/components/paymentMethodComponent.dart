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
      child: orderController.activeOrderForCheckout.value!.lines.isEmpty &&
              orderController
                  .activeOrderForCheckout.value!.shippingLines.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Card(
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
                  Container(
                    child: Column(
                      children: orderController
                          .activeOrderForCheckout.value!.lines
                          .map((element) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                      Text(element.productVariant.name,style: CustomTheme.headerStyle,),
                                      Text('Quantity: ${element.quantity}',style: CustomTheme.paragraphStyle,),
                                    ],
                                  ),
                                  Text(
                                      '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.linePriceWithTax}',style: CustomTheme.headerStyle,)
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Shipping Method',
                    style: CustomTheme.headerStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: orderController
                          .activeOrderForCheckout.value!.shippingLines
                          .map((element) => ListTile(
                                title: Text(
                                  element.shippingMethod.name,
                                  style: CustomTheme.headerStyle,
                                ),
                                trailing: Text(
                                  '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${element.priceWithTax}',
                                  style: CustomTheme.headerStyle,
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
                                '${UtilService.getCurrencySymble(orderController.currencyCode.value)}${orderController.shippingAddressOrder.value?.totalWithTax ?? ''}',
                                style: CustomTheme.headerStyle,
                              ),
                            ),
                    ],
                  ),
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
                  Container(
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
                                style: CustomTheme.headerStyle,
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
                                style: CustomTheme.headerStyle,
                              ),
                            ],
                          ),
                  )
                ],
              ),
            ),
    );
  }
}
