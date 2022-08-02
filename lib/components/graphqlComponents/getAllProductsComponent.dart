import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphqlSection/QueryStringData.dart';

class GetAllProductsComponent extends HookWidget {
  GetAllProductsComponent({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final allProducts =
        useQuery(QueryOptions(document: gql(getProductsQueryString)));
    final result = allProducts.result;
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
  }
}
