import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  State<RewardsPage> createState() => RewardsPageState();
}

class RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rewards'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), onPressed: () {  },
          )
        ],
      ),
      body: Container(
        child: Text('rewards page'),
      ),
    );
  }
}
