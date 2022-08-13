import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:flutter/material.dart';

class SingleCategoryDetailPage extends StatefulWidget {
  const SingleCategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<SingleCategoryDetailPage> createState() => _SingleCategoryDetailPageState();
}

class _SingleCategoryDetailPageState extends State<SingleCategoryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      drawer: DrawerComponent(),
      body: Column(
        children: [
          Container(
            child: Text('category'),
          )
        ],
      ),
    );
  }
}
