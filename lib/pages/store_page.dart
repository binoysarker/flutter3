import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/loadingSpinnerComponent.dart';
import 'package:ecommerce_app/providers/homePageProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    final HomePageProvider homePageProvider = context.watch<HomePageProvider>();
    return context.watch<UtilityProvider>().showLoader
        ? LoadingSpinnerComponent()
        : Scaffold(
            appBar: AppBar(
              title: Text('Welcome To KaaiKani'),
              actions: [
                DropdownButton(
                    icon: Icon(Icons.verified_user),
                    items: homePageProvider.dropDownItems
                        .map((item) => DropdownMenuItem<String>(
                              child: Text('$item'),
                              value: homePageProvider
                                  .currentlySelectedDropdownItem,
                            ))
                        .toList(),
                    onChanged: (String? newValue) {
                      homePageProvider.onDropdownItemSelected(newValue!);
                    })
              ],
            ),
            drawer: const DrawerComponent(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () async {
                                Navigator.pushNamed(
                                    context, '/${PageRouteNames.login.name}');
                              },
                              child: Text(
                                'login',
                                style: TextStyle(fontSize: 15),
                              )),
                        ),
                      ),
                    ],
                  )
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
