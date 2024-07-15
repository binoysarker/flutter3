import "package:flutter/material.dart";
import 'package:flutter_dotenv/flutter_dotenv.dart';
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/services/commonVariables.dart';

class GraphqlService {
  static dynamic link;
  static HttpLink httpLink = HttpLink('${dotenv.env['SHOP_API_URL']}');
  static HttpLink hygraphHttpLink =
      HttpLink('${dotenv.env['HYGRAPH_API_URL']}');
  static String currentAuthToken = "";

  static void setToken(String token) {
    var localStorage = new LocalStorage(LocalStorageStrings.auth_token.name);
    var localToken = localStorage.getItem(LocalStorageStrings.auth_token.name);
    AuthLink authLink =
        AuthLink(getToken: () async => 'Bearer ${localToken ?? token}');
    debugPrint('current totken $token');
    GraphqlService.link = authLink.concat(GraphqlService.httpLink);
  }

  static void removeToken() {
    GraphqlService.link = null;
  }

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: AuthLink(getToken: () async {
        if (GraphqlService.currentAuthToken != "") {
          debugPrint('current token is ${GraphqlService.currentAuthToken}');
          return 'Bearer ${GraphqlService.currentAuthToken}';
        } else {
          debugPrint('no token is there');
          return "";
        }
      }).concat(GraphqlService.httpLink),
      cache: GraphQLCache(),
    ),
  );

  static ValueNotifier<GraphQLClient> hygraphClient = ValueNotifier(
    GraphQLClient(
      link: GraphqlService.hygraphHttpLink,
      cache: GraphQLCache(),
    ),
  );
}
