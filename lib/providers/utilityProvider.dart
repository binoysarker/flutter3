import 'package:flutter/material.dart';

class UtilityProvider with ChangeNotifier{
  bool showLoader = false;
  void setLoadingState(bool value){
    showLoader = value;
    notifyListeners();
  }
}