import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatefulWidget {

  const BottomNavigationComponent({Key? key}) : super(key: key);


  @override
  State<BottomNavigationComponent> createState() => _BottomNavigationComponentState();
}

class _BottomNavigationComponentState extends State<BottomNavigationComponent> {
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.lightGreen,
      onTap: (int index) {
        Navigator.pushReplacementNamed(context,
            '/${bottomNavigationBarItems[index].label.toString().toLowerCase()}');
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
