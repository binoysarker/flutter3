import 'dart:async';

import 'package:flutter/material.dart';

class UtilityProvider with ChangeNotifier {
  bool showLoader = false;
  bool showError = false;
  String errorMessage = '';

  void setLoadingState(bool value) {
    showLoader = value;
    notifyListeners();
  }
  void setAlertMessage(bool error, String message) {
    showError = error;
    errorMessage = message;
    Timer(Duration(seconds: 3), () {
      showError = false;
      errorMessage = '';
      notifyListeners();
    });
    notifyListeners();
  }
}
