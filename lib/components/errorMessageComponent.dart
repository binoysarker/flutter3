import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ErrorMessageComponent extends StatelessWidget {
  const ErrorMessageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${context.watch<UtilityProvider>().errorMessage}',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
