import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/services/commonVariables.dart';
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
                      var ind = userController
                          .currentAuthenticatedUser.value!.addresses!
                          .indexOf(e);
                      return GestureDetector(
                        onTap: () {
                          orderController.useCurrentUserAddress.value = true;
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Address ${ind + 1}',
                                style: CustomTheme.headerStyle,
                              ),
                              Text(
                                '${e.streetLine1}',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                '${e.streetLine2}',
                                style: CustomTheme.paragraphStyle,
                              ),
                              Text(
                                '${e.city}',
                                style: CustomTheme.paragraphStyle,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: widget.orderController.postalCode,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Postal Code',
                        ),
                        autofillHints: [AutofillHints.postalCode],
                        keyboardType: TextInputType.number,
                        validator: RequiredValidator(
                            errorText: 'Postal Code is Required'),
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
