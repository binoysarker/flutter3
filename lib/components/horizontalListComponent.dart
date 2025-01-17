import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/graphqlSection/products.graphql.dart';
import 'package:recipe.app/pages/categoryDetailPage.dart';
import 'package:recipe.app/pages/productDetailPage.dart';
import 'package:recipe.app/pages/subCategoryDetailPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalListComponent extends StatefulWidget {
  final String headerTitle;
  final bool loadingState;
  final List givenList;
  final String controllerType;

  HorizontalListComponent(
      {Key? key,
      required this.controllerType,
      required this.headerTitle,
      required this.loadingState,
      required this.givenList})
      : super(key: key);

  @override
  State<HorizontalListComponent> createState() =>
      _HorizontalListComponentState();
}

class _HorizontalListComponentState extends State<HorizontalListComponent> {
  String getImage(int index) {
    var imageString = '';
    if (widget.controllerType == ControllerTypeNames.user.name) {
      imageString = widget.givenList[index].productAsset!.preview;
    }
    if (widget.controllerType == ControllerTypeNames.product.name) {
      imageString =
          (widget.givenList[index] as Query$GetAllProducts$products$items)
              .featuredAsset!
              .preview;
    }
    if (widget.controllerType == ControllerTypeNames.collection.name ||
        widget.controllerType ==
            ControllerTypeNames.singleCollectionDetail.name) {
      imageString = widget.givenList[index].featuredAsset!.preview;
    }
    return imageString;
  }

  String getTitle(int index) {
    var titleString = '';
    if (widget.controllerType == ControllerTypeNames.user.name) {
      titleString = widget.givenList[index].productName;
    }
    if (widget.controllerType == ControllerTypeNames.product.name) {
      titleString = widget.givenList[index].name;
    }
    if (widget.controllerType == ControllerTypeNames.collection.name ||
        widget.controllerType ==
            ControllerTypeNames.singleCollectionDetail.name) {
      titleString = widget.givenList[index].name;
    }
    return titleString;
  }

  void onItemSelected(int index) {
    if (widget.controllerType == ControllerTypeNames.product.name) {
      var productList =
          (widget.givenList[index] as Query$GetAllProducts$products$items);
      debugPrint('${productList.id}');
      Get.offAll(() => ProductDetailPage(),
          arguments: {'id': '${productList.id}'});
    }
    if (widget.controllerType == ControllerTypeNames.collection.name) {
      var collectionSelected = (widget.givenList[index]
          as Query$GetAllCollections$collections$items);
      debugPrint('${collectionSelected.id}');
      Get.offAll(() => CategoryDetailPage(),
          arguments: {'id': '${collectionSelected.id}'});
    }
    if (widget.controllerType ==
        ControllerTypeNames.singleCollectionDetail.name) {
      var collectionSelected = (widget.givenList[index]
          as Query$GetCollectionsByIdOrSlug$collection$children);
      debugPrint('${collectionSelected.slug}');
      Get.offAll(() => SubCategoryDetailPage(),
          arguments: {'id': '${collectionSelected.id}'});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          widget.headerTitle,
          style: CustomTheme.headerStyle,
        ),
        SizedBox(
          height: 30,
        ),
        widget.loadingState
            ? Center(
                child: CircularProgressIndicator(
                color: CustomTheme.progressIndicatorColor,
              ))
            : SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      onItemSelected(index);
                    },
                    child: Card(
                      elevation: 0,
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FadeInImage.assetNetwork(
                              width: 150,
                              height: 150,
                              placeholder: '${CommonVariableData.placeholder}',
                              image: '${getImage(index)}',
                              imageErrorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                '${CommonVariableData.placeholder}',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                                child: Text(
                              '${getTitle(index)}',
                              style: CustomTheme.headerStyle,
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: widget.givenList.length,
                ),
              ),
      ],
    );
  }
}
