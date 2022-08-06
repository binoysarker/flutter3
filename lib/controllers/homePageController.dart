import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  var dropDownItems = ['Profile', 'Logout'].obs;
  var currentlySelectedDropdownItem = 'Profile'.obs;

  void onDropdownItemSelected(String item) {
    currentlySelectedDropdownItem.value = item;
  }
}
