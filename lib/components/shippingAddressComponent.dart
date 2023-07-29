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
import 'package:recipe.app/validators/validatorDefinations.dart';

import '../allGlobalKeys.dart';
import '../controllers/orderController.dart';
import '../controllers/userController.dart';

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
      shippingAddressFormKey.currentState?.reset();
      userController.getActiveCustomer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Obx(() => Card(
                  elevation: 2,
                  color: orderController.useCurrentUserAddress.value
                      ? Colors.green
                      : Colors.lightGreen,
                  child: Column(
                    children: userController
                        .currentAuthenticatedUser.value!.addresses!
                        .map((e) {
                      return GestureDetector(
                        onTap: () {
                          orderController.useCurrentUserAddress.value = true;
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Address',
                                style: CustomTheme.headerStyle,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Street',
                                    style: CustomTheme.headerStyle,
                                  ),
                                  Text(
                                    '${e.streetLine1},${e.streetLine2}',
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
                                    '${e.city}',
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
                                    '${e.phoneNumber}',
                                    style: CustomTheme.paragraphStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )),
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
                            showForm.value ? 'Hide Form' : 'Add New Address',
                            style: CustomTheme.headerStyle,
                          ))
                    ],
                  )
                : SizedBox()),
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
                  return DropdownMenuItem<String>(
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
          ],
        ),
        Obx(() => showForm.isTrue
            ? Form(
                key: shippingAddressFormKey,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: widget.orderController.phoneNumber,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone',
                        ),
                        autofillHints: [
                          AutofillHints.telephoneNumber,
                          AutofillHints.telephoneNumberCountryCode
                        ],
                        keyboardType: TextInputType.phone,
                        validator:
                            ValidatorDefinition.phoneNumberMultiValidator,
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
                            print(
                                'postal codes ${postCodeList.map((e) => e.postcode)}');
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
                                    'Please select a payment option',
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1),
                          child: Obx(() => Switch(
                              value: widget.orderController.hasCouponCode.value,
                              activeColor: Colors.green,
                              onChanged: (bool data) {
                                widget.orderController.hasCouponCode.value =
                                    data;
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
                              ),
                              autofillHints: [AutofillHints.oneTimeCode],
                              keyboardType: TextInputType.name,
                              validator: RequiredValidator(
                                  errorText: 'Coupon Code is required'),
                            ),
                          )
                        : SizedBox()),
                  ],
                ))
            : SizedBox()),
      ],
    );
  }
}
