import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:recipe.app/components/bottomNavigationComponent.dart';
import 'package:recipe.app/components/drawerComponent.dart';
import 'package:recipe.app/components/loadingSpinnerComponent.dart';
import 'package:recipe.app/components/productListComponent.dart';
import 'package:recipe.app/components/verticalListComponent.dart';
import 'package:recipe.app/controllers/cartController.dart';
import 'package:recipe.app/controllers/collectionsController.dart';
import 'package:recipe.app/controllers/homePageController.dart';
import 'package:recipe.app/controllers/loginPageController.dart';
import 'package:recipe.app/controllers/orderController.dart';
import 'package:recipe.app/controllers/productsController.dart';
import 'package:recipe.app/controllers/userController.dart';
import 'package:recipe.app/controllers/utilityController.dart';
import 'package:recipe.app/hygraphSection/hygraphQueries.dart';
import 'package:recipe.app/hygraphSection/hygraphQueryDataTypes.dart';
import 'package:recipe.app/services/commonVariables.dart';
import 'package:recipe.app/services/graphql_service.dart';
import 'package:recipe.app/services/util_service.dart';
import 'package:recipe.app/themes.dart';

import '../components/cartButtonComponent.dart';
import '../components/searchComponent.dart';

class StorePage extends StatefulWidget {
  StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  UtilService _utilService = UtilService();
  final HomePageController homePageController = Get.find<HomePageController>();
  final UserController userController = Get.find<UserController>();
  final UtilityController utilityController = Get.find<UtilityController>();
  final ProductsController productsController = Get.find<ProductsController>();
  final CartController cartController = Get.find<CartController>();
  final LoginPageController loginPageController =
      Get.find<LoginPageController>();
  final OrderController orderController = Get.find<OrderController>();
  final CollectionsController collectionsController =
      Get.find<CollectionsController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      userController.getActiveCustomer();
      productsController.getProductsList();
      collectionsController.getAllCollections();
      orderController.getActiveOrders();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => productsController.isLoading.isTrue
        ? LoadingSpinnerComponent()
        : SafeArea(
            child: WillPopScope(
            onWillPop: () {
              loginPageController.exitDialog(context);
              return Future.value(false);
            },
            child: Scaffold(
              appBar: AppBar(
                title: Obx(() => collectionsController.isLoading.isTrue
                    ? SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Welcome To ${_utilService.appName}',
                            style: CustomTheme.headerStyle2,
                          ),
                          IconButton(
                              onPressed: () {
                                FlutterPhoneDirectCaller.callNumber(
                                    dotenv.env['HELP_CALL'].toString());
                              },
                              icon: Icon(Icons.local_phone)),
                          CartButtonComponent(
                            isLoading: orderController.isLoading.isTrue,
                            totalQuantity: orderController
                                    .activeOrderResponse.value?.totalQuantity ??
                                0,
                          )
                        ],
                      )),
              ),
              drawer: Obx(() => loginPageController.loading.isTrue
                  ? Center(
                      child: CircularProgressIndicator(
                        color: CustomTheme.progressIndicatorColor,
                      ),
                    )
                  : DrawerComponent()),
              body: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/splash.png'),
                    ),
                  ),
                  Center(
                    child: Text('Veedu Varai', style: CustomTheme.headerStyle),
                  ),
                  SearchComponent(
                      homePageController: homePageController,
                      productsController: productsController),
                  Container(
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 0,
                          ),
                          GraphQLProvider(
                            client: GraphqlService.hygraphClient,
                            child: Query(
                                options: QueryOptions(
                                    document:
                                        gql(HygraphQueryService.assetQuery)),
                                builder: (
                                  QueryResult result, {
                                  Future<QueryResult> Function(
                                          FetchMoreOptions)?
                                      fetchMore,
                                  Future<QueryResult?> Function()? refetch,
                                }) {
                                  if (result.hasException) {
                                    return Text(result.exception.toString());
                                  }
                                  if (result.isLoading) {
                                    return CircularProgressIndicator(
                                      color: CustomTheme.progressIndicatorColor,
                                    );
                                  }
                                  if (result.data == null) {
                                    return Text(
                                      'No data found',
                                      style: CustomTheme.headerStyle,
                                    );
                                  }
                                  List<AssetsList> assetList =
                                      assetsListFromJson(
                                          jsonEncode(result.data!['assets']));

                                  return Column(
                                    children: assetList
                                        .map(
                                          (e) => Container(
                                            child: FadeInImage.assetNetwork(
                                              placeholder:
                                                  '${CommonVariableData.placeholder}',
                                              image: e.url,
                                              imageErrorBuilder: (context,
                                                      error, stackTrace) =>
                                                  Image.asset(
                                                      '${CommonVariableData.placeholder}'),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 0,
                          ),

                          Obx(() => VerticalListComponent(
                                isLoading:
                                    collectionsController.isLoading.isTrue,
                                showSecondLine: false,
                                givenList:
                                    collectionsController.collectionItems,
                                givenTitle: 'Shop By Category',
                                controllerType:
                                    ControllerTypeNames.collection.name,
                                givenHeight: 300,
                              )),
                          // all products
                          Obx(() => ProductListComponent(
                                isLoading: productsController.isLoading.isTrue,
                                productList: productsController.productList,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: BottomNavigationComponent(),
            ),
          )));
  }
}
