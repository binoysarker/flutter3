class ProductListModel {
  ProductListModel({
    this.items,
  });
  late final List<Items>? items;

  ProductListModel.fromJson(Map<String, dynamic> json){
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['items'] = items!.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Items {
  Items({
    required this.id,
    required this.name,
    required this.slug,
    required this.featuredAsset,
    required this.assets,
    required this.collections,
    required this.typename,
  });
  late final String id;
  late final String name;
  late final String slug;
  late final FeaturedAsset featuredAsset;
  late final List<Assets> assets;
  late final List<Collections> collections;
  late final String typename;

  Items.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    featuredAsset = FeaturedAsset.fromJson(json['featuredAsset']);
    assets = List.from(json['assets']).map((e)=>Assets.fromJson(e)).toList();
    collections = List.from(json['collections']).map((e)=>Collections.fromJson(e)).toList();
    typename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['featuredAsset'] = featuredAsset.toJson();
    _data['assets'] = assets.map((e)=>e.toJson()).toList();
    _data['collections'] = collections.map((e)=>e.toJson()).toList();
    _data['__typename'] = typename;
    return _data;
  }
}

class FeaturedAsset {
  FeaturedAsset({
    required this.name,
    required this.id,
    required this.preview,
    required this.typename,
  });
  late final String name;
  late final String id;
  late final String preview;
  late final String typename;

  FeaturedAsset.fromJson(Map<String, dynamic> json){
    name = json['name'];
    id = json['id'];
    preview = json['preview'];
    typename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['id'] = id;
    _data['preview'] = preview;
    _data['__typename'] = typename;
    return _data;
  }
}

class Assets {
  Assets({
    required this.id,
    required this.name,
    required this.preview,
    required this.typename,
  });
  late final String id;
  late final String name;
  late final String preview;
  late final String typename;

  Assets.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    preview = json['preview'];
    typename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['preview'] = preview;
    _data['__typename'] = typename;
    return _data;
  }
}

class Collections {
  Collections({
    required this.id,
    required this.name,
    required this.assets,
    required this.typename,
  });
  late final String id;
  late final String name;
  late final List<Assets> assets;
  late final String typename;

  Collections.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    assets = List.from(json['assets']).map((e)=>Assets.fromJson(e)).toList();
    typename = json['__typename'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['assets'] = assets.map((e)=>e.toJson()).toList();
    _data['__typename'] = typename;
    return _data;
  }
}