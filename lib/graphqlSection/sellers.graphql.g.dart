// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sellers.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$GetTopSellers _$Query$GetTopSellersFromJson(Map<String, dynamic> json) =>
    Query$GetTopSellers(
      search: Query$GetTopSellers$search.fromJson(
          json['search'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetTopSellersToJson(
        Query$GetTopSellers instance) =>
    <String, dynamic>{
      'search': instance.search.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetTopSellers$search _$Query$GetTopSellers$searchFromJson(
        Map<String, dynamic> json) =>
    Query$GetTopSellers$search(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$GetTopSellers$search$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetTopSellers$searchToJson(
        Query$GetTopSellers$search instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetTopSellers$search$items _$Query$GetTopSellers$search$itemsFromJson(
        Map<String, dynamic> json) =>
    Query$GetTopSellers$search$items(
      productId: json['productId'] as String,
      slug: json['slug'] as String,
      productAsset: json['productAsset'] == null
          ? null
          : Query$GetTopSellers$search$items$productAsset.fromJson(
              json['productAsset'] as Map<String, dynamic>),
      priceWithTax: Query$GetTopSellers$search$items$priceWithTax.fromJson(
          json['priceWithTax'] as Map<String, dynamic>),
      productName: json['productName'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetTopSellers$search$itemsToJson(
        Query$GetTopSellers$search$items instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'slug': instance.slug,
      'productAsset': instance.productAsset?.toJson(),
      'priceWithTax': instance.priceWithTax.toJson(),
      'productName': instance.productName,
      '__typename': instance.$__typename,
    };

Query$GetTopSellers$search$items$productAsset
    _$Query$GetTopSellers$search$items$productAssetFromJson(
            Map<String, dynamic> json) =>
        Query$GetTopSellers$search$items$productAsset(
          id: json['id'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetTopSellers$search$items$productAssetToJson(
        Query$GetTopSellers$search$items$productAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preview': instance.preview,
      '__typename': instance.$__typename,
    };

Query$GetTopSellers$search$items$priceWithTax
    _$Query$GetTopSellers$search$items$priceWithTaxFromJson(
            Map<String, dynamic> json) =>
        Query$GetTopSellers$search$items$priceWithTax(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetTopSellers$search$items$priceWithTaxToJson(
        Query$GetTopSellers$search$items$priceWithTax instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$GetTopSellers$search$items$priceWithTax$$PriceRange
    _$Query$GetTopSellers$search$items$priceWithTax$$PriceRangeFromJson(
            Map<String, dynamic> json) =>
        Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
          $__typename: json['__typename'] as String,
          min: json['min'] as int,
          max: json['max'] as int,
        );

Map<String,
    dynamic> _$Query$GetTopSellers$search$items$priceWithTax$$PriceRangeToJson(
        Query$GetTopSellers$search$items$priceWithTax$$PriceRange instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'min': instance.min,
      'max': instance.max,
    };
