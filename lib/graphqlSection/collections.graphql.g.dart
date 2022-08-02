// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Asset _$Fragment$AssetFromJson(Map<String, dynamic> json) =>
    Fragment$Asset(
      id: json['id'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      name: json['name'] as String,
      preview: json['preview'] as String,
      focalPoint: json['focalPoint'] == null
          ? null
          : Fragment$Asset$focalPoint.fromJson(
              json['focalPoint'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$AssetToJson(Fragment$Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'name': instance.name,
      'preview': instance.preview,
      'focalPoint': instance.focalPoint?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$Asset$focalPoint _$Fragment$Asset$focalPointFromJson(
        Map<String, dynamic> json) =>
    Fragment$Asset$focalPoint(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Asset$focalPointToJson(
        Fragment$Asset$focalPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      '__typename': instance.$__typename,
    };

Variables$Query$GetCollections _$Variables$Query$GetCollectionsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetCollections(
      options: json['options'] == null
          ? null
          : Input$CollectionListOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$GetCollectionsToJson(
        Variables$Query$GetCollections instance) =>
    <String, dynamic>{
      'options': instance.options?.toJson(),
    };

Query$GetCollections _$Query$GetCollectionsFromJson(
        Map<String, dynamic> json) =>
    Query$GetCollections(
      collections: Query$GetCollections$collections.fromJson(
          json['collections'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCollectionsToJson(
        Query$GetCollections instance) =>
    <String, dynamic>{
      'collections': instance.collections.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCollections$collections _$Query$GetCollections$collectionsFromJson(
        Map<String, dynamic> json) =>
    Query$GetCollections$collections(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$GetCollections$collections$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCollections$collectionsToJson(
        Query$GetCollections$collections instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetCollections$collections$items
    _$Query$GetCollections$collections$itemsFromJson(
            Map<String, dynamic> json) =>
        Query$GetCollections$collections$items(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          parent: json['parent'] == null
              ? null
              : Query$GetCollections$collections$items$parent.fromJson(
                  json['parent'] as Map<String, dynamic>),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetCollections$collections$itemsToJson(
        Query$GetCollections$collections$items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent?.toJson(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCollections$collections$items$parent
    _$Query$GetCollections$collections$items$parentFromJson(
            Map<String, dynamic> json) =>
        Query$GetCollections$collections$items$parent(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetCollections$collections$items$parentToJson(
        Query$GetCollections$collections$items$parent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      '__typename': instance.$__typename,
    };
