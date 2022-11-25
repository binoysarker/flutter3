import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe.app/controllers/cartController.dart';

import '../graphqlSection/collections.graphql.dart';
import '../graphqlSection/sellers.graphql.dart';
import '../services/commonVariables.dart';
import '../themes.dart';

class VerticalListComponent extends StatefulWidget {
  bool isLoading = false;
  List givenList;
  String givenTitle = '';
  String controllerType;
  int givenHeight = 300;

  VerticalListComponent({
    Key? key,
    required this.isLoading,
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
        imageString = (widget.givenList
        as List<Query$GetTopSellers$search$items>)[index]
            .productAsset!.preview;
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
      return name;
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
          : Column(
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
                SizedBox(
                  height: widget.givenHeight.toDouble(),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 2/1.5,
                    children: widget.givenList
                        .map((element) => Card(
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '',
                                        style: CustomTheme.headerStyle,
                                      ),
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
    );
  }
}
