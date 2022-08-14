// To parse this JSON data, do
//
//     final singleCollectionDetailDataModel = singleCollectionDetailDataModelFromJson(jsonString);

import 'dart:convert';

SingleCollectionDetailDataModel singleCollectionDetailDataModelFromJson(
        String str) =>
    SingleCollectionDetailDataModel.fromJson(json.decode(str));

String singleCollectionDetailDataModelToJson(
        SingleCollectionDetailDataModel data) =>
    json.encode(data.toJson());

class SingleCollectionDetailDataModel {
  SingleCollectionDetailDataModel({
    required this.data,
  });

  Data data;

  factory SingleCollectionDetailDataModel.fromJson(Map<String, dynamic> json) =>
      SingleCollectionDetailDataModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.collection,
    required this.typename,
  });

  Collection collection;
  String typename;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        collection: Collection.fromJson(json["collection"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "collection": collection.toJson(),
        "__typename": typename,
      };
}

class Collection {
  Collection({
    required this.id,
    required this.name,
    required this.slug,
    required this.parent,
    required this.breadcrumbs,
    required this.children,
    required this.featuredAsset,
    required this.typename,
  });

  String id;
  String name;
  String slug;
  Parent parent;
  List<Parent> breadcrumbs;
  List<Parent> children;
  CollectionFeaturedAsset featuredAsset;
  String typename;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        parent: Parent.fromJson(json["parent"]),
        breadcrumbs: List<Parent>.from(
            json["breadcrumbs"].map((x) => Parent.fromJson(x))),
        children:
            List<Parent>.from(json["children"].map((x) => Parent.fromJson(x))),
        featuredAsset: CollectionFeaturedAsset.fromJson(json["featuredAsset"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "parent": parent.toJson(),
        "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x.toJson())),
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
        "featuredAsset": featuredAsset.toJson(),
        "__typename": typename,
      };
}

class Parent {
  Parent({
    required this.id,
    required this.slug,
    required this.name,
    required this.typename,
    required this.featuredAsset,
  });

  String id;
  String slug;
  String name;
  String typename;
  ParentFeaturedAsset featuredAsset;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        id: json["id"],
        slug: json["slug"],
        name: json["name"],
        typename: json["__typename"],
        featuredAsset: ParentFeaturedAsset.fromJson(json["featuredAsset"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "name": name == null ? null : name,
        "__typename": typename,
        "featuredAsset": featuredAsset == null ? null : featuredAsset.toJson(),
      };
}

class ParentFeaturedAsset {
  ParentFeaturedAsset({
    required this.id,
    required this.width,
    required this.height,
    required this.name,
    required this.preview,
    required this.focalPoint,
    required this.typename,
  });

  String id;
  String width;
  String height;
  String name;
  String preview;
  dynamic focalPoint;
  String typename;

  factory ParentFeaturedAsset.fromJson(Map<String, dynamic> json) =>
      ParentFeaturedAsset(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        name: json["name"],
        preview: json["preview"],
        focalPoint: json["focalPoint"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "name": name,
        "preview": preview,
        "focalPoint": focalPoint,
        "__typename": typename,
      };
}

class CollectionFeaturedAsset {
  CollectionFeaturedAsset({
    required this.id,
    required this.preview,
    required this.typename,
  });

  String id;
  String preview;
  String typename;

  factory CollectionFeaturedAsset.fromJson(Map<String, dynamic> json) =>
      CollectionFeaturedAsset(
        id: json["id"],
        preview: json["preview"],
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "preview": preview,
        "__typename": typename,
      };
}
