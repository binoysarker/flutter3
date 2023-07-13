import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/services/commonVariables.dart';

GlobalKey<FormState> shippingAddressFormKey = GlobalKey<FormState>();
GlobalKey<FormState> myAccountFormKey = GlobalKey<FormState>();
GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
GlobalKey<ScaffoldState> drawerComponentKey = GlobalKey<ScaffoldState>();
GlobalKey<FormState> verifyOTPForm = GlobalKey<FormState>();
GlobalKey<ScaffoldState> scaffoldState = GlobalKey();


LocalStorage authTokenStorage = new LocalStorage(LocalStorageStrings.auth_token.name);
LocalStorage rememberStorage = new LocalStorage(LocalStorageStrings.remember_me_status.name);
LocalStorage passwordStorage = new LocalStorage(LocalStorageStrings.password.name);
LocalStorage phoneStorage = new LocalStorage(LocalStorageStrings.phone.name);