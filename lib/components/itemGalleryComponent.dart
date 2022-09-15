import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/graphqlSection/products.graphql.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes.dart';

class ItemGalleryComponent extends StatefulWidget {
  final String headerTitle;
  final bool loadingState;
  List<dynamic> givenList = [];
  final String controllerType;
  List<dynamic> currentList = [];

  ItemGalleryComponent(
      {Key? key,
      required this.headerTitle,
      required this.loadingState,
      required this.givenList,
      required this.controllerType})
      : super(key: key);

  @override
  State<ItemGalleryComponent> createState() => _ItemGalleryComponentState();
}

class _ItemGalleryComponentState extends State<ItemGalleryComponent> {
  CartController cartController = Get.find<CartController>();
  OrderController orderController = Get.find<OrderController>();
  int selectedId = 0;

  String getImage(dynamic element) {
    String url = '';
    if (widget.controllerType ==
        ControllerTypeNames.productChildrenVariantItems.name) {
      url = element.product.featuredAsset != null
          ? element.product.featuredAsset!.preview
          : '';
    }
    if (widget.controllerType == ControllerTypeNames.productVariantItems.name ||
        widget.controllerType == ControllerTypeNames.normalProductList.name) {
      url = element.featuredAsset != null ? element.featuredAsset!.preview : '';
    }

    return url;
  }

  checkList() {
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      print('current list ${widget.currentList}');
    }
    if(widget.controllerType == ControllerTypeNames.normalProductList.name){
      widget.currentList = widget.givenList.cast<List<SingleProductListItemType>>();
    }

  }

  String getName(dynamic element) {
    String name = '';
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      name = '${element.product.name}';
    }
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      name = '${element.name}';
    }

    return name;
  }

  String getPrice(dynamic element) {
    String price = '';
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      price =
          '${UtilService.getCurrencySymble(element.currencyCode.toString())}${element.price}';
      // var test = (element as SingleProductListItemType).u
    }
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      price = '${element.variants[0].price}';
    }
    return price;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    checkList();
    });
  }

  void addItemToCart(dynamic singleProductVariantItemType) {
    var id;
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      id = (singleProductVariantItemType as SingleProductListItemType)
          .variants[0]
          .id;
    } else {
      id = singleProductVariantItemType.id;
    }
    cartController.addItemToCart(id, 1);
    checkList();
  }

  @override
  Widget build(BuildContext context) {
    return widget.loadingState
        ? Container(
            child: Center(
              child: CircularProgressIndicator(
                color: CustomTheme.progressIndicatorColor,
              ),
            ),
          )
        : SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 2),
              children: widget.givenList
                  .map((element) => Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            FadeInImage.assetNetwork(
                              width: 100,
                              height: 100,
                              placeholder: '${CommonVariableData.placeholder}',
                              image: getImage(element),
                              imageErrorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                '${CommonVariableData.placeholder}',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Text(
                              getName(element),
                              style: CustomTheme.headerStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  getPrice(element),
                                  style: CustomTheme.headerStyle,
                                ),
                                Obx(() => cartController.isLoading.isTrue &&
                                        selectedId == int.parse(element.id)
                                    ? Center(
                                        child: CircularProgressIndicator(
                                          color: CustomTheme
                                              .progressIndicatorColor,
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () {
                                          selectedId = int.parse(element.id);
                                          addItemToCart(element);
                                        },
                                        icon: Icon(Icons.shopping_cart),
                                        color: Colors.lightGreen,
                                      ))
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          );
  }
}
