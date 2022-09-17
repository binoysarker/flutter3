import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/cartButtonComponent.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/productsController.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatefulWidget {
  dynamic routerArguments = Get.arguments;

  ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  ProductsController productsController = Get.find<ProductsController>();
  CartController cartController = Get.find<CartController>();
  OrderController orderController = Get.find<OrderController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      productsController.getProductDetail(widget.routerArguments['slug']!);
      productsController.quantityController.text =
          productsController.currentQuantity.value.toString();
    });
  }

  String getImage() {
    String url = '';
    if(productsController.selectedProductDetail.value!.assets.isNotEmpty){
        url = productsController.selectedProductDetail.value?.assets.first.preview ?? '';
    }
    return url;
  }

  String getPrice() {
    return 'Price: ${UtilService.getCurrencySymble(productsController.selectedProductDetail.value?.currencyCode.name ?? 'USD')}${productsController.updatedPrice.value}';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Obx(() => productsController.isLoading.isTrue
            ? SizedBox()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      productsController.selectedProductDetail.value?.name ?? ''),
                  cartController.isLoading.isTrue
                      ? Center(
                          child: CircularProgressIndicator(color: CustomTheme.progressIndicatorColor,),
                        )
                      : orderController.activeOrderResponse.value?.totalQuantity != null
                          ? CartButtonComponent(
                              isLoading: orderController.isLoading.isTrue,
                              totalQuantity: orderController
                                  .activeOrderResponse.value!.totalQuantity,
                            )
                          : SizedBox()
                ],
              )),
      ),
      body: Card(
        child: Obx(() => productsController.selectedProductDetail.value == null
            ? Container(
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.lightGreen,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Container(
                      child: FadeInImage.assetNetwork(
                        placeholder: '${CommonVariableData.placeholder}',
                        image: getImage(),
                        imageErrorBuilder: (context, error, stackTrace) =>
                            Image.asset('${CommonVariableData.placeholder}'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Model: ${productsController.selectedProductDetail.value!.sku}',
                            style: CustomTheme.headerStyle,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            controller: productsController.quantityController,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.center,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      productsController.increaseQuantity();
                                    },
                                    icon: Icon(Icons.add_circle_outline)),
                                prefixIcon: IconButton(
                                    onPressed: () {
                                      productsController.decreaseQuantity();
                                    },
                                    icon: Icon(Icons.remove_circle_outline))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(
                            getPrice(),
                            style: CustomTheme.headerStyle,
                          ),
                        ),
                        Expanded(
                          child: cartController.isLoading.isTrue
                              ? Center(
                                  child: CircularProgressIndicator(color: CustomTheme.progressIndicatorColor,),
                                )
                              : ElevatedButton(
                                  onPressed: () {
                                    cartController.addItemToCart(
                                        productsController
                                            .selectedProductDetail.value!.id,
                                        int.parse(productsController
                                            .quantityController.text));
                                  },
                                  child: Text('Add To Crat')),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${UtilService.parseHtmlData(productsController.productDetailResponse['description'])}',
                    ),
                    Form(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Visibility(
                          visible: productsController
                              .productDetailVariants.isNotEmpty,
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Select Variant'),
                              value: productsController
                                  .selectedDropdownItemId.value,
                              items: productsController.productDetailVariants
                                  .map((e) => DropdownMenuItem(
                                        child: Text(e.name),
                                        value: e.id,
                                      ))
                                  .toList(),
                              onChanged: (dynamic data) {
                                print(data);
                                productsController.updateProductDetail(data);
                              }),
                        ),
                      ],
                    ))
                  ],
                ),
              )),
      ),
      bottomNavigationBar: BottomNavigationComponent(),
    ));
  }
}
