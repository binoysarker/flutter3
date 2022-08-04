import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:flutter/foundation.dart';

class HomePageProvider with ChangeNotifier{
  List<String> dropDownItems = ['Profile','Logout'];
  String currentlySelectedDropdownItem = 'Profile';
  late final UtilityProvider? _utilityProvider;
  HomePageProvider(this._utilityProvider);
  void onDropdownItemSelected(String item){
    currentlySelectedDropdownItem = item;
    notifyListeners();
  }
  void getCurrentUser() async {

  }

}