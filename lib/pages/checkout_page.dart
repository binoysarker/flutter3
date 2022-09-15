import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import 'package:get/get.dart';
import 'package:recipe.app/allGlobalKeys.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/paymentMethodComponent.dart';
import 'package:recipe.app/components/shippingAddressComponent.dart';
import 'package:recipe.app/controllers/orderController.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  OrderController orderController = Get.find<OrderController>();

  void startBrainTreeProcess() async {
    final request = BraintreeDropInRequest(
      clientToken: '${orderController.clientToken.value}',
      collectDeviceData: true,
      googlePaymentRequest: BraintreeGooglePaymentRequest(
        totalPrice: '${orderController.shippingAddressOrder.value!.totalWithTax}',
        currencyCode: '${orderController.currencyCode}',
        billingAddressRequired: false,
      ),
      paypalRequest: BraintreePayPalRequest(
        amount: '${orderController.shippingAddressOrder.value!.totalWithTax}',
        displayName: 'Example company',
      ),
    );

    final result = await BraintreeDropIn.start(request);
    if (result != null) {
      print('Nonce: ${result.paymentMethodNonce.nonce}');
      orderController.currentNonce.value = result.paymentMethodNonce.nonce;
      orderController.onUserCheckout();
    } else {
      print('Selection was canceled.');
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      orderController.getOrderForCheckout();
      orderController.getClientToken();
      orderController.getEligibleShippingMethod();
      orderController.getAvailableCountries();
      orderController.currentStep.value = 0;
    });
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
                  ? CircularProgressIndicator()
                  : ShippingAddressComponent(orderController: orderController)),
          Step(
              title: Text('Payment'),
              isActive: orderController.currentStep.value > 0,
              state: orderController.currentStep.value > 1
                  ? StepState.complete
                  : StepState.indexed,
              content:
                  PaymentMethodComponent(orderController: orderController)),
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
                      final form = shippingAddressFormKey.currentState!;
                      if (form.validate()) {
                        print('validated');
                        orderController.setShippingAddress();
                        orderController.setShippingMethod();
                      } else {
                        print('invalid');
                      }
                    }
                    else if (orderController.currentStep.value ==
                        2) {
                      print('last step ${orderController.currentStep.value}');
                    }
                    else if(orderController.currentStep.value == 1){
                      startBrainTreeProcess();
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
                      ElevatedButton(onPressed: details.onStepContinue, child: Text(orderController.currentStep.value == 1 ? 'Start Payment' : 'Continue')),
                      ElevatedButton(onPressed: details.onStepCancel, child: Text('Cancle')),
                    ],
                  ),
                ),
              ),
            )),
    );
  }
}
