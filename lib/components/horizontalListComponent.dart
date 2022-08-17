import 'package:ecommerce_app/graphqlSection/products.graphql.dart';
import 'package:ecommerce_app/pages/productDetailPage.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
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
      imageString = widget.givenList[index].featuredAsset!.preview;
    }
    if (widget.controllerType == ControllerTypeNames.collection.name) {
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
    if (widget.controllerType == ControllerTypeNames.collection.name) {
      titleString = widget.givenList[index].name;
    }
    return titleString;
  }
  void onItemSelected(int index){
    if (widget.controllerType == ControllerTypeNames.product.name) {
      var productList = (widget.givenList[index] as Query$GetAllProducts$products$items);
      print('${productList.id}');
      Get.to(() => ProductDetailPage(), arguments: {
        'slug': '${productList.slug}'
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.headerTitle,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        widget.loadingState
            ? Center(child: CircularProgressIndicator())
            : SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
                            Image(
                              image: NetworkImage('${(getImage(index))}'),
                              width: 150,
                              height: 100,
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                                child: Text(
                              '${getTitle(index)}',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
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
