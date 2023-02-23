import "package:flutter/material.dart";
import 'package:flutter_dotenv/flutter_dotenv.dart';
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:localstorage/localstorage.dart';
import 'package:recipe.app/services/commonVariables.dart';

class GraphqlService {
  static dynamic link;
  static HttpLink httpLink = HttpLink('${dotenv.env['SHOP_API_URL']}');

  static void setToken(String token) {
    var localStorage = new LocalStorage(LocalStorageStrings.auth_token.name);
    var localToken = localStorage.getItem(LocalStorageStrings.auth_token.name);
    AuthLink authLink = AuthLink(getToken: () async => 'Bearer ${localToken ?? token}');
    GraphqlService.link = authLink.concat(GraphqlService.httpLink);
  }

  static void removeToken() {
    GraphqlService.link = null;
  }

  static Link getLink() {
    return GraphqlService.link ?? GraphqlService.httpLink;
  }

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: getLink(),
      cache: GraphQLCache(),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        watchQuery: Policies(
          fetch: FetchPolicy.cacheFirst
        )
      ),
      link: getLink(),
    );
  }
}
