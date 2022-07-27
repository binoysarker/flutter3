import 'package:ecommerce_app/services/util_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlService {
  static final GraphQlService _graphQlService = GraphQlService._internal();

  factory GraphQlService() => _graphQlService;

  GraphQlService._internal() {}
  late ValueNotifier<GraphQLClient> client;

  Future<ValueNotifier<GraphQLClient>> initializeGraphqlService() async {
    await initHiveForFlutter();
    final url =
        '${dotenv.env['SHOP_API_URL']}';
    print('url ${url}');
    final HttpLink httpLink = HttpLink(url);

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
      // OR
      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    );

    final Link link = httpLink;

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
    return client;
  }
}
