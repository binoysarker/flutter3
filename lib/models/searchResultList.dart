import '../graphqlSection/products.graphql.dart';

class SearchItemsListType extends Query$SearchProducts$search$items {
    late final bool isPrivate;
  SearchItemsListType(this.isPrivate,
      {required super.productVariantId,
      required super.productId,
      required super.slug,
      required super.productName,
      required super.description,
      required super.collectionIds,
      required super.priceWithTax,
      required super.$__typename});
}
