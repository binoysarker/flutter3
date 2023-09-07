import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:recipe.app/hygraphSection/hygraphQueries.dart';
import 'package:recipe.app/hygraphSection/hygraphQueryDataTypes.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/themes.dart';

import '../allGlobalKeys.dart';
import '../controllers/orderController.dart';
import '../controllers/userController.dart';
import '../graphqlSection/orders.graphql.dart';

class ShippingAddressComponent extends StatefulWidget {
  ShippingAddressComponent({
    Key? key,
    required this.orderController,
  }) : super(key: key);

  final OrderController orderController;

  @override
  State<ShippingAddressComponent> createState() =>
      ShippingAddressComponentState();
}

class ShippingAddressComponentState extends State<ShippingAddressComponent> {
  UserController userController = Get.find<UserController>();
  OrderController orderController = Get.find<OrderController>();
  var showForm = false.obs;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      AllGlobalKeys.shippingAddressFormKey.currentState?.reset();
      userController.getActiveCustomer();
      orderController.useCurrentUserAddress.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // show active shipping address
            Obx(() => Card(
                  elevation: 2,
                  color: orderController.useShippingAddress.value
                      ? Colors.green
                      : Colors.lightGreen,
                  child: Column(
                    children: [
                      orderController.shippingAddressOrder.value
                                  ?.shippingAddress !=
                              null
                          ? GestureDetector(
                              // show shipping address
                              onTap: () {
                                print('onTap');
                                orderController.useCurrentUserAddress.value =
                                    false;
                                orderController.useShippingAddress.value = true;
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Address',
                                        style: CustomTheme.headerStyle,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Name:',
                                            style: CustomTheme.headerStyle,
                                          ),
                                          Text(
                                            '${orderController.shippingAddressOrder.value?.shippingAddress!.fullName}',
                                            style: CustomTheme.paragraphStyle,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Street:',
                                            style: CustomTheme.headerStyle,
                                          ),
                                          Text(
                                            '${orderController.shippingAddressOrder.value?.shippingAddress!.streetLine1},${orderController.shippingAddressOrder.value?.shippingAddress!.streetLine2}',
                                            style: CustomTheme.paragraphStyle,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'City:',
                                            style: CustomTheme.headerStyle,
                                          ),
                                          Text(
                                            '${orderController.shippingAddressOrder.value?.shippingAddress!.city}',
                                            style: CustomTheme.paragraphStyle,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Phone:',
                                            style: CustomTheme.headerStyle,
                                          ),
                                          Text(
                                            '${orderController.shippingAddressOrder.value?.shippingAddress!.phoneNumber}',
                                            style: CustomTheme.paragraphStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(),

                    ],
                  ),
                )),
            // show active user address
            Obx(() => Card(
              color: orderController.useCurrentUserAddress.value
                  ? Colors.green
                  : Colors.lightGreen,
              child: userController.currentAuthenticatedUser.value!
                  .addresses!.isNotEmpty
                  ? Column(
                children: userController
                    .currentAuthenticatedUser
                    .value!
                    .addresses!
                    .map((singleAddress) => GestureDetector(
                  onTap: () {
                    print('onTap');
                    orderController
                        .useCurrentUserAddress
                        .value = true;
                    orderController.useShippingAddress.value = false;
                  },
                  child: Padding(
                    padding:
                    const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Address ',
                            style: CustomTheme
                                .headerStyle,
                          ),
                          Row(
                            children: [
                              Text(
                                'Name:',
                                style: CustomTheme
                                    .headerStyle,
                              ),
                              Text(
                                '${singleAddress.fullName}',
                                style: CustomTheme
                                    .paragraphStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Street:',
                                style: CustomTheme
                                    .headerStyle,
                              ),
                              Text(
                                '${singleAddress.streetLine1},${singleAddress.streetLine2}',
                                style: CustomTheme
                                    .paragraphStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'City:',
                                style: CustomTheme
                                    .headerStyle,
                              ),
                              Text(
                                '${singleAddress.city}',
                                style: CustomTheme
                                    .paragraphStyle,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Phone:',
                                style: CustomTheme
                                    .headerStyle,
                              ),
                              Text(
                                '${singleAddress.phoneNumber}',
                                style: CustomTheme
                                    .paragraphStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
                    .toList(),
              )
                  : SizedBox(),
            ))
          ],
        ),
        Obx(() => showForm.isTrue
            ? Form(
                key: AllGlobalKeys.shippingAddressFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: widget.orderController.fullName,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                        ),
                        autofillHints: [AutofillHints.givenName],
                        keyboardType: TextInputType.name,
                        validator: RequiredValidator(
                            errorText: 'Full Name is required'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: widget.orderController.streetLine1,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Street 1',
                        ),
                        autofillHints: [AutofillHints.givenName],
                        keyboardType: TextInputType.name,
                        validator: RequiredValidator(
                            errorText: 'Street 1 is required'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: widget.orderController.streetLine2,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Street 2',
                        ),
                        autofillHints: [AutofillHints.givenName],
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    GraphQLProvider(
                      client: GraphqlService.hygraphClient,
                      child: Query(
                          options: QueryOptions(
                              document:
                                  gql(HygraphQueryService.postCodesQuery)),
                          builder: (
                            QueryResult result, {
                            Future<QueryResult> Function(FetchMoreOptions)?
                                fetchMore,
                            Future<QueryResult?> Function()? refetch,
                          }) {
                            if (result.hasException) {
                              return Text(result.exception.toString());
                            }
                            if (result.isLoading) {
                              return CircularProgressIndicator(
                                color: CustomTheme.progressIndicatorColor,
                              );
                            }
                            if (result.data == null) {
                              return Text(
                                'No data found',
                                style: CustomTheme.headerStyle,
                              );
                            }
                            List<PostCodeList> postCodeList =
                                postCodeListFromJson(
                                    jsonEncode(result.data!['postcodes']));
                            print('postal codes ${result.data!['postcodes']}');
                            // set the defualt value
                            widget.orderController.selectedPostalCode.value =
                                postCodeList[0].postcode.toString();
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonFormField(
                                value: widget
                                    .orderController.selectedPostalCode.value,
                                items: postCodeList
                                    .map((ele) => DropdownMenuItem<String>(
                                        value: '${ele.postcode}',
                                        child: Text('${ele.postcode}')))
                                    .toList(),
                                decoration: InputDecoration(
                                  label: Text(
                                    'Please select a postal code',
                                    style: CustomTheme.headerStyle,
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (dynamic data) {
                                  print('selected postcode $data');
                                },
                                validator: RequiredValidator(
                                    errorText: 'Please select a postal code'),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Make Default Shipping Address',
                              style: CustomTheme.paragraphStyle),
                          Checkbox(
                              value: widget.orderController
                                  .makeDefaultShippingAddress.value,
                              onChanged: (bool? value) {
                                print('checkbox $value');
                                widget.orderController
                                    .makeDefaultShippingAddress.value = value!;
                              }),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          showForm.value = !showForm.value;
                          orderController.setShippingAddress(false);
                        },
                        child: Text(
                          'Submit',
                          style: CustomTheme.headerStyle,
                        ))
                  ],
                ))
            : Column(
                children: [
                  Obx(() => orderController.useCurrentUserAddress.isFalse
                      ? Column(
                          children: [
                            Text(
                              'Select an address',
                              style: CustomTheme.headerStyle,
                            ),
                            Text(
                              'or',
                              style: CustomTheme.headerStyle,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  showForm.value = !showForm.value;
                                },
                                child: Text(
                                  showForm.value
                                      ? 'Hide Form'
                                      : 'Add New Address',
                                  style: CustomTheme.headerStyle,
                                ))
                          ],
                        )
                      : SizedBox()),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: widget.orderController.otherInstructions,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Cutting or other instructions',
                      ),
                      maxLines: 5,
                      autofillHints: [AutofillHints.oneTimeCode],
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: DropdownButtonFormField<
                        Query$GetEligibleShippingMethods$eligibleShippingMethods>(
                      value:
                      orderController.currentlySelectedShippingMethod.value,
                      decoration: InputDecoration(
                        label: Text(
                          'Please select a delivery time',
                          style: CustomTheme.headerStyle,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (dynamic newValue) {
                        orderController.currentlySelectedShippingMethod.value =
                        newValue
                        as Query$GetEligibleShippingMethods$eligibleShippingMethods;
                        print(
                            'delivery time selected is ${orderController.currentlySelectedShippingMethod.value!.code}');
                      },
                      items: orderController.filteredEligibleShippingMethodList
                          .map((option) {
                        return  DropdownMenuItem(
                          value: option,
                          child: Text(
                            option.name,
                            style: CustomTheme.headerStyle,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: DropdownButtonFormField<String>(
                      value: orderController.selectedPaymentOption.value,
                      decoration: InputDecoration(
                        label: Text(
                          'Please select a payment option',
                          style: CustomTheme.headerStyle,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (dynamic newValue) {
                        orderController.selectedPaymentOption.value = newValue;
                        print(
                            'payment option selected is ${orderController.selectedPaymentOption.value}');
                      },
                      items: orderController.paymentOptionDropdownItems.value
                          .map((String option) {
                        return  DropdownMenuItem<String>(
                          value: option,
                          child: Text(
                            option == PaymentOptionType.online.name
                                ? 'Online'
                                : 'Cash On Delivery',
                            style: CustomTheme.headerStyle,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        child: Obx(() => Switch(
                            value: widget.orderController.hasCouponCode.value,
                            activeColor: Colors.green,
                            onChanged: (bool data) {
                              widget.orderController.hasCouponCode.value = data;
                              print(
                                  'has coupon code ${widget.orderController.hasCouponCode.value}');
                            })),
                      ),
                      Text(
                        'I have coupon Code',
                        style: CustomTheme.paragraphStyle,
                      ),
                    ],
                  ),
                  Obx(() => widget.orderController.hasCouponCode.isTrue
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: widget.orderController.couponCode,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Coupon Code',
                              helperText: 'coupon code is case sensitive',

                            ),
                            autofillHints: [AutofillHints.oneTimeCode],
                            keyboardType: TextInputType.name,
                            validator: RequiredValidator(
                                errorText: 'Coupon Code is required'),
                          ),
                        )
                      : SizedBox()),
                ],
              )),
      ],
    );
  }
}
