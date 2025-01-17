import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/graphqlSection/collections.graphql.dart';
import 'package:recipe.app/pages/productDetailPage.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';

import '../themes.dart';

class ItemGalleryComponent extends StatefulWidget {
  final String headerTitle;
  final String collectionId;
  final ScrollController scrollController;
  final bool loadingState;
  List<dynamic> givenList;
  final String controllerType;
  List<dynamic> currentList = [];

  ItemGalleryComponent(
      {Key? key,
      required this.collectionId,
      required this.scrollController,
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
  CollectionsController collectionsController =
      Get.find<CollectionsController>();
  OrderController orderController = Get.find<OrderController>();
  int selectedId = 0;

  String getProductImage(dynamic element) {
    String url = '';
    if (widget.controllerType ==
        ControllerTypeNames.productChildrenVariantItems.name) {
      debugPrint(
          'element detail image ${element.product.featuredAsset.preview}');
      var item = element
          as Query$GetCollectionsByIdOrSlug$collection$productVariants$items$product;
      url = '${item.featuredAsset!.preview}';
    } else if (widget.controllerType ==
            ControllerTypeNames.productVariantItems.name ||
        widget.controllerType == ControllerTypeNames.normalProductList.name) {
      url = element.featuredAsset != null ? element.featuredAsset!.preview : '';
    }
    // url = '${element.product.featuredAsset.preview}';

    return url;
  }

  checkList() {
    debugPrint('current list ${widget.currentList}');
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType ==
            ControllerTypeNames.productVariantItems.name) {}
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      widget.currentList = widget.givenList.cast<
          List<
              Query$GetCollectionsByIdOrSlug$collection$productVariants$items>>();
    }
  }

  String getName(dynamic element) {
    String name = '';
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      name = '${UtilService.formateText(element.product.name)}';
    }
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      name = '${UtilService.formateText(element.product.name)}';
    }

    return name;
  }

  String getPrice(dynamic element) {
    String price = '';
    if (widget.controllerType ==
            ControllerTypeNames.productChildrenVariantItems.name ||
        widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      price =
          '${UtilService.getCurrencySymble(element.currencyCode.toString())}${UtilService.formatPriceValue(element.priceWithTax)}';
      // var test = (element as SingleProductListItemType).u
    }

    return price;
  }

  // String? getOptionQuantity(dynamic element) {
  // debugPrint('check element $element');
  // var item = element as Query$GetCollectionsByIdOrSlug$collection$productVariants$items$product;
  // debugPrint('item detail ${item.options.firstWhereOrNull((el) => el.name.isNotEmpty)?.name}');
  // return item.options.firstWhereOrNull((el) => el.name.isNotEmpty)?.name;
  // }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      checkList();
    });
  }

  void addItemToCart(dynamic singleProduct) {
    var id;
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      var item = singleProduct
          as Query$GetCollectionsByIdOrSlug$collection$productVariants$items$product;
      id = item.id;
    }
    debugPrint('product id $id');
    cartController.addItemToCart(id, 1);
    // checkList();
  }

  void goToPage(dynamic element) {
    // debugPrint(element);
    if (widget.controllerType == ControllerTypeNames.normalProductList.name) {
      var item = element
          as Query$GetCollectionsByIdOrSlug$collection$productVariants$items;
      debugPrint("${item.toJson()}");
      Get.to(() => ProductDetailPage(), arguments: {'id': item.product.id});
    } else {
      var item = element
          as Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items;
      Get.to(() => ProductDetailPage(), arguments: {'id': item.product.id});
    }
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
        : Card(
            child: widget.givenList.isEmpty
                ? Column(
                    children: [
                      Center(
                        child: Text(
                          'No Items to display',
                          style: CustomTheme.headerStyle,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            collectionsController.currentSkipCount.value -= 100;
                            collectionsController
                                .getSingleCollectionDetail(widget.collectionId);
                          },
                          child: Text(
                            'Back',
                            style: CustomTheme.headerStyle,
                          ))
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(5)),
                        width: double.maxFinite,
                        child: Text(
                          widget.headerTitle,
                          style: CustomTheme.headerStyle2,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: [
                          ...widget.givenList.map((element) => GestureDetector(
                                onTap: () {
                                  debugPrint(widget.controllerType);
                                  goToPage(element);
                                },
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: Card(
                                    elevation: 5,
                                    child: Column(
                                      children: [
                                        FadeInImage.assetNetwork(
                                          width: 100,
                                          height: 100,
                                          placeholder:
                                              '${CommonVariableData.placeholder}',
                                          image: getProductImage(element),
                                          imageErrorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            '${CommonVariableData.placeholder}',
                                            width: 100,
                                            height: 100,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            getName(element),
                                            style: CustomTheme.headerStyle5,
                                          ),
                                        ),
                                        // Row(
                                        //   mainAxisAlignment:
                                        //       MainAxisAlignment.spaceAround,
                                        //   children: [
                                        //
                                        //     Obx(() => cartController
                                        //                 .isLoading.isTrue &&
                                        //             selectedId ==
                                        //                 int.parse(element.id)
                                        //         ? Center(
                                        //             child:
                                        //                 CircularProgressIndicator(
                                        //               color: CustomTheme
                                        //                   .progressIndicatorColor,
                                        //             ),
                                        //           )
                                        //         : IconButton(
                                        //             onPressed: () {
                                        //               selectedId =
                                        //                   int.parse(element.id);
                                        //               debugPrint(
                                        //                   'select item $element');
                                        //               addItemToCart(element);
                                        //
                                        //             },
                                        //             icon: Icon(
                                        //                 Icons.shopping_cart),
                                        //             color: Colors.lightGreen,
                                        //           ))
                                        //   ],
                                        // )
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          widget.givenList.length > 0
                              ? ElevatedButton(
                                  onPressed: () {
                                    debugPrint('go back');
                                    collectionsController
                                        .currentSkipCount.value -= 100;
                                    collectionsController
                                        .showMoreProductsUnderCollection(
                                            widget.collectionId);
                                    widget.scrollController.animateTo(100,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeInOut);
                                  },
                                  child: Text(
                                    'Back',
                                    style: CustomTheme.headerStyle,
                                  ))
                              : SizedBox(),
                          ElevatedButton(
                              onPressed: () {
                                debugPrint('show more');
                                collectionsController.currentSkipCount.value +=
                                    100;
                                collectionsController
                                    .showMoreProductsUnderCollection(
                                        widget.collectionId);
                                widget.scrollController.animateTo(100,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeInOut);
                              },
                              child: Text(
                                'Show More',
                                style: CustomTheme.headerStyle,
                              )),
                        ],
                      )
                    ],
                  ),
          );
  }
}
