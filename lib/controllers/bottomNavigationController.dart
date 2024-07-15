import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 0.obs;
  void setItemIndex(int index) {
    selectedIndex.value = index;
    debugPrint('selected index ${selectedIndex.value}');
  }
}
