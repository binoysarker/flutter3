import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/cartButtonComponent.dart';
import 'package:recipe.app/components/itemGalleryComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('arguments $routerArguments');
      collectionsController.getSingleCollectionDetail(routerArguments['slug']);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                            '${collectionsController.singleCollectionDetail.value!.name}',style: CustomTheme.headerStyle2,),
                        orderController
                                    .activeOrderResponse.value?.totalQuantity !=
                                null
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
                    child: ListView(
                      children: [
                        FadeInImage.assetNetwork(
                          placeholder: '${CommonVariableData.placeholder}',
                          image:
                              '${collectionsController.singleCollectionDetail.value?.featuredAsset?.preview}',
                          imageErrorBuilder: (context, error, stackTrace) =>
                              Image.asset('${CommonVariableData.placeholder}'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                              '${UtilService.parseHtmlData(collectionsController.singleCollectionDetail.value!.description)}',style: CustomTheme.paragraphStyle,),
                        ),
                        SizedBox(
                          height: 20,
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
                                                            'No products are present under this category',style: CustomTheme.headerStyle,),
                                                      ),
                                                    )
                                                  : ItemGalleryComponent(
                                                      headerTitle: element.name,
                                                      loadingState:
                                                          collectionsController
                                                              .isLoading.isTrue,
                                                      givenList: element
                                                          .productVariants
                                                          .items,
                                                      controllerType:
                                                          ControllerTypeNames
                                                              .productChildrenVariantItems
                                                              .name),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              )),
                        SizedBox(
                          height: 20,
                        ),
                        ItemGalleryComponent(
                            headerTitle: 'Products',
                            loadingState:
                                collectionsController.isLoading.isTrue,
                            givenList: collectionsController
                                .singleCollectionDetail
                                .value!
                                .productVariants
                                .items,
                            controllerType:
                                ControllerTypeNames.productVariantItems.name)
                      ],
                    ),
                  )),
            bottomNavigationBar: BottomNavigationComponent(),
          )));
  }
}
