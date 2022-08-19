import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/commonVariables.dart';

class SubCategoryDetailPage extends StatefulWidget {
  const SubCategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<SubCategoryDetailPage> createState() => _SubCategoryDetailPageState();
}

class _SubCategoryDetailPageState extends State<SubCategoryDetailPage> {
  dynamic routerArguments = Get.arguments;
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      collectionsController.getSingleCollectionDetail(routerArguments['slug']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Obx(() =>
            Text('${collectionsController.singleCollectionDetail['name']}')),
      ),
      body: Obx(() => collectionsController.isLoading.isTrue
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Card(
              child: ListView(
                children: [
                  FadeInImage.assetNetwork(
                      placeholder: '${CommonVariableData.placeholder}',
                      image:
                      '${collectionsController.singleCollectionDetail['featuredAsset']['preview']}'
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      '${collectionsController.singleCollectionDetail['description'] ?? ''}'
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )),
          bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}