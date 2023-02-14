import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';
import 'package:recipe.app/validators/validatorDefinations.dart';

import '../allGlobalKeys.dart';
import '../controllers/orderController.dart';

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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      shippingAddressFormKey.currentState!.reset();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
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
                validator:
                    RequiredValidator(errorText: 'Full Name is required'),
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
                validator: RequiredValidator(errorText: 'Street 1 is required'),
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
                validator: ValidatorDefinition.phoneNumberMultiValidator,
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
                validator:
                    RequiredValidator(errorText: 'Postal Code is Required'),
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
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: widget.orderController.couponCode,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Coupon Code',
                      ),
                      autofillHints: [AutofillHints.oneTimeCode],
                      keyboardType: TextInputType.name,
                      validator: RequiredValidator(errorText: 'Coupon Code is required'),
                    ),
                  )
                : SizedBox()),
          ],
        ));
  }
}
