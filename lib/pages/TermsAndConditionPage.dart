import 'package:flutter/material.dart';
import 'package:recipe.app/themes.dart';

class TermsAndConditionPage extends StatelessWidget {
  const TermsAndConditionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Terms and Conditions',
            style: CustomTheme.headerStyle2,
          ),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        'Terms and Conditions :',
                        style: CustomTheme.headerStyle5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Kaaikani application is an online sales of fresh fruits and vegetables. The customer can order their needs through kaaikani application the previous day, and delivery will be made the next day on their doorstep. We care about privacy and security of your personnel information. Collecting and using your Personnel Data Login and Password: Kaakani Application asks for the Customer to create Account. Login and Password are asked for security purpose. Each individual customer has their own login and Password. Address: Kaaikani Application collect address to Deliver the products at the customer doorstep. Bank Details: Kaaikani Application collect Bank Details of the Customer to allow payment through online using Credit cards, Debit cards, Gpay, Phonepe, internet Banking. We do not share your personnel Data with any other third Party without your permission. Children's Privacy our application do not address any one under the age of 13. we do not collect any Personnel information from children through our application. We may update our policy time to time. we will notify you of any changes by posting the new privacy policy on this page.",
                      style: CustomTheme.paragraphStyle,
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
