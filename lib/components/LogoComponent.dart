import 'package:flutter/material.dart';

import '../themes.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/splash.png'),
          ),
        ),
        // Center(
        //   child:
        //   Text('Veedu Varai', style: CustomTheme.headerStyle),
        // ),
      ],
    );
  }
}
