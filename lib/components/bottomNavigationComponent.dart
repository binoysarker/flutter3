import 'package:ecommerce_app/providers/bottomNavigationProvider.dart';
import 'package:ecommerce_app/services/commonVariables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationComponent extends StatefulWidget {
  const BottomNavigationComponent({Key? key}) : super(key: key);

  @override
  State<BottomNavigationComponent> createState() =>
      _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
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
      currentIndex: context.read<BottomNavigationProvider>().selectedIndex,
      onTap: (int index) {
        final re = RegExp(r'\s');
        final selectedLabel = bottomNavigationBarItems[index]
            .label
            .toString()
            .toLowerCase()
            .split(re)
            .join('-');
        Navigator.pushNamed(context,
            '/${selectedLabel == '${PageRouteNames.store.name}' ? '${PageRouteNames.home.name}' : '$selectedLabel'}');
        context.read<BottomNavigationProvider>().setItemIndex(index);
      },
    );
  }
}
