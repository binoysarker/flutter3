// To parse this JSON data, do
//
//     final assetsList = assetsListFromJson(jsonString);

import 'dart:convert';

List<AssetsList> assetsListFromJson(String str) => List<AssetsList>.from(json.decode(str).map((x) => AssetsList.fromJson(x)));

String assetsListToJson(List<AssetsList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AssetsList {
  DateTime createdAt;
  String id;
  dynamic publishedAt;
  String fileName;
  String url;
  DateTime updatedAt;

  AssetsList({
    required this.createdAt,
    required this.id,
    this.publishedAt,
    required this.fileName,
    required this.url,
    required this.updatedAt,
  });

  factory AssetsList.fromJson(Map<String, dynamic> json) => AssetsList(
    createdAt: DateTime.parse(json["createdAt"]),
    id: json["id"],
    publishedAt: json["publishedAt"],
    fileName: json["fileName"],
    url: json["url"],
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "id": id,
    "publishedAt": publishedAt,
    "fileName": fileName,
    "url": url,
    "updatedAt": updatedAt.toIso8601String(),
  };
}


List<PostCodeList> postCodeListFromJson(String str) => List<PostCodeList>.from(json.decode(str).map((x) => PostCodeList.fromJson(x)));

String postCodeListToJson(List<PostCodeList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostCodeList {
  String id;
  DateTime createdAt;
  int postcode;

  PostCodeList({
    required this.id,
    required this.createdAt,
    required this.postcode,
  });

  factory PostCodeList.fromJson(Map<String, dynamic> json) => PostCodeList(
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
    postcode: json["postcode"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "createdAt": createdAt.toIso8601String(),
    "postcode": postcode,
  };
}

