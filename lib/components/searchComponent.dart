import 'package:recipe.app/pages/productDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/homePageController.dart';
import '../controllers/productsController.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({
    Key? key,
    required this.homePageController,
    required this.productsController,
  }) : super(key: key);

  final HomePageController homePageController;
  final ProductsController productsController;

  void resetSearch(BuildContext context) {
    homePageController.productSearchController.text = '';
    FocusScope.of(context).unfocus();
    productsController.searchResultList.value = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
                child: Container(
              color: Colors.white,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: homePageController.productSearchController,
                onChanged: (String value) {
                  print('$value');
                  productsController.searchForProducts(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search for products',
                  suffixIcon: IconButton(
                      onPressed: () {
                        resetSearch(context);
                      },
                      icon: Obx(() => productsController.searchInProgress.isTrue
                          ? Icon(Icons.access_alarms)
                          : Icon(Icons.close))),
                ),
              ),
            )),
          ),
          Obx(() => Visibility(
                visible: productsController.searchResultList.length > 0,
                child: productsController.searchInProgress.isTrue
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.lightGreen,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.00)),
                          child: ListView.builder(
                            itemBuilder: (context, index) => ListTile(
                                onTap: () {
                                  print(
                                      '${productsController.searchResultList[index].slug}');
                                  Get.to(() => ProductDetailPage(), arguments: {
                                    'id':
                                        '${productsController.searchResultList[index].productVariantId}'
                                  });
                                  resetSearch(context);
                                },
                                leading: Image(
                                  height: 50,
                                  width: 50,
                                  image: NetworkImage(
                                      '${productsController.searchResultList[index].productAsset!.preview}'),
                                ),
                                title: Text(
                                    '${productsController.searchResultList[index].productName}')),
                            itemCount:
                                productsController.searchResultList.length,
                          ),
                        ),
                      ),
              )),
        ],
      ),
    );
  }
}
