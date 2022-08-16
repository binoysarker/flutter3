import 'package:ecommerce_app/controllers/productsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final String? currentSlug = Get.parameters['slug'];
  final ProductsController productsController = Get.find<ProductsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productsController.getProductDetail(currentSlug!);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: ListView(
        children: [
          Text('test')
        ],
      ),
    ));
  }
}
