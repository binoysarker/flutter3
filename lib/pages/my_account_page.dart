import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => MyAccountPageState();
}

class MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), onPressed: () {  },
          )
        ],
      ),
      body: Container(
        child: Text('my account page'),
      ),
    );
  }
}
