import 'package:ecommerce_app/controllers/bottomNavigationController.dart';
import 'package:ecommerce_app/pages/store_page.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationComponent extends StatefulWidget {
  const BottomNavigationComponent({Key? key}) : super(key: key);


  @override
  State<BottomNavigationComponent> createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  final BottomNavigationController bottomNavigationController = Get.find<BottomNavigationController>();
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.store),
      label: 'Store',
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.table_chart), label: 'Orders'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.card_giftcard), label: 'Rewards'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_box_sharp), label: 'My Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationBarItems,
      currentIndex: bottomNavigationController.selectedIndex.value,
      onTap: (int index) {
        bottomNavigationController.selectedIndex.value = index;
        final re = RegExp(r'\s');
        final commonRouteNameRegex = RegExp(r'(home|store)');
        final selectedLabel = bottomNavigationBarItems[index]
            .label
            .toString()
            .toLowerCase()
            .split(re)
            .join('_');
        if(commonRouteNameRegex.hasMatch(selectedLabel)){
          Get.offNamedUntil('home', (route) => route.isFirst);
        }else {
          Get.toNamed(selectedLabel);
        }
        // Navigator.pushNamed(context,
        //     '/${selectedLabel == '${PageRouteNames.store.name}' ? '${PageRouteNames.home.name}' : '$selectedLabel'}');
        // Get.find<BottomNavigationController>().setItemIndex(index);
      },
    );
  }
}
