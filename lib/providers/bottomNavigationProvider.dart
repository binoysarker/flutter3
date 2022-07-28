import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier{
  int selectedIndex = 0;
  void setItemIndex(int index){
    selectedIndex = index;
    print('selected index $selectedIndex');
    notifyListeners();
  }
}