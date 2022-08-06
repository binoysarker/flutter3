import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UtilityController with ChangeNotifier {
  var showLoader = false.obs;
  var showError = false.obs;
  var errorMessage = ''.obs;

  void setLoadingState(bool value) {
    showLoader.value = value;
  }
  void setAlertMessage(bool error, String message) {
    showError.value = error;
    errorMessage.value = message;
    Timer(Duration(seconds: 3), () {
      showError.value = false;
      errorMessage.value = '';
    });
  }
}
