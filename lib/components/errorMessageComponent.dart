import 'package:recipe.app/controllers/utilityController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/themes.dart';
class ErrorMessageComponent extends StatelessWidget {
  const ErrorMessageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UtilityController utilityController = Get.find<UtilityController>();
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(
              utilityController.errorMessage.value,
              style: CustomTheme.headerStyle4,
            )),
          ),
        ),
      ],
    );
  }
}
