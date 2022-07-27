import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GetAllProductsComponent extends StatefulWidget {
  const GetAllProductsComponent({Key? key}) : super(key: key);

  @override
  State<GetAllProductsComponent> createState() =>
      _GetAllProductsComponentState();
}

class _GetAllProductsComponentState extends State<GetAllProductsComponent> {
  String getProductsString = """
  query{
  products{
    items{
      name
      slug
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(getProductsString),
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }
        if (result.isLoading) {
          return Text('Loading');
        }
        if (result.data == null) {
          return Text('No Products');
        }
        List allItems = result.data?['products']?['items'];
        return Expanded(
          child: ListView.builder(
              itemCount: allItems.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Text('${allItems[index]?['name']}');
              }),
        );
      },
    );
  }
}
