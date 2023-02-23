import 'dart:async';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/themes.dart';

import '../controllers/userController.dart';
import '../validators/validatorDefinations.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => MyAccountPageState();
}

class MyAccountPageState extends State<MyAccountPage> {
  final UserController userController = Get.find<UserController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
    });
  }

  Column creteColumn(
    int index,
    TextEditingController street1Ctr,
    TextEditingController street2Ctr,
    TextEditingController cityCtr,
    TextEditingController postalCodeCtr,
    TextEditingController phoneNumberCtr,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Text(
            'Address #${index + 1}',
            style: CustomTheme.headerStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: street1Ctr,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Street 1',
            ),
            keyboardType: TextInputType.name,
            autofillHints: [AutofillHints.familyName],
            validator: RequiredValidator(errorText: 'Streeet 1 required'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: street2Ctr,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Street 2',
            ),
            keyboardType: TextInputType.name,
            autofillHints: [AutofillHints.familyName],
            validator: RequiredValidator(errorText: 'Street 2 is required'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: postalCodeCtr,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Postal Code',
            ),
            keyboardType: TextInputType.number,
            autofillHints: [AutofillHints.postalCode],
            validator: RequiredValidator(errorText: 'Postal Code is required'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: phoneNumberCtr,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
            ),
            keyboardType: TextInputType.phone,
            autofillHints: [AutofillHints.telephoneNumber],
            validator: RequiredValidator(errorText: 'Phone Number is required'),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var showForm = false.obs;
    List<TextEditingController> street1Controllers = [];
    List<TextEditingController> street2Controllers = [];
    List<TextEditingController> cityControllers = [];
    List<TextEditingController> postalCodeControllers = [];
    List<TextEditingController> phoneNumberControllers = [];
    List<Column> fields = [];
    TextEditingController fnameCtr = TextEditingController();
    TextEditingController lnameCtr = TextEditingController();
    TextEditingController phoneCtr = TextEditingController();

    void updateInputField() {
      fields = [];
      fnameCtr.text = userController.currentAuthenticatedUser.value!.firstName;
      lnameCtr.text = userController.currentAuthenticatedUser.value!.lastName;

      phoneCtr.text =
          userController.currentAuthenticatedUser.value!.phoneNumber.toString();
      userController.currentAuthenticatedUser.value!.addresses
          ?.asMap()
          .forEach((index, element) {
        final street1Ctr = TextEditingController();
        final street2Ctr = TextEditingController();
        final cityCtr = TextEditingController();
        final postalCodeCtr = TextEditingController();
        final phoneNumberCtr = TextEditingController();
        street1Ctr.text = element.streetLine1.toString();
        street2Ctr.text = element.streetLine2.toString();
        cityCtr.text = 'Mumbai';
        postalCodeCtr.text = element.postalCode.toString();
        phoneNumberCtr.text = element.phoneNumber.toString();
        street1Controllers.add(street1Ctr);
        street2Controllers.add(street2Ctr);
        cityControllers.add(cityCtr);
        postalCodeControllers.add(postalCodeCtr);
        phoneNumberControllers.add(phoneNumberCtr);
        final currentColumnField = creteColumn(index, street1Ctr, street2Ctr,
            cityCtr, postalCodeCtr, phoneNumberCtr);
        fields.add(currentColumnField);
      });
    }

    return Obx(() => userController.isLoading2.isTrue
        ? LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'My Account',
                style: CustomTheme.headerStyle,
              ),
              actions: [
                ElevatedButton.icon(
                    onPressed: () {
                      showForm.value = !showForm.value;
                      if (showForm.value) {
                        updateInputField();
                      } else {
                        myAccountFormKey.currentState!.reset();
                      }
                    },
                    icon: showForm.isTrue
                        ? Icon(Icons.close_outlined)
                        : Icon(Icons.edit),
                    label: Text(
                      '${showForm.isTrue ? '' : 'Edit'}',
                      style: CustomTheme.headerStyle,
                    )),
              ],
            ),
            body: Container(
                child: Card(
              child: Container(
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => showForm.isTrue
                      ? Form(
                          key: myAccountFormKey,
                          child: ListView(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: fnameCtr,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'First Name',
                                  ),
                                  keyboardType: TextInputType.name,
                                  autofillHints: [AutofillHints.familyName],
                                  validator: RequiredValidator(
                                      errorText: 'First Name is required'),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: lnameCtr,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Last Name',
                                  ),
                                  keyboardType: TextInputType.name,
                                  autofillHints: [AutofillHints.familyName],
                                  validator: RequiredValidator(
                                      errorText: 'Last Name is required'),
                                ),
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: phoneCtr,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Phone Number',
                                  ),
                                  keyboardType: TextInputType.phone,
                                  autofillHints: [
                                    AutofillHints.telephoneNumber
                                  ],
                                  validator: ValidatorDefinition
                                      .phoneNumberMultiValidator,
                                ),
                              ),
                              // address section
                              ListView.builder(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return fields[index];
                                },
                                itemCount: fields.length,
                              ),

                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (myAccountFormKey.currentState!
                                        .validate()) {
                                      final Map<String, String> customerData =
                                          {};
                                      customerData.addAll({
                                        'fname': fnameCtr.text,
                                        'lname': lnameCtr.text,
                                        'phone': phoneCtr.text,
                                      });

                                      final List<Map<String, String>>
                                          addressList = [];

                                      userController.currentAuthenticatedUser
                                          .value!.addresses
                                          ?.asMap()
                                          .forEach((index, element) {
                                        addressList.add({
                                          'id': element.id,
                                          'street1':
                                              street1Controllers[index].text,
                                          'street2':
                                              street2Controllers[index].text,
                                          'city': 'Mumbai',
                                          'fullName':
                                              '${customerData['fname']} ${customerData['lname']}',
                                          'postalCode':
                                              '${postalCodeControllers[index].text}',
                                          'phoneNumber':
                                              '${phoneNumberControllers[index].text}',
                                        });
                                      });
                                      userController.updateCustomer(
                                          customerData['fname'] as String,
                                          customerData['lname'] as String,
                                          customerData['phone'] as String);
                                      // update customer address

                                      Timer(Duration(seconds: 1), () {
                                        addressList.forEach((element) {
                                          userController.updateCustomerAddress(
                                              element['id'] ?? '',
                                              element['city'] ?? '',
                                              element['street1'] ?? '',
                                              element['street2'] ?? '',
                                              element['fullName'] ?? '',
                                              element['postalCode'] ?? '',
                                              element['phoneNumber'] ?? '');
                                        });
                                      });
                                      print('valid');
                                    } else {
                                      Get.snackbar(
                                          '', 'Please fill up the form',
                                          colorText: Colors.red,backgroundColor: Colors.yellow);
                                    }
                                  },
                                  child: Text(
                                    'Update',
                                    style: CustomTheme.headerStyle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : ListView(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Full Name:',
                                  style: CustomTheme.headerStyle,
                                ),
                                Text(
                                  '${userController.currentAuthenticatedUser.value!.firstName} ${userController.currentAuthenticatedUser.value!.lastName}',
                                  style: CustomTheme.paragraphStyle,
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  'Phone Number:',
                                  style: CustomTheme.headerStyle,
                                ),
                                Text(
                                  '${userController.currentAuthenticatedUser.value!.phoneNumber}',
                                  style: CustomTheme.paragraphStyle,
                                ),
                              ],
                            ),
                            Text(
                              'Address List: ',
                              style: CustomTheme.headerStyle,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Obx(() => userController.isLoading2.isTrue
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color:
                                            CustomTheme.progressIndicatorColor,
                                      ),
                                    )
                                  : Row(
                                      children: userController
                                          .currentAuthenticatedUser
                                          .value!
                                          .addresses!
                                          .map((e) => Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Street 1:',
                                                        style: CustomTheme
                                                            .headerStyle,
                                                      ),
                                                      Text(
                                                        '${e.streetLine1}',
                                                        style: CustomTheme
                                                            .paragraphStyle,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Street 2:',
                                                        style: CustomTheme
                                                            .headerStyle,
                                                      ),
                                                      Text(
                                                        ' ${e.streetLine2}',
                                                        style: CustomTheme
                                                            .paragraphStyle,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'city:',
                                                        style: CustomTheme
                                                            .headerStyle,
                                                      ),
                                                      Text(
                                                        '${e.city}',
                                                        style: CustomTheme
                                                            .paragraphStyle,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'phone:',
                                                        style: CustomTheme
                                                            .headerStyle,
                                                      ),
                                                      Text(
                                                        '${e.phoneNumber}',
                                                        style: CustomTheme
                                                            .paragraphStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ))
                                          .toList(),
                                    )),
                            )
                          ],
                        )),
                ),
              ),
            )),
            bottomNavigationBar: BottomNavigationComponent(),
          ));
  }
}
