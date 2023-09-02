import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/services/commonVariables.dart';

class AllGlobalKeys{
  static final GlobalKey<FormState> shippingAddressFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> myAccountFormKey = GlobalKey<FormState>();
  static final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> drawerComponentKey = GlobalKey<ScaffoldState>();
  static final GlobalKey<FormState> verifyOTPForm = GlobalKey<FormState>();
  static final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

}


LocalStorage authTokenStorage = new LocalStorage(LocalStorageStrings.auth_token.name);
LocalStorage rememberStorage = new LocalStorage(LocalStorageStrings.remember_me_status.name);
LocalStorage passwordStorage = new LocalStorage(LocalStorageStrings.password.name);
LocalStorage phoneStorage = new LocalStorage(LocalStorageStrings.phone.name);
