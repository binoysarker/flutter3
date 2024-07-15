import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/cartButtonComponent.dart';
import 'package:recipe.app/components/itemGalleryComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/searchComponent.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/productsController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../graphqlSection/collections.graphql.dart';

class CategoryDetailPage extends StatefulWidget {
  CategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  dynamic routerArguments = Get.arguments;
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();
  final OrderController orderController = Get.find<OrderController>();
  final HomePageController homePageController = Get.find<HomePageController>();
  final ProductsController productsController = Get.find<ProductsController>();
  var showScrollTopButton = false.obs;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      debugPrint('arguments $routerArguments');
      collectionsController.currentSkipCount.value = 0;
      collectionsController.getSingleCollectionDetail(routerArguments['id']);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Query$GetCollectionsByIdOrSlug$collection$productVariants$items>
        getItemList() {
      var itemsList = collectionsController
          .singleCollectionDetail.value!.productVariants.items;
      var uniqueList = itemsList
          .where((element) =>
              itemsList.indexWhere(
                  (other) => other.product.name == element.product.name) ==
              itemsList.indexOf(element))
          .toList();
      return uniqueList;
    }

    return Obx(() => collectionsController.isLoading.isTrue
        ? LoadingSpinnerComponent()
        : SafeArea(
            child: Scaffold(
            appBar: AppBar(
              title: Obx(() => collectionsController.isLoading.isTrue
                  ? SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${collectionsController.singleCollectionDetail.value?.name}',
                          style: CustomTheme.headerStyle2,
                        ),
                        orderController.activeOrderResponse.value != null
                            ? CartButtonComponent(
                                isLoading: orderController.isLoading.isTrue,
                                totalQuantity: orderController
                                    .activeOrderResponse.value!.totalQuantity,
                              )
                            : SizedBox()
                      ],
                    )),
            ),
            body: Obx(() => collectionsController.isLoading.isTrue
                ? Container(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: CustomTheme.progressIndicatorColor,
                      ),
                    ),
                  )
                : Card(
                    child: NotificationListener(
                      onNotification: (scrollNotification) {
                        final scrollPosition =
                            _scrollController.position.pixels;
                        if (_scrollController.position.userScrollDirection ==
                            ScrollDirection.reverse) {
                          // debugPrint('user is going down ${scrollPosition}');
                        } else if (_scrollController
                                .position.userScrollDirection ==
                            ScrollDirection.forward) {
                          // debugPrint('user is going up ${scrollPosition}');
                        }
                        if (scrollPosition >= 200) {
                          showScrollTopButton.value = true;
                        } else {
                          showScrollTopButton.value = false;
                        }
                        return false;
                      },
                      child: ListView(
                        controller: _scrollController,
                        children: [
                          // FadeInImage.assetNetwork(
                          //   key: AllGlobalKeys.categoryDetailBannerSectionKey,
                          //   placeholder: '${CommonVariableData.placeholder}',
                          //   image:
                          //       '${collectionsController.singleCollectionDetail != null ? collectionsController.singleCollectionDetail.value?.featuredAsset?.preview : ''}',
                          //   imageErrorBuilder: (context, error, stackTrace) =>
                          //       Image.asset(
                          //           '${CommonVariableData.placeholder}'),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          SearchComponent(
                              homePageController: homePageController,
                              productsController: productsController),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '${UtilService.parseHtmlData(collectionsController.singleCollectionDetail.value?.description)}',
                              style: CustomTheme.paragraphStyle,
                            ),
                          ),
                          Obx(() => collectionsController
                                      .singleCollectionDetail.value?.children ==
                                  null
                              ? Center(
                                  child: CircularProgressIndicator(
                                    color: CustomTheme.progressIndicatorColor,
                                  ),
                                )
                              : Column(
                                  children: collectionsController
                                      .singleCollectionDetail.value!.children!
                                      .map((element) => Card(
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                element.productVariants.items
                                                        .isEmpty
                                                    ? Container(
                                                        width: 150,
                                                        height: 150,
                                                        child: Center(
                                                          child: Text(
                                                            'No products are present under this category',
                                                            style: CustomTheme
                                                                .headerStyle,
                                                          ),
                                                        ),
                                                      )
                                                    : ItemGalleryComponent(
                                                        headerTitle:
                                                            element.name,
                                                        loadingState:
                                                            collectionsController
                                                                .isLoading
                                                                .isTrue,
                                                        givenList: element
                                                            .productVariants
                                                            .items,
                                                        collectionId:
                                                            routerArguments[
                                                                'id'],
                                                        scrollController:
                                                            _scrollController,
                                                        controllerType:
                                                            ControllerTypeNames
                                                                .productChildrenVariantItems
                                                                .name),
                                              ],
                                            ),
                                          ))
                                      .toList(),
                                )),
                          ItemGalleryComponent(
                              headerTitle: 'Products',
                              loadingState:
                                  collectionsController.isLoading.isTrue,
                              collectionId: routerArguments['id'],
                              givenList: getItemList(),
                              scrollController: _scrollController,
                              controllerType:
                                  ControllerTypeNames.normalProductList.name)
                        ],
                      ),
                    ),
                  )),
            bottomNavigationBar: BottomNavigationComponent(),
            floatingActionButton: Obx(() => showScrollTopButton.isTrue
                ? FloatingActionButton(
                    onPressed: () {
                      _scrollController.animateTo(0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Icon(Icons.arrow_upward))
                : SizedBox()),
          )));
  }
}
