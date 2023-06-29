import 'package:flutter/material.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/themes.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Delivery Detail', style: CustomTheme.headerStyle,)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text('order before 9pm –',style: CustomTheme.headerStyle,)),
            Expanded(child: Text('delivery nextday morning 6am to 9am',style: CustomTheme.paragraphStyle,)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text('order after 9pm –',style: CustomTheme.headerStyle,)),
            Expanded(child: Text('delivery nextday evening 6pm to 9pm',style: CustomTheme.paragraphStyle,)),
          ],
        ),
        Row(
          children: [
            Expanded(child: Text('Order can be accepted only from ${CityToUseType.Madurai.name} City',style: CustomTheme.headerStyle,))
          ],
        )
      ],
    );
  }
}
