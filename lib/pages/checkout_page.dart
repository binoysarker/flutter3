import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/invoiceComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/paymentMethodComponent.dart';
import 'package:recipe.app/components/shippingAddressComponent.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/pages/store_page.dart';
import 'package:recipe.app/services/paymentServices.dart';
import 'package:recipe.app/themes.dart';

import '../allGlobalKeys.dart';
import '../services/commonVariables.dart';
import '../services/dialog_service.dart';
import '../services/util_service.dart';

class CheckoutPage extends StatefulWidget {
  final DialogService? dialogService;
  const CheckoutPage({Key? key,this.dialogService}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  OrderController orderController = Get.find<OrderController>();
  UserController userController = Get.find<UserController>();



  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getOrderForCheckout();
      orderController.getEligibleShippingMethod();
      orderController.getEligiblePaymentMethod();
      // orderController.getAvailableCountries();
      orderController.currentStep.value = 0;
      PaymentServices.initializeRazorPay();
      orderController.resetShippingMethodForm();
    });
  }

  @override
  void dispose() {
    super.dispose();
    PaymentServices.razorpay.clear();
  }

  String checkText(int stepValue) {
    String finalText = 'Continue';
    if (stepValue == 2) {
      finalText = 'Go To Home';
    } else if (stepValue == 1) {
      finalText = 'Place Order';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    List<Step> getSteps() => [
          Step(
              title: Text(
                'Delivery',
                style: CustomTheme.headerStyle,
              ),
              isActive: orderController.currentStep.value >= 0,
              state: orderController.currentStep.value > 0
                  ? StepState.complete
                  : StepState.indexed,
              content: orderController.eligiblePaymentMethods.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ShippingAddressComponent(orderController: orderController)),
          Step(
              title: Text(
                'Payment',
                style: CustomTheme.headerStyle,
              ),
              isActive: orderController.currentStep.value > 0,
              state: orderController.currentStep.value > 1
                  ? StepState.complete
                  : StepState.indexed,
              content: Obx(() => orderController.isLoading2.isTrue
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : PaymentMethodComponent(orderController: orderController))),
          Step(
              title: Text(
                'Complete',
                style: CustomTheme.headerStyle,
              ),
              isActive: orderController.currentStep.value > 1,
              state: orderController.currentStep.value == 2
                  ? StepState.complete
                  : StepState.indexed,
              content:
                  Obx(() => orderController.getOrderByCodeResponse.value == null
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : InvoiceComponent(
                          orderController: orderController,
                        ))),
        ];

    void addShippingDetail() {
      orderController.setOtherInstruction();
      orderController.setShippingAddress(true);
      orderController.setShippingMethod();
    }
    void finalCleanupProcess(){
      print('last step ${orderController.currentStep.value}');
      orderController.removeAllItemFromOrder();
      orderController.resetShippingMethodForm();

      Get.offAll(() => StorePage());
    }

    void processOfflinePaymentSms() {
      // Morning or Evening Delivery
      var showEveningSms =
          orderController.currentlySelectedShippingMethod.value!.code !=
              'morning-delivery';
      var templateId = showEveningSms
          ? "649011f6d6fc053db57148e5"
          : "65793925d6fc05548168c723";
      var number =
          userController.currentAuthenticatedUser.value!.phoneNumber.toString();
      UtilService.sendSms(templateId, number, SmsDeliveryType.morning_evening,
          '${orderController.activeOrderResponse.value!.code}', '');
      orderController.useCurrentUserAddress.value = false;
    }

    return SafeArea(
      child: WillPopScope(
        onWillPop: (){
          print('current step ${orderController.currentStep.value}');
          if(orderController.currentStep.value == 2) {
            finalCleanupProcess();
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Checkout',
              style: CustomTheme.headerStyle,
            ),
          ),
          body: Obx(() => orderController.isLoading.isTrue
              ? LoadingSpinnerComponent()
              : Card(
                  child: Stepper(
                    type: StepperType.horizontal,
                    currentStep: orderController.currentStep.value,
                    onStepContinue: () async {
                      print('current step ${orderController.currentStep.value}');

                      if (orderController.currentStep.value == 0) {
                        if (orderController.currentlySelectedShippingMethod.value !=
                            null) {
                          print(
                              '${orderController.currentlySelectedShippingMethod.value} ${orderController.currentlySelectedCountryCode.value}');
                          if (orderController.useCurrentUserAddress.isTrue || orderController.useShippingAddress.isTrue) {
                            print(
                                'has coupon code ${orderController.hasCouponCode}');
                            if (orderController.hasCouponCode.isTrue) {
                              if(orderController.couponCode.text.length > 0){
                                var res = orderController
                                    .applyCouponCode(orderController.couponCode.text);
                                res.then((value) {
                                  print('testing $value');
                                  if (value) {

                                    addShippingDetail();
                                  }
                                });

                              }else {
                                Get.snackbar(
                                  '',
                                  'Please enter a coupon code',
                                  colorText: Colors.red,
                                  backgroundColor: Colors.yellow,
                                );
                              }
                            } else {

                              addShippingDetail();
                            }
                          } else {
                            final form =
                                AllGlobalKeys.shippingAddressFormKey.currentState;
                            if (form != null) {
                              if (form.validate()) {
                                print('validated');
                                addShippingDetail();
                              } else {
                                print('invalid');
                                Get.snackbar(
                                  '',
                                  'Please fill up the form',
                                  colorText: Colors.red,
                                  backgroundColor: Colors.yellow,
                                );
                              }
                            } else {
                              Get.snackbar(
                                '',
                                'Please select an address',
                                colorText: Colors.red,
                                backgroundColor: Colors.yellow,
                              );
                            }
                          }
                        } else {
                          Get.snackbar(
                            '',
                            'Please select delivery time',
                            colorText: Colors.red,
                            backgroundColor: Colors.yellow,
                          );
                        }
                      } else if (orderController.currentStep.value == 2) {
                        finalCleanupProcess();
                      } else if (orderController.currentStep.value == 1) {
                        // check for online or offline payment
                        if (orderController.selectedPaymentOption.value ==
                            PaymentOptionType.online.name) {
                          UtilService.toggleScreenshotRestriction(true);
                          orderController.createRazorPayOrder();
                        } else {
                          UtilService.toggleScreenshotRestriction(false);
                          var states = await orderController.getNextOrderStates();
                          final isSuccess = await orderController.transitionToOrderState(states[0]);

                          if(isSuccess){
                              orderController.addPaymentToOrder({
                                'amount':
                                    '${UtilService.formatPriceValue(orderController.activeOrderResponse.value!.totalWithTax)}',
                                'paymentType': PaymentOptionType.offline.name,
                              });
                              processOfflinePaymentSms();
                          }else {
                            widget.dialogService!.showMyDialog(message: 'Please clear your cart and try again', methodType: 1);
                          }
                          // orderController.isLoading.value = false;
                        }
                      }
                    },
                    onStepCancel: () {
                      if (orderController.currentStep.value == 0) {
                        Get.offAll(() => StorePage());
                      } else if (orderController.currentStep.value == 2) {
                        null;
                      } else {
                        orderController.currentStep.value--;
                      }
                    },
                    steps: getSteps(),
                    controlsBuilder: (context, details) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: orderController.isLoading.isTrue
                                ? null
                                : details.onStepContinue,
                            child: orderController.isLoading.isTrue
                                ? Center(
                                    child: CircularProgressIndicator(
                                      color: CustomTheme.progressIndicatorColor,
                                    ),
                                  )
                                : Text(
                                    checkText(orderController.currentStep.value))),
                        orderController.currentStep.value != 2
                            ? ElevatedButton(
                                onPressed: details.onStepCancel,
                                child: Text(
                                  'Cancel',
                                  style: CustomTheme.headerStyle,
                                ))
                            : SizedBox(),
                      ],
                    ),
                  ),
                )),
        ),
      ),
    );
  }
}
