import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleCategoryDetailPage extends StatefulWidget {
  const SingleCategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<SingleCategoryDetailPage> createState() =>
      _SingleCategoryDetailPageState();
}

class _SingleCategoryDetailPageState extends State<SingleCategoryDetailPage> {
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      collectionsController.getSingleCollectionDetail();
    });
  }

  @override
  Widget build(BuildContext context) {
    var categoryDetail = collectionsController.singleCollectionDetailDataModel?.data.collection;
    return Obx(() {
      return collectionsController.isLoading.isTrue
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.lightGreen,
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text('${categoryDetail?.name}'),
              ),
              drawer: DrawerComponent(),
              body: Card(
                child: Column(
                  children: [
                    Container(
                      child: Image(
                        image: NetworkImage('https://www.freepnglogos.com/uploads/laptop-png/laptop-png-who-are-adventoris-4.png'),
                      ),
                    )
                  ],
                ),
              ),
            );
    });
  }
}
