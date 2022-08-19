import 'package:ecommerce_app/graphqlSection/collections.graphql.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class ItemGalleryComponent extends StatefulWidget {
  final String headerTitle;
  final bool loadingState;
  final TypeOfList givenList;
  final String controllerType;
  var currentList;

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
  String getImage(
      Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items
          element) {
    String url = '';
    if (widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      url = element.product.featuredAsset != null
          ? element.product.featuredAsset!.preview
          : '';
    }
    return url;
  }

  checkList() {
    if (widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      widget.currentList = widget.givenList.cast<
          Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items>();
    }
  }

  String getName(
      Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items
          element) {
    String name = '';
    if (widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      name = element.name;
    }
    return name;
  }

  String getPrice(
      Query$GetCollectionsByIdOrSlug$collection$children$productVariants$items
          element) {
    String price = '';
    if (widget.controllerType == ControllerTypeNames.productVariantItems.name) {
      price =
          '${UtilService.getCurrencySymble(element.currencyCode.toString())}${element.price}';
    }
    return price;
  }

  @override
  Widget build(BuildContext context) {
    return widget.loadingState
        ? Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 2),
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
                                      '${CommonVariableData.placeholder}'),
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
                                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
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
