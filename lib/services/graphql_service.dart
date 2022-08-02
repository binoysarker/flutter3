import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlService {
  static final GraphQlService _graphQlService = GraphQlService._internal();
  late ValueNotifier<GraphQLClient> _clientValueNotified;
  late GraphQLClient _graphQLClient;

  GraphQLClient get graphQLClient => _graphQLClient;

  set graphQLClient(GraphQLClient value) {
    _graphQLClient = value;
  }

  ValueNotifier<GraphQLClient> get client => _clientValueNotified;

  set client(ValueNotifier<GraphQLClient> value) {
    _clientValueNotified = value;
  }

  factory GraphQlService() => _graphQlService;

  GraphQlService._internal() {}

  Future<void> initializeGraphQl() async {
    await initHiveForFlutter();
    final url = '${dotenv.env['SHOP_API_URL']}';
    print('url ${url}');
    final HttpLink httpLink = HttpLink(url);

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
      // OR
      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    );

    final Link link = httpLink;

    _clientValueNotified = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
    _graphQLClient =
        GraphQLClient(link: link, cache: GraphQLCache(store: HiveStore()));
  }
}
