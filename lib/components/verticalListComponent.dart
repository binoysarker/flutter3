import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/services/util_service.dart';

import '../graphqlSection/collections.graphql.dart';
import '../graphqlSection/sellers.graphql.dart';
import '../pages/categoryDetailPage.dart';
import '../pages/productDetailPage.dart';
import '../services/commonVariables.dart';
import '../themes.dart';

class VerticalListComponent extends StatefulWidget {
  bool isLoading = false;
  bool showSecondLine = false;
  List givenList;
  String givenTitle = '';
  String controllerType;
  int givenHeight = 300;

  VerticalListComponent({
    Key? key,
    required this.isLoading,
    required this.showSecondLine,
    required this.givenList,
    required this.givenTitle,
    required this.controllerType,
    required this.givenHeight
  }) : super(key: key);

  @override
  State<VerticalListComponent> createState() => _VerticalListComponentState();
}

class _VerticalListComponentState extends State<VerticalListComponent> {
  CartController cartController = Get.find<CartController>();
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    String getImage(element) {
      var imageString = '';
      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        imageString = (widget.givenList
                as List<Query$GetAllCollections$collections$items>)[index]
            .featuredAsset!
            .preview;
      }
      if(widget.controllerType == ControllerTypeNames.user.name){
        var index = widget.givenList.indexOf(element);
        var item = (widget.givenList
        as List<Query$GetTopSellers$search$items>)[index];
        imageString = item.productAsset != null ? item.productAsset!.preview : '';
      }
      return imageString;
    }
    String getName(element){
      var name = '';
      if(widget.controllerType == ControllerTypeNames.user.name){
        var index = widget.givenList.indexOf(element);
        name = (widget.givenList
        as List<Query$GetTopSellers$search$items>)[index]
            .productName;
      }
      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        name = (widget.givenList
        as List<Query$GetAllCollections$collections$items>)[index]
            .name;
      }
      return "${name.length > 20 ? '${name.characters.take(20)}...' : name}";
    }
    void goToPage(element){
      if(widget.controllerType == ControllerTypeNames.user.name){
        var index = widget.givenList.indexOf(element);
        var item =
        (widget.givenList
        as List<Query$GetTopSellers$search$items>)[index];
        Get.to(() => ProductDetailPage(),
            arguments: {'slug': '${item.slug}'});
      }
      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        var item = (widget.givenList
        as List<Query$GetAllCollections$collections$items>)[index];
        Get.to(() => CategoryDetailPage(),
            arguments: {'slug': '${item.slug}'});
      }
    }

    return Container(
      child: widget.isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(
                  color: CustomTheme.progressIndicatorColor,
                ),
              ),
            )
          : Card(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              '${widget.givenTitle}',
              style: CustomTheme.headerStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: widget.givenHeight.toDouble(),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2/2.5,
                children: widget.givenList
                    .map((element) => element == null ? SizedBox() : Card(
                  elevation: 5,
                  child: GestureDetector(
                    onTap: (){
                      goToPage(element);
                    },
                    child: Column(
                      children: [
                        FadeInImage.assetNetwork(
                          width: 100,
                          height: 100,
                          placeholder:
                          '${CommonVariableData.placeholder}',
                          image: '${getImage(element)}',
                          imageErrorBuilder:
                              (context, error, stackTrace) =>
                              Image.asset(
                                CommonVariableData.placeholder,
                                width: 100,
                                height: 100,
                              ),
                        ),
                        Text(
                          getName(element),
                          style: CustomTheme.headerStyle,
                        ),
                        Visibility(
                          visible: widget.showSecondLine,
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'price',
                                style: CustomTheme.headerStyle,
                              ),
                              Obx(() => cartController.isLoading.isTrue &&
                                  selectedId == int.parse(element.productId)
                                  ? Center(
                                child: CircularProgressIndicator(
                                  color: CustomTheme
                                      .progressIndicatorColor,
                                ),
                              )
                                  : IconButton(
                                onPressed: () {
                                  var item = element as Query$GetTopSellers$search$items;
                                  selectedId = int.parse(item.productId);
                                  UtilService.addItemToCart(item,ControllerTypeNames.featuredItemList.name);
                                  // print('item ${item.toJson()}');
                                },
                                icon: Icon(Icons.shopping_cart),
                                color: Colors.lightGreen,
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
