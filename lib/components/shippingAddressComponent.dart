import 'package:recipe.app/validators/validatorDefinations.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import '../allGlobalKeys.dart';
import '../controllers/orderController.dart';

class ShippingAddressComponent extends StatefulWidget {
  ShippingAddressComponent({
    Key? key,
    required this.orderController,
  }) : super(key: key);

  final OrderController orderController;

  @override
  State<ShippingAddressComponent> createState() => ShippingAddressComponentState();
}

class ShippingAddressComponentState extends State<ShippingAddressComponent> {


  @override
  Widget build(BuildContext context) {
    return Form(
        key: shippingAddressFormKey,
        child: Column(
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
                controller: widget.orderController.company,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Company',
                ),
                autofillHints: [AutofillHints.givenName],
                keyboardType: TextInputType.name,
                validator: RequiredValidator(errorText: 'Company is Required'),
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
                autofillHints: [AutofillHints.telephoneNumber,AutofillHints.telephoneNumberCountryCode],
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
                validator: RequiredValidator(errorText: 'Postal Code is Required'),
              ),
            ),
            widget.orderController.availableCountryList.isEmpty
                ? CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Countries'),
                      value: widget.orderController.currentlySelectedCountryCode.value,
                      validator:
                          RequiredValidator(errorText: 'Counties are required'),
                      icon: Icon(Icons.arrow_downward),
                      isExpanded: true,
                      items: widget.orderController.availableCountryList
                          .map<DropdownMenuItem<String>>(
                              (element) => DropdownMenuItem(
                                    child: Text(element.name),
                                    value: element.code,
                                  ))
                          .toList(),
                      onChanged: (dynamic data) {
                        print(data);
                        widget.orderController.currentlySelectedCountryCode.value = data;
                      },
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: widget.orderController.city,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                ),
                autofillHints: [AutofillHints.name],
                keyboardType: TextInputType.name,
                validator: RequiredValidator(errorText: 'City is required'),
              ),
            ),
            widget.orderController.isLoading.isTrue
                ? CircularProgressIndicator()
                : Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Shipping Method'),
                value: widget.orderController.currentlySelectedShippingMethodId.value,
                validator:
                RequiredValidator(errorText: 'Shipping method is required'),
                icon: Icon(Icons.arrow_downward),
                isExpanded: true,
                items: widget.orderController.eligibleShippingMethodList
                    .map<DropdownMenuItem<String>>(
                        (element) => DropdownMenuItem(
                      child: Text(element.name),
                      value: element.id,
                    ))
                    .toList(),
                onChanged: (dynamic data) {
                  print(data);
                  widget.orderController.currentlySelectedShippingMethod.value = widget.orderController.eligibleShippingMethodList.firstWhere((element) => element.id == data);
                  widget.orderController.currentlySelectedShippingMethodId.value = data;
                },
              ),
            ),

          ],
        ));
  }
}
