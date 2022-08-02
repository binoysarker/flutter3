import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/graphqlComponents/getAllProductsComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/graphqlSection/QueryStringData.dart';
import 'package:ecommerce_app/graphqlSection/products.graphql.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../services/commonVariables.dart';

class StorePage extends HookWidget {
  StorePage({Key? key}) : super(key: key);
  int _counter = 0;

  UtilService _utilService = UtilService();
  GraphQlService graphQlService = GraphQlService();

  void _incrementCounter() {
    _counter++;
  }

  @override
  Widget build(BuildContext context) {
    return context.watch<UtilityProvider>().showLoader
        ? LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text('Stores'),
              actions: [
                IconButton(
                    onPressed: () {
                      currentTheme.toggleTheme();
                    },
                    icon: Icon(Icons.brightness_4_rounded))
              ],
            ),
            drawer: const DrawerComponent(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${_utilService.shopApiUrl} test',
                  ),
                  GetAllProductsComponent(),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  ElevatedButton(
                      onPressed: ()  async{
                        Navigator.pushNamed(context, '/${PageRouteNames.login.name}');

                      },
                      child: Text('login'))
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            bottomNavigationBar:
                BottomNavigationComponent(), // This trailing comma makes auto-formatting nicer for build methods.
          );
  }
}
