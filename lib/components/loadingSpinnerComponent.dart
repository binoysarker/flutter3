import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingSpinnerComponent extends StatelessWidget {
  const LoadingSpinnerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Image.asset('assets/images/loader.gif',width: 300,height: 300,)
      ),
    );
  }
}
