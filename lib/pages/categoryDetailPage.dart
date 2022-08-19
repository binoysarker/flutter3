import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/itemGalleryComponent.dart';
import 'package:ecommerce_app/controllers/collectionsController.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetailPage extends StatefulWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
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
        title: Obx(() => collectionsController.isLoading.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Text('${collectionsController.singleCollectionDetail['name']}')),
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
                        '${collectionsController.singleCollectionDetail['featuredAsset']['preview'] ?? ''}',
                    imageErrorBuilder: (context, error, stackTrace) =>
                        Image.asset('${CommonVariableData.placeholder}'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      '${UtilService.parseHtmlData(collectionsController.singleCollectionDetail['description'])}'),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: collectionsController
                        .singleCollectionDetailChildrenList
                        .map((element) => Card(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.circular(5)),
                                    width: double.maxFinite,
                                    child: Text(
                                      '${element.name}',
                                      style: CustomTheme.headerStyle2,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  element.productVariants.items.isEmpty
                                      ? Container(
                                          width: 150,
                                          height: 150,
                                          child: Center(
                                            child: Text(
                                                'No products are present under this category'),
                                          ),
                                        )
                                      : ItemGalleryComponent(
                                          headerTitle: 'Products',
                                          loadingState: collectionsController
                                              .isLoading.isTrue,
                                          givenList:
                                              element.productVariants.items,
                                          controllerType: ControllerTypeNames
                                              .productVariantItems.name),
                                ],
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            )),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
