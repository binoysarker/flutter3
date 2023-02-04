import 'package:recipe.app/controllers/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/pages/productDetailPage.dart';

import '../graphqlSection/products.graphql.dart';
import '../services/commonVariables.dart';
import '../services/util_service.dart';
import '../themes.dart';

class ProductListComponent extends StatefulWidget {
  bool isLoading = false;
  List<SingleProductListItemType> productList;

  ProductListComponent(
      {Key? key, required this.isLoading, required this.productList})
      : super(key: key);

  @override
  State<ProductListComponent> createState() => _ProductListComponentState();
}

class _ProductListComponentState extends State<ProductListComponent> {
  CartController cartController = Get.find<CartController>();
  int selectedId = 0;

  void addItemToCart(Query$GetAllProducts$products$items element) {
    var item = element.variants.firstWhereOrNull((item) => item.id.isNotEmpty);
    cartController.addItemToCart(item!.id, 1);
  }

  String getPrice(Query$GetAllProducts$products$items element) {
    var item = element.variants.firstWhereOrNull((item) => item.id.isNotEmpty);
    return '${UtilService.getCurrencySymble(item!.currencyCode.name)}${UtilService.formatPriceValue(item.priceWithTax)}';
  }

  @override
  Widget build(BuildContext context) {
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
              'Products',
              style: CustomTheme.headerStyle,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.8),
                children: widget.productList
                    .where((p) =>
                // showing products that has price
                p.variants
                    .firstWhereOrNull((item) => item.id.isNotEmpty)
                    ?.price !=
                    null)
                    .map((element) => element == null ? SizedBox() : Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetailPage(),arguments: {'slug': element.slug});
                        },
                        child: FadeInImage.assetNetwork(
                          width: 100,
                          height: 100,
                          placeholder:
                          '${CommonVariableData.placeholder}',
                          image: '${element.featuredAsset?.preview}',
                          imageErrorBuilder:
                              (context, error, stackTrace) =>
                              Image.asset(
                                CommonVariableData.placeholder,
                                width: 100,
                                height: 100,
                              ),
                        ),
                      ),
                      Text(
                        element.name,
                        style: CustomTheme.headerStyle,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
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
            )
          ],
        ),
      ),
    );
  }
}
