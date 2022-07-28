import 'package:ecommerce_app/components/bottomNavigationComponent.dart';
import 'package:ecommerce_app/components/drawerComponent.dart';
import 'package:ecommerce_app/components/graphqlComponents/getAllProductsComponent.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:ecommerce_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);


  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  int _counter = 0;

  UtilService _utilService = UtilService();


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const GetAllProductsComponent(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Get Data'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationComponent(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
