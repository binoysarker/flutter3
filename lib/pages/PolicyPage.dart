import 'package:flutter/material.dart';
import 'package:recipe.app/themes.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Policy',
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
                        'Return policy:',
                        style: CustomTheme.headerStyle5,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "We will not accept return without order cancellation.",
                      style: CustomTheme.paragraphStyle,
                    ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        "Replacement policy:",
                        style: CustomTheme.headerStyle5,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Need to report to our customer care within 2 hours of delivery time if any product quality is not good.",
                      style: CustomTheme.paragraphStyle,
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        "Cancellation policy:",
                        style: CustomTheme.headerStyle5,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "We accept cancellation within 12:15AM only",
                      style: CustomTheme.paragraphStyle,
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        "Privacy & Refund policy:",
                        style: CustomTheme.headerStyle5,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "A privacy policy is implemented because of how businesses handle digital data. It's used to communicate how companies take that information in all cases. Therefore, a privacy policy is a statement describing how a website collects, uses, and manages personal information. A privacy policy can appear in just about any medium as long as it's formally presented to the person or entity owning the personal or applicable information. For example, these agreements could appear in print, on a website, on a computer or mobile device, on a signup form, and so on. Because of the legal implications, users can often request and receive a printed version of a privacy policy",
                      style: CustomTheme.paragraphStyle,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "For prepaid orders refund will be processed within 2 to 4 working days.",
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
