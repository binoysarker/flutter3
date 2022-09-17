import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/paymentMethodComponent.dart';
import 'package:recipe.app/components/shippingAddressComponent.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/paymentServices.dart';

import '../allGlobalKeys.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

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
      orderController.getAvailableCountries();
      orderController.currentStep.value = 0;

      PaymentServices.initializeRazorPay();
    });
  }

  @override
  void dispose() {
    super.dispose();
    PaymentServices.razorpay.clear();
  }

  @override
  Widget build(BuildContext context) {
    List<Step> getSteps() => [
          Step(
              title: Text('Shipping'),
              isActive: orderController.currentStep.value >= 0,
              state: orderController.currentStep.value > 0
                  ? StepState.complete
                  : StepState.indexed,
              content: orderController.availableCountryList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ShippingAddressComponent(orderController: orderController)),
          Step(
              title: Text('Payment'),
              isActive: orderController.currentStep.value > 0,
              state: orderController.currentStep.value > 1
                  ? StepState.complete
                  : StepState.indexed,
              content: PaymentMethodComponent(orderController: orderController)),
          Step(
              title: Text('Complete'),
              isActive: orderController.currentStep.value > 1,
              state: orderController.currentStep.value > 2
                  ? StepState.complete
                  : StepState.indexed,
              content: Text('complete')),
        ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Obx(() => orderController.isLoading.isTrue
          ? LoadingSpinnerComponent()
          : Container(
              child: Card(
                child: Stepper(
                  type: StepperType.horizontal,
                  currentStep: orderController.currentStep.value,
                  onStepContinue: () {
                    print('current step ${orderController.currentStep.value}');

                    if (orderController.currentStep.value == 0) {
                      print(
                          '${orderController.currentlySelectedShippingMethodId.value} ${orderController.currentlySelectedCountryCode.value}');
                      final form = shippingAddressFormKey.currentState!;
                      if (form.validate()) {
                        print('validated');
                        orderController.setShippingMethod();
                        orderController.setShippingAddress();
                      } else {
                        print('invalid');
                        Get.snackbar('', 'Please fill up the form');
                      }
                    } else if (orderController.currentStep.value == 2) {
                      print('last step ${orderController.currentStep.value}');
                    } else if (orderController.currentStep.value == 1) {
                      orderController.createRazorPayOrder();
                    }
                  },
                  onStepCancel: () {
                    if (orderController.currentStep.value == 0) {
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
                                  child: CircularProgressIndicator(),
                                )
                              : Text(orderController.currentStep.value == 1
                                  ? 'Start Payment'
                                  : 'Continue')),
                      ElevatedButton(
                          onPressed: details.onStepCancel,
                          child: Text('Cancle')),
                    ],
                  ),
                ),
              ),
            )),
    );
  }
}
