import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/services/util_service.dart';

import '../graphqlSection/collections.graphql.dart';
import '../pages/categoryDetailPage.dart';
import '../services/commonVariables.dart';
import '../themes.dart';

class VerticalListComponent extends StatefulWidget {
  bool isLoading = false;
  bool showSecondLine = false;
  List givenList;
  String givenTitle = '';
  String controllerType;
  int givenHeight = 300;

  VerticalListComponent(
      {Key? key,
      required this.isLoading,
      required this.showSecondLine,
      required this.givenList,
      required this.givenTitle,
      required this.controllerType,
      required this.givenHeight})
      : super(key: key);

  @override
  State<VerticalListComponent> createState() => _VerticalListComponentState();
}

class _VerticalListComponentState extends State<VerticalListComponent> {
  CartController cartController = Get.find<CartController>();
  CollectionsController collectionsController = Get.find<CollectionsController>();
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    String getImage(element) {
      var imageString = '';
      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        imageString = (widget.givenList
                as List<Query$GetAllCollections$collections$items>)[index]
            .featuredAsset != null ?(widget.givenList
        as List<Query$GetAllCollections$collections$items>)[index]
            .featuredAsset!.preview : '';
      }

      return imageString;
    }

    String getName(element) {
      var name = '';

      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        name = (widget.givenList
                as List<Query$GetAllCollections$collections$items>)[index] != null ? (widget.givenList
      as List<Query$GetAllCollections$collections$items>)[index].name : '';
      }
      return "${name.length > 20 ? '${name.characters.take(20)}...' : name}";
    }

    void goToPage(element) {
      if (widget.controllerType == ControllerTypeNames.collection.name) {
        var index = widget.givenList.indexOf(element);
        var item = (widget.givenList
            as List<Query$GetAllCollections$collections$items>)[index];
        Get.to(() => CategoryDetailPage(), arguments: {'id': item.id});
      }
    }

    String getPrice(element) {
      var price = '';

      return price;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.givenTitle}',
                        style: CustomTheme.headerStyle,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: [
                      ...widget.givenList
                          .map((element) => element == null
                          ? SizedBox()
                          : GestureDetector(
                        onTap: () {
                          goToPage(element);
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Card(
                            elevation: 5,
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
                                        getPrice(element),
                                        style: CustomTheme.headerStyle,
                                      ),
                                      Obx(() => cartController
                                          .isLoading.isTrue &&
                                          selectedId ==
                                              int.parse(element.id)
                                          ? Center(
                                        child:
                                        CircularProgressIndicator(
                                          color: CustomTheme
                                              .progressIndicatorColor,
                                        ),
                                      )
                                          : IconButton(
                                        onPressed: () {
                                          selectedId = int.parse(
                                              element.id);
                                          UtilService
                                              .addItemToCart(
                                              element,'user');
                                        },
                                        icon: Icon(
                                            Icons.shopping_cart),
                                        color: Colors.lightGreen,
                                      ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                  widget.givenList.length > 50 ? Center(
                    child: ElevatedButton(onPressed: (){
                      collectionsController.currentSkipCount.value += 100;
                      collectionsController.getAllCollections(collectionsController.currentSkipCount.value);
                    }, child: Text('Show More',style: CustomTheme.headerStyle,)),
                  ) : SizedBox()

                ],
              ),
            ),
    );
  }
}
