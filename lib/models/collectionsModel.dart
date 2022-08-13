class CollectionDataModel {
  List<Items>? items;
  String? sTypename;

  CollectionDataModel({this.items, this.sTypename});

  CollectionDataModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    sTypename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['__typename'] = this.sTypename;
    return data;
  }
}

class Items {
  String? id;
  String? name;
  String? slug;
  Parent? parent;
  FeaturedAsset? featuredAsset;
  String? sTypename;

  Items(
      {this.id,
        this.name,
        this.slug,
        this.parent,
        this.featuredAsset,
        this.sTypename});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    parent =
    json['parent'] != null ? new Parent.fromJson(json['parent']) : null;
    featuredAsset = json['featuredAsset'] != null
        ? new FeaturedAsset.fromJson(json['featuredAsset'])
        : null;
    sTypename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    if (this.parent != null) {
      data['parent'] = this.parent!.toJson();
    }
    if (this.featuredAsset != null) {
      data['featuredAsset'] = this.featuredAsset!.toJson();
    }
    data['__typename'] = this.sTypename;
    return data;
  }
}

class Parent {
  String? id;
  String? slug;
  String? name;
  String? sTypename;

  Parent({this.id, this.slug, this.name, this.sTypename});

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    sTypename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['__typename'] = this.sTypename;
    return data;
  }
}

class FeaturedAsset {
  String? id;
  String? preview;
  String? sTypename;

  FeaturedAsset({this.id, this.preview, this.sTypename});

  FeaturedAsset.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    preview = json['preview'];
    sTypename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['preview'] = this.preview;
    data['__typename'] = this.sTypename;
    return data;
  }
}
