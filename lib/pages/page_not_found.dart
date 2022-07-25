import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Text('Page Not Found'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
                child: Text('Go Home'))
          ],
        ),
      ),
    );
  }
}
