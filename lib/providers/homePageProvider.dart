import 'package:ecommerce_app/graphqlSection/authentication.graphql.dart';
import 'package:ecommerce_app/providers/userProvider.dart';
import 'package:ecommerce_app/providers/utilityProvider.dart';
import 'package:ecommerce_app/services/graphql_service.dart';
import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:graphql/client.dart';

class HomePageProvider with ChangeNotifier {
  List<String> dropDownItems = ['Profile', 'Logout'];
  String currentlySelectedDropdownItem = 'Profile';
  late final UtilityProvider? _utilityProvider;

  HomePageProvider(this._utilityProvider);



  void onDropdownItemSelected(String item) {
    currentlySelectedDropdownItem = item;
    notifyListeners();
  }


}
