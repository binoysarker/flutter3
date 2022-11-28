import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
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

  @override
  Widget build(BuildContext context) {
    var showForm = false.obs;
    TextEditingController fullNameCtr = TextEditingController();
    TextEditingController emailCtr = TextEditingController();
    TextEditingController phoneCtr = TextEditingController();
    TextEditingController street1Ctr = TextEditingController();
    TextEditingController street2Ctr = TextEditingController();
    TextEditingController cityCtr = TextEditingController();
    TextEditingController companyCtr = TextEditingController();
    TextEditingController countryCtr = TextEditingController();
    return Obx(() => userController.isLoading2.isTrue
        ? LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text(
                'My Account',
                style: CustomTheme.headerStyle,
              ),
              actions: [
                IconButton(
                  icon: showForm.isTrue ? Icon(Icons.close_outlined) : Icon(Icons.edit),
                  onPressed: () {
                    showForm.value = !showForm.value;
                  },
                )
              ],
            ),
            body: Container(
                child: Card(
              child: Container(
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(() => showForm.isTrue ? ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: fullNameCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Full Name',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'Full Name is required'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: emailCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email Address',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: [AutofillHints.email],
                          validator: ValidatorDefinition.emailMultiValidator,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: phoneCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                          ),
                          keyboardType: TextInputType.phone,
                          autofillHints: [AutofillHints.telephoneNumber],
                          validator:
                          ValidatorDefinition.phoneNumberMultiValidator,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: street1Ctr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Street 1',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'Streeet 1 required'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: street2Ctr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Street 2',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'Street 2 is required'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: cityCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'City',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'City is required'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: companyCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Company',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'Company is required'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextFormField(
                          autovalidateMode:
                          AutovalidateMode.onUserInteraction,
                          controller: countryCtr,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Country',
                          ),
                          keyboardType: TextInputType.name,
                          autofillHints: [AutofillHints.familyName],
                          validator: RequiredValidator(
                              errorText: 'Country is required'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: ElevatedButton(
                        onPressed: () {  },
                        child: Text('Submit'),
                      ),)
                    ],
                  ) : ListView(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Full Name:',
                            style: CustomTheme.headerStyle,
                          ),Text(
                            '${userController.currentAuthenticatedUser.value!.firstName} ${userController.currentAuthenticatedUser.value!.lastName}',
                            style: CustomTheme.paragraphStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Email:',
                            style: CustomTheme.headerStyle,
                          ),Text(
                            '${userController.currentAuthenticatedUser.value!.emailAddress}',
                            style: CustomTheme.paragraphStyle,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone Number:',
                            style: CustomTheme.headerStyle,
                          ),Text(
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
                        child: Row(
                          children: userController
                              .currentAuthenticatedUser.value!.addresses!
                              .map((e) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Street 1:',style: CustomTheme.headerStyle,),
                                  Text('${e.streetLine1}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Street 2:',style: CustomTheme.headerStyle,),
                                  Text(' ${e.streetLine2}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('city:',style: CustomTheme.headerStyle,),
                                  Text('${e.city}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Company:',style: CustomTheme.headerStyle,),
                                  Text('${e.company}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Country:',style: CustomTheme.headerStyle,),
                                  Text('${e.country.name}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('phone:',style: CustomTheme.headerStyle,),
                                  Text('${e.phoneNumber}',style: CustomTheme.paragraphStyle,),
                                ],
                              ),
                            ],
                          ))
                              .toList(),
                        ),
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
