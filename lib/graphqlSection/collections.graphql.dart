import 'cart_data.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'collections.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$SingleItem {
  Fragment$SingleItem(
      {required this.id,
      required this.name,
      required this.slug,
      this.parent,
      this.featuredAsset,
      required this.$__typename});

  @override
  factory Fragment$SingleItem.fromJson(Map<String, dynamic> json) =>
      _$Fragment$SingleItemFromJson(json);

  final String id;

  final String name;

  final String slug;

  final Fragment$SingleItem$parent? parent;

  final Fragment$Asset? featuredAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$SingleItemToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$parent = parent;
    final l$featuredAsset = featuredAsset;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, l$slug, l$parent, l$featuredAsset, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$SingleItem) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (l$parent != lOther$parent) return false;
    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$SingleItem on Fragment$SingleItem {
  CopyWith$Fragment$SingleItem<Fragment$SingleItem> get copyWith =>
      CopyWith$Fragment$SingleItem(this, (i) => i);
}

abstract class CopyWith$Fragment$SingleItem<TRes> {
  factory CopyWith$Fragment$SingleItem(Fragment$SingleItem instance,
          TRes Function(Fragment$SingleItem) then) =
      _CopyWithImpl$Fragment$SingleItem;

  factory CopyWith$Fragment$SingleItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SingleItem;

  TRes call(
      {String? id,
      String? name,
      String? slug,
      Fragment$SingleItem$parent? parent,
      Fragment$Asset? featuredAsset,
      String? $__typename});
  CopyWith$Fragment$SingleItem$parent<TRes> get parent;
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
}

class _CopyWithImpl$Fragment$SingleItem<TRes>
    implements CopyWith$Fragment$SingleItem<TRes> {
  _CopyWithImpl$Fragment$SingleItem(this._instance, this._then);

  final Fragment$SingleItem _instance;

  final TRes Function(Fragment$SingleItem) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? parent = _undefined,
          Object? featuredAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$SingleItem(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          parent: parent == _undefined
              ? _instance.parent
              : (parent as Fragment$SingleItem$parent?),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset as Fragment$Asset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$SingleItem$parent<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith$Fragment$SingleItem$parent.stub(_then(_instance))
        : CopyWith$Fragment$SingleItem$parent(
            local$parent, (e) => call(parent: e));
  }

  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }
}

class _CopyWithStubImpl$Fragment$SingleItem<TRes>
    implements CopyWith$Fragment$SingleItem<TRes> {
  _CopyWithStubImpl$Fragment$SingleItem(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? slug,
          Fragment$SingleItem$parent? parent,
          Fragment$Asset? featuredAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$SingleItem$parent<TRes> get parent =>
      CopyWith$Fragment$SingleItem$parent.stub(_res);
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
}

const fragmentDefinitionSingleItem = FragmentDefinitionNode(
    name: NameNode(value: 'SingleItem'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'Collection'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'slug'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'parent'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'slug'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: 'featuredAsset'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(name: NameNode(value: 'Asset'), directives: []),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentSingleItem = DocumentNode(definitions: [
  fragmentDefinitionSingleItem,
  fragmentDefinitionAsset,
]);

extension ClientExtension$Fragment$SingleItem on graphql.GraphQLClient {
  void writeFragment$SingleItem(
          {required Fragment$SingleItem data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'SingleItem',
                  document: documentNodeFragmentSingleItem)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$SingleItem? readFragment$SingleItem(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'SingleItem',
                document: documentNodeFragmentSingleItem)),
        optimistic: optimistic);
    return result == null ? null : Fragment$SingleItem.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$SingleItem$parent {
  Fragment$SingleItem$parent(
      {required this.id,
      required this.name,
      required this.slug,
      required this.$__typename});

  @override
  factory Fragment$SingleItem$parent.fromJson(Map<String, dynamic> json) =>
      _$Fragment$SingleItem$parentFromJson(json);

  final String id;

  final String name;

  final String slug;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$SingleItem$parentToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$slug, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$SingleItem$parent) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$SingleItem$parent
    on Fragment$SingleItem$parent {
  CopyWith$Fragment$SingleItem$parent<Fragment$SingleItem$parent>
      get copyWith => CopyWith$Fragment$SingleItem$parent(this, (i) => i);
}

abstract class CopyWith$Fragment$SingleItem$parent<TRes> {
  factory CopyWith$Fragment$SingleItem$parent(
          Fragment$SingleItem$parent instance,
          TRes Function(Fragment$SingleItem$parent) then) =
      _CopyWithImpl$Fragment$SingleItem$parent;

  factory CopyWith$Fragment$SingleItem$parent.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SingleItem$parent;

  TRes call({String? id, String? name, String? slug, String? $__typename});
}

class _CopyWithImpl$Fragment$SingleItem$parent<TRes>
    implements CopyWith$Fragment$SingleItem$parent<TRes> {
  _CopyWithImpl$Fragment$SingleItem$parent(this._instance, this._then);

  final Fragment$SingleItem$parent _instance;

  final TRes Function(Fragment$SingleItem$parent) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$SingleItem$parent(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$SingleItem$parent<TRes>
    implements CopyWith$Fragment$SingleItem$parent<TRes> {
  _CopyWithStubImpl$Fragment$SingleItem$parent(this._res);

  TRes _res;

  call({String? id, String? name, String? slug, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Asset {
  Fragment$Asset(
      {required this.id,
      required this.width,
      required this.height,
      required this.name,
      required this.preview,
      this.focalPoint,
      required this.$__typename});

  @override
  factory Fragment$Asset.fromJson(Map<String, dynamic> json) =>
      _$Fragment$AssetFromJson(json);

  final String id;

  final int width;

  final int height;

  final String name;

  final String preview;

  final Fragment$Asset$focalPoint? focalPoint;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$AssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$width = width;
    final l$height = height;
    final l$name = name;
    final l$preview = preview;
    final l$focalPoint = focalPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$width,
      l$height,
      l$name,
      l$preview,
      l$focalPoint,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Asset) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$width = width;
    final lOther$width = other.width;
    if (l$width != lOther$width) return false;
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$focalPoint = focalPoint;
    final lOther$focalPoint = other.focalPoint;
    if (l$focalPoint != lOther$focalPoint) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Asset on Fragment$Asset {
  CopyWith$Fragment$Asset<Fragment$Asset> get copyWith =>
      CopyWith$Fragment$Asset(this, (i) => i);
}

abstract class CopyWith$Fragment$Asset<TRes> {
  factory CopyWith$Fragment$Asset(
          Fragment$Asset instance, TRes Function(Fragment$Asset) then) =
      _CopyWithImpl$Fragment$Asset;

  factory CopyWith$Fragment$Asset.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Asset;

  TRes call(
      {String? id,
      int? width,
      int? height,
      String? name,
      String? preview,
      Fragment$Asset$focalPoint? focalPoint,
      String? $__typename});
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint;
}

class _CopyWithImpl$Fragment$Asset<TRes>
    implements CopyWith$Fragment$Asset<TRes> {
  _CopyWithImpl$Fragment$Asset(this._instance, this._then);

  final Fragment$Asset _instance;

  final TRes Function(Fragment$Asset) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? width = _undefined,
          Object? height = _undefined,
          Object? name = _undefined,
          Object? preview = _undefined,
          Object? focalPoint = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Asset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          width: width == _undefined || width == null
              ? _instance.width
              : (width as int),
          height: height == _undefined || height == null
              ? _instance.height
              : (height as int),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          focalPoint: focalPoint == _undefined
              ? _instance.focalPoint
              : (focalPoint as Fragment$Asset$focalPoint?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint {
    final local$focalPoint = _instance.focalPoint;
    return local$focalPoint == null
        ? CopyWith$Fragment$Asset$focalPoint.stub(_then(_instance))
        : CopyWith$Fragment$Asset$focalPoint(
            local$focalPoint, (e) => call(focalPoint: e));
  }
}

class _CopyWithStubImpl$Fragment$Asset<TRes>
    implements CopyWith$Fragment$Asset<TRes> {
  _CopyWithStubImpl$Fragment$Asset(this._res);

  TRes _res;

  call(
          {String? id,
          int? width,
          int? height,
          String? name,
          String? preview,
          Fragment$Asset$focalPoint? focalPoint,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint =>
      CopyWith$Fragment$Asset$focalPoint.stub(_res);
}

const fragmentDefinitionAsset = FragmentDefinitionNode(
    name: NameNode(value: 'Asset'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Asset'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'width'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'height'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'preview'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'focalPoint'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'x'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'y'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ])),
      FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null)
    ]));
const documentNodeFragmentAsset = DocumentNode(definitions: [
  fragmentDefinitionAsset,
]);

extension ClientExtension$Fragment$Asset on graphql.GraphQLClient {
  void writeFragment$Asset(
          {required Fragment$Asset data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'Asset', document: documentNodeFragmentAsset)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$Asset? readFragment$Asset(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'Asset', document: documentNodeFragmentAsset)),
        optimistic: optimistic);
    return result == null ? null : Fragment$Asset.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$Asset$focalPoint {
  Fragment$Asset$focalPoint(
      {required this.x, required this.y, required this.$__typename});

  @override
  factory Fragment$Asset$focalPoint.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Asset$focalPointFromJson(json);

  final double x;

  final double y;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Asset$focalPointToJson(this);
  int get hashCode {
    final l$x = x;
    final l$y = y;
    final l$$__typename = $__typename;
    return Object.hashAll([l$x, l$y, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Asset$focalPoint) ||
        runtimeType != other.runtimeType) return false;
    final l$x = x;
    final lOther$x = other.x;
    if (l$x != lOther$x) return false;
    final l$y = y;
    final lOther$y = other.y;
    if (l$y != lOther$y) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Asset$focalPoint
    on Fragment$Asset$focalPoint {
  CopyWith$Fragment$Asset$focalPoint<Fragment$Asset$focalPoint> get copyWith =>
      CopyWith$Fragment$Asset$focalPoint(this, (i) => i);
}

abstract class CopyWith$Fragment$Asset$focalPoint<TRes> {
  factory CopyWith$Fragment$Asset$focalPoint(Fragment$Asset$focalPoint instance,
          TRes Function(Fragment$Asset$focalPoint) then) =
      _CopyWithImpl$Fragment$Asset$focalPoint;

  factory CopyWith$Fragment$Asset$focalPoint.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Asset$focalPoint;

  TRes call({double? x, double? y, String? $__typename});
}

class _CopyWithImpl$Fragment$Asset$focalPoint<TRes>
    implements CopyWith$Fragment$Asset$focalPoint<TRes> {
  _CopyWithImpl$Fragment$Asset$focalPoint(this._instance, this._then);

  final Fragment$Asset$focalPoint _instance;

  final TRes Function(Fragment$Asset$focalPoint) _then;

  static const _undefined = {};

  TRes call(
          {Object? x = _undefined,
          Object? y = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Asset$focalPoint(
          x: x == _undefined || x == null ? _instance.x : (x as double),
          y: y == _undefined || y == null ? _instance.y : (y as double),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Asset$focalPoint<TRes>
    implements CopyWith$Fragment$Asset$focalPoint<TRes> {
  _CopyWithStubImpl$Fragment$Asset$focalPoint(this._res);

  TRes _res;

  call({double? x, double? y, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAvailableCountries {
  Query$GetAvailableCountries(
      {required this.availableCountries, required this.$__typename});

  @override
  factory Query$GetAvailableCountries.fromJson(Map<String, dynamic> json) =>
      _$Query$GetAvailableCountriesFromJson(json);

  final List<Query$GetAvailableCountries$availableCountries> availableCountries;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetAvailableCountriesToJson(this);
  int get hashCode {
    final l$availableCountries = availableCountries;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$availableCountries.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAvailableCountries) ||
        runtimeType != other.runtimeType) return false;
    final l$availableCountries = availableCountries;
    final lOther$availableCountries = other.availableCountries;
    if (l$availableCountries.length != lOther$availableCountries.length)
      return false;
    for (int i = 0; i < l$availableCountries.length; i++) {
      final l$availableCountries$entry = l$availableCountries[i];
      final lOther$availableCountries$entry = lOther$availableCountries[i];
      if (l$availableCountries$entry != lOther$availableCountries$entry)
        return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAvailableCountries
    on Query$GetAvailableCountries {
  CopyWith$Query$GetAvailableCountries<Query$GetAvailableCountries>
      get copyWith => CopyWith$Query$GetAvailableCountries(this, (i) => i);
}

abstract class CopyWith$Query$GetAvailableCountries<TRes> {
  factory CopyWith$Query$GetAvailableCountries(
          Query$GetAvailableCountries instance,
          TRes Function(Query$GetAvailableCountries) then) =
      _CopyWithImpl$Query$GetAvailableCountries;

  factory CopyWith$Query$GetAvailableCountries.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAvailableCountries;

  TRes call(
      {List<Query$GetAvailableCountries$availableCountries>? availableCountries,
      String? $__typename});
  TRes availableCountries(
      Iterable<Query$GetAvailableCountries$availableCountries> Function(
              Iterable<
                  CopyWith$Query$GetAvailableCountries$availableCountries<
                      Query$GetAvailableCountries$availableCountries>>)
          _fn);
}

class _CopyWithImpl$Query$GetAvailableCountries<TRes>
    implements CopyWith$Query$GetAvailableCountries<TRes> {
  _CopyWithImpl$Query$GetAvailableCountries(this._instance, this._then);

  final Query$GetAvailableCountries _instance;

  final TRes Function(Query$GetAvailableCountries) _then;

  static const _undefined = {};

  TRes call(
          {Object? availableCountries = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAvailableCountries(
          availableCountries:
              availableCountries == _undefined || availableCountries == null
                  ? _instance.availableCountries
                  : (availableCountries
                      as List<Query$GetAvailableCountries$availableCountries>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes availableCountries(
          Iterable<Query$GetAvailableCountries$availableCountries> Function(
                  Iterable<
                      CopyWith$Query$GetAvailableCountries$availableCountries<
                          Query$GetAvailableCountries$availableCountries>>)
              _fn) =>
      call(
          availableCountries: _fn(_instance.availableCountries.map((e) =>
              CopyWith$Query$GetAvailableCountries$availableCountries(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetAvailableCountries<TRes>
    implements CopyWith$Query$GetAvailableCountries<TRes> {
  _CopyWithStubImpl$Query$GetAvailableCountries(this._res);

  TRes _res;

  call(
          {List<Query$GetAvailableCountries$availableCountries>?
              availableCountries,
          String? $__typename}) =>
      _res;
  availableCountries(_fn) => _res;
}

const documentNodeQueryGetAvailableCountries = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAvailableCountries'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'availableCountries'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Country'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'enabled'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'languageCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'translations'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name:
                                          NameNode(value: 'CountryTranslation'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'languageCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'name'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$GetAvailableCountries _parserFn$Query$GetAvailableCountries(
        Map<String, dynamic> data) =>
    Query$GetAvailableCountries.fromJson(data);

class Options$Query$GetAvailableCountries
    extends graphql.QueryOptions<Query$GetAvailableCountries> {
  Options$Query$GetAvailableCountries(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetAvailableCountries,
            parserFn: _parserFn$Query$GetAvailableCountries);
}

class WatchOptions$Query$GetAvailableCountries
    extends graphql.WatchQueryOptions<Query$GetAvailableCountries> {
  WatchOptions$Query$GetAvailableCountries(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryGetAvailableCountries,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetAvailableCountries);
}

class FetchMoreOptions$Query$GetAvailableCountries
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAvailableCountries(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetAvailableCountries);
}

extension ClientExtension$Query$GetAvailableCountries on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAvailableCountries>>
      query$GetAvailableCountries(
              [Options$Query$GetAvailableCountries? options]) async =>
          await this.query(options ?? Options$Query$GetAvailableCountries());
  graphql.ObservableQuery<
      Query$GetAvailableCountries> watchQuery$GetAvailableCountries(
          [WatchOptions$Query$GetAvailableCountries? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAvailableCountries());
  void writeQuery$GetAvailableCountries(
          {required Query$GetAvailableCountries data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetAvailableCountries)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetAvailableCountries? readQuery$GetAvailableCountries(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetAvailableCountries)),
        optimistic: optimistic);
    return result == null ? null : Query$GetAvailableCountries.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAvailableCountries>
    useQuery$GetAvailableCountries(
            [Options$Query$GetAvailableCountries? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAvailableCountries());
graphql.ObservableQuery<Query$GetAvailableCountries>
    useWatchQuery$GetAvailableCountries(
            [WatchOptions$Query$GetAvailableCountries? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAvailableCountries());

class Query$GetAvailableCountries$Widget
    extends graphql_flutter.Query<Query$GetAvailableCountries> {
  Query$GetAvailableCountries$Widget(
      {widgets.Key? key,
      Options$Query$GetAvailableCountries? options,
      required graphql_flutter.QueryBuilder<Query$GetAvailableCountries>
          builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetAvailableCountries(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetAvailableCountries$availableCountries {
  Query$GetAvailableCountries$availableCountries(
      {required this.enabled,
      required this.languageCode,
      required this.translations,
      required this.name,
      required this.$__typename});

  @override
  factory Query$GetAvailableCountries$availableCountries.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAvailableCountries$availableCountriesFromJson(json);

  final bool enabled;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  final List<Query$GetAvailableCountries$availableCountries$translations>
      translations;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAvailableCountries$availableCountriesToJson(this);
  int get hashCode {
    final l$enabled = enabled;
    final l$languageCode = languageCode;
    final l$translations = translations;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$languageCode,
      Object.hashAll(l$translations.map((v) => v)),
      l$name,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAvailableCountries$availableCountries) ||
        runtimeType != other.runtimeType) return false;
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$translations = translations;
    final lOther$translations = other.translations;
    if (l$translations.length != lOther$translations.length) return false;
    for (int i = 0; i < l$translations.length; i++) {
      final l$translations$entry = l$translations[i];
      final lOther$translations$entry = lOther$translations[i];
      if (l$translations$entry != lOther$translations$entry) return false;
    }

    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAvailableCountries$availableCountries
    on Query$GetAvailableCountries$availableCountries {
  CopyWith$Query$GetAvailableCountries$availableCountries<
          Query$GetAvailableCountries$availableCountries>
      get copyWith => CopyWith$Query$GetAvailableCountries$availableCountries(
          this, (i) => i);
}

abstract class CopyWith$Query$GetAvailableCountries$availableCountries<TRes> {
  factory CopyWith$Query$GetAvailableCountries$availableCountries(
          Query$GetAvailableCountries$availableCountries instance,
          TRes Function(Query$GetAvailableCountries$availableCountries) then) =
      _CopyWithImpl$Query$GetAvailableCountries$availableCountries;

  factory CopyWith$Query$GetAvailableCountries$availableCountries.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries;

  TRes call(
      {bool? enabled,
      Enum$LanguageCode? languageCode,
      List<Query$GetAvailableCountries$availableCountries$translations>?
          translations,
      String? name,
      String? $__typename});
  TRes translations(
      Iterable<Query$GetAvailableCountries$availableCountries$translations> Function(
              Iterable<
                  CopyWith$Query$GetAvailableCountries$availableCountries$translations<
                      Query$GetAvailableCountries$availableCountries$translations>>)
          _fn);
}

class _CopyWithImpl$Query$GetAvailableCountries$availableCountries<TRes>
    implements CopyWith$Query$GetAvailableCountries$availableCountries<TRes> {
  _CopyWithImpl$Query$GetAvailableCountries$availableCountries(
      this._instance, this._then);

  final Query$GetAvailableCountries$availableCountries _instance;

  final TRes Function(Query$GetAvailableCountries$availableCountries) _then;

  static const _undefined = {};

  TRes call(
          {Object? enabled = _undefined,
          Object? languageCode = _undefined,
          Object? translations = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAvailableCountries$availableCountries(
          enabled: enabled == _undefined || enabled == null
              ? _instance.enabled
              : (enabled as bool),
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          translations: translations == _undefined || translations == null
              ? _instance.translations
              : (translations as List<
                  Query$GetAvailableCountries$availableCountries$translations>),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes translations(
          Iterable<Query$GetAvailableCountries$availableCountries$translations> Function(
                  Iterable<
                      CopyWith$Query$GetAvailableCountries$availableCountries$translations<
                          Query$GetAvailableCountries$availableCountries$translations>>)
              _fn) =>
      call(
          translations: _fn(_instance.translations.map((e) =>
              CopyWith$Query$GetAvailableCountries$availableCountries$translations(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries<TRes>
    implements CopyWith$Query$GetAvailableCountries$availableCountries<TRes> {
  _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries(this._res);

  TRes _res;

  call(
          {bool? enabled,
          Enum$LanguageCode? languageCode,
          List<Query$GetAvailableCountries$availableCountries$translations>?
              translations,
          String? name,
          String? $__typename}) =>
      _res;
  translations(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAvailableCountries$availableCountries$translations {
  Query$GetAvailableCountries$availableCountries$translations(
      {required this.languageCode,
      required this.name,
      required this.$__typename});

  @override
  factory Query$GetAvailableCountries$availableCountries$translations.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAvailableCountries$availableCountries$translationsFromJson(
          json);

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAvailableCountries$availableCountries$translationsToJson(this);
  int get hashCode {
    final l$languageCode = languageCode;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$languageCode, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetAvailableCountries$availableCountries$translations) ||
        runtimeType != other.runtimeType) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAvailableCountries$availableCountries$translations
    on Query$GetAvailableCountries$availableCountries$translations {
  CopyWith$Query$GetAvailableCountries$availableCountries$translations<
          Query$GetAvailableCountries$availableCountries$translations>
      get copyWith =>
          CopyWith$Query$GetAvailableCountries$availableCountries$translations(
              this, (i) => i);
}

abstract class CopyWith$Query$GetAvailableCountries$availableCountries$translations<
    TRes> {
  factory CopyWith$Query$GetAvailableCountries$availableCountries$translations(
          Query$GetAvailableCountries$availableCountries$translations instance,
          TRes Function(
                  Query$GetAvailableCountries$availableCountries$translations)
              then) =
      _CopyWithImpl$Query$GetAvailableCountries$availableCountries$translations;

  factory CopyWith$Query$GetAvailableCountries$availableCountries$translations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries$translations;

  TRes call(
      {Enum$LanguageCode? languageCode, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetAvailableCountries$availableCountries$translations<
        TRes>
    implements
        CopyWith$Query$GetAvailableCountries$availableCountries$translations<
            TRes> {
  _CopyWithImpl$Query$GetAvailableCountries$availableCountries$translations(
      this._instance, this._then);

  final Query$GetAvailableCountries$availableCountries$translations _instance;

  final TRes Function(
      Query$GetAvailableCountries$availableCountries$translations) _then;

  static const _undefined = {};

  TRes call(
          {Object? languageCode = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAvailableCountries$availableCountries$translations(
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries$translations<
        TRes>
    implements
        CopyWith$Query$GetAvailableCountries$availableCountries$translations<
            TRes> {
  _CopyWithStubImpl$Query$GetAvailableCountries$availableCountries$translations(
      this._res);

  TRes _res;

  call({Enum$LanguageCode? languageCode, String? name, String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$GetCollectionsByIdOrSlug {
  Variables$Query$GetCollectionsByIdOrSlug({this.id, this.slug});

  @override
  factory Variables$Query$GetCollectionsByIdOrSlug.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$GetCollectionsByIdOrSlugFromJson(json);

  final String? id;

  final String? slug;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$GetCollectionsByIdOrSlugToJson(this);
  int get hashCode {
    final l$id = id;
    final l$slug = slug;
    return Object.hashAll([l$id, l$slug]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetCollectionsByIdOrSlug) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    return true;
  }

  CopyWith$Variables$Query$GetCollectionsByIdOrSlug<
          Variables$Query$GetCollectionsByIdOrSlug>
      get copyWith =>
          CopyWith$Variables$Query$GetCollectionsByIdOrSlug(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetCollectionsByIdOrSlug<TRes> {
  factory CopyWith$Variables$Query$GetCollectionsByIdOrSlug(
          Variables$Query$GetCollectionsByIdOrSlug instance,
          TRes Function(Variables$Query$GetCollectionsByIdOrSlug) then) =
      _CopyWithImpl$Variables$Query$GetCollectionsByIdOrSlug;

  factory CopyWith$Variables$Query$GetCollectionsByIdOrSlug.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCollectionsByIdOrSlug;

  TRes call({String? id, String? slug});
}

class _CopyWithImpl$Variables$Query$GetCollectionsByIdOrSlug<TRes>
    implements CopyWith$Variables$Query$GetCollectionsByIdOrSlug<TRes> {
  _CopyWithImpl$Variables$Query$GetCollectionsByIdOrSlug(
      this._instance, this._then);

  final Variables$Query$GetCollectionsByIdOrSlug _instance;

  final TRes Function(Variables$Query$GetCollectionsByIdOrSlug) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined, Object? slug = _undefined}) =>
      _then(Variables$Query$GetCollectionsByIdOrSlug(
          id: id == _undefined ? _instance.id : (id as String?),
          slug: slug == _undefined ? _instance.slug : (slug as String?)));
}

class _CopyWithStubImpl$Variables$Query$GetCollectionsByIdOrSlug<TRes>
    implements CopyWith$Variables$Query$GetCollectionsByIdOrSlug<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCollectionsByIdOrSlug(this._res);

  TRes _res;

  call({String? id, String? slug}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetCollectionsByIdOrSlug {
  Query$GetCollectionsByIdOrSlug({this.collection, required this.$__typename});

  @override
  factory Query$GetCollectionsByIdOrSlug.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCollectionsByIdOrSlugFromJson(json);

  final Fragment$SingleItem? collection;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetCollectionsByIdOrSlugToJson(this);
  int get hashCode {
    final l$collection = collection;
    final l$$__typename = $__typename;
    return Object.hashAll([l$collection, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCollectionsByIdOrSlug) ||
        runtimeType != other.runtimeType) return false;
    final l$collection = collection;
    final lOther$collection = other.collection;
    if (l$collection != lOther$collection) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCollectionsByIdOrSlug
    on Query$GetCollectionsByIdOrSlug {
  CopyWith$Query$GetCollectionsByIdOrSlug<Query$GetCollectionsByIdOrSlug>
      get copyWith => CopyWith$Query$GetCollectionsByIdOrSlug(this, (i) => i);
}

abstract class CopyWith$Query$GetCollectionsByIdOrSlug<TRes> {
  factory CopyWith$Query$GetCollectionsByIdOrSlug(
          Query$GetCollectionsByIdOrSlug instance,
          TRes Function(Query$GetCollectionsByIdOrSlug) then) =
      _CopyWithImpl$Query$GetCollectionsByIdOrSlug;

  factory CopyWith$Query$GetCollectionsByIdOrSlug.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug;

  TRes call({Fragment$SingleItem? collection, String? $__typename});
  CopyWith$Fragment$SingleItem<TRes> get collection;
}

class _CopyWithImpl$Query$GetCollectionsByIdOrSlug<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug<TRes> {
  _CopyWithImpl$Query$GetCollectionsByIdOrSlug(this._instance, this._then);

  final Query$GetCollectionsByIdOrSlug _instance;

  final TRes Function(Query$GetCollectionsByIdOrSlug) _then;

  static const _undefined = {};

  TRes call(
          {Object? collection = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCollectionsByIdOrSlug(
          collection: collection == _undefined
              ? _instance.collection
              : (collection as Fragment$SingleItem?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$SingleItem<TRes> get collection {
    final local$collection = _instance.collection;
    return local$collection == null
        ? CopyWith$Fragment$SingleItem.stub(_then(_instance))
        : CopyWith$Fragment$SingleItem(
            local$collection, (e) => call(collection: e));
  }
}

class _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug<TRes> {
  _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug(this._res);

  TRes _res;

  call({Fragment$SingleItem? collection, String? $__typename}) => _res;
  CopyWith$Fragment$SingleItem<TRes> get collection =>
      CopyWith$Fragment$SingleItem.stub(_res);
}

const documentNodeQueryGetCollectionsByIdOrSlug = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCollectionsByIdOrSlug'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'slug')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'collection'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id'))),
              ArgumentNode(
                  name: NameNode(value: 'slug'),
                  value: VariableNode(name: NameNode(value: 'slug')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                  name: NameNode(value: 'SingleItem'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionSingleItem,
  fragmentDefinitionAsset,
]);
Query$GetCollectionsByIdOrSlug _parserFn$Query$GetCollectionsByIdOrSlug(
        Map<String, dynamic> data) =>
    Query$GetCollectionsByIdOrSlug.fromJson(data);

class Options$Query$GetCollectionsByIdOrSlug
    extends graphql.QueryOptions<Query$GetCollectionsByIdOrSlug> {
  Options$Query$GetCollectionsByIdOrSlug(
      {String? operationName,
      Variables$Query$GetCollectionsByIdOrSlug? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetCollectionsByIdOrSlug,
            parserFn: _parserFn$Query$GetCollectionsByIdOrSlug);
}

class WatchOptions$Query$GetCollectionsByIdOrSlug
    extends graphql.WatchQueryOptions<Query$GetCollectionsByIdOrSlug> {
  WatchOptions$Query$GetCollectionsByIdOrSlug(
      {String? operationName,
      Variables$Query$GetCollectionsByIdOrSlug? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryGetCollectionsByIdOrSlug,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetCollectionsByIdOrSlug);
}

class FetchMoreOptions$Query$GetCollectionsByIdOrSlug
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCollectionsByIdOrSlug(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$GetCollectionsByIdOrSlug? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryGetCollectionsByIdOrSlug);
}

extension ClientExtension$Query$GetCollectionsByIdOrSlug
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCollectionsByIdOrSlug>>
      query$GetCollectionsByIdOrSlug(
              [Options$Query$GetCollectionsByIdOrSlug? options]) async =>
          await this.query(options ?? Options$Query$GetCollectionsByIdOrSlug());
  graphql.ObservableQuery<
      Query$GetCollectionsByIdOrSlug> watchQuery$GetCollectionsByIdOrSlug(
          [WatchOptions$Query$GetCollectionsByIdOrSlug? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCollectionsByIdOrSlug());
  void writeQuery$GetCollectionsByIdOrSlug(
          {required Query$GetCollectionsByIdOrSlug data,
          Variables$Query$GetCollectionsByIdOrSlug? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetCollectionsByIdOrSlug),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetCollectionsByIdOrSlug? readQuery$GetCollectionsByIdOrSlug(
      {Variables$Query$GetCollectionsByIdOrSlug? variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetCollectionsByIdOrSlug),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$GetCollectionsByIdOrSlug.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCollectionsByIdOrSlug>
    useQuery$GetCollectionsByIdOrSlug(
            [Options$Query$GetCollectionsByIdOrSlug? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetCollectionsByIdOrSlug());
graphql.ObservableQuery<Query$GetCollectionsByIdOrSlug>
    useWatchQuery$GetCollectionsByIdOrSlug(
            [WatchOptions$Query$GetCollectionsByIdOrSlug? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetCollectionsByIdOrSlug());

class Query$GetCollectionsByIdOrSlug$Widget
    extends graphql_flutter.Query<Query$GetCollectionsByIdOrSlug> {
  Query$GetCollectionsByIdOrSlug$Widget(
      {widgets.Key? key,
      Options$Query$GetCollectionsByIdOrSlug? options,
      required graphql_flutter.QueryBuilder<Query$GetCollectionsByIdOrSlug>
          builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetCollectionsByIdOrSlug(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$GetCollections {
  Variables$Query$GetCollections({this.options});

  @override
  factory Variables$Query$GetCollections.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$GetCollectionsFromJson(json);

  final Input$CollectionListOptions? options;

  Map<String, dynamic> toJson() => _$Variables$Query$GetCollectionsToJson(this);
  int get hashCode {
    final l$options = options;
    return Object.hashAll([l$options]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetCollections) ||
        runtimeType != other.runtimeType) return false;
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) return false;
    return true;
  }

  CopyWith$Variables$Query$GetCollections<Variables$Query$GetCollections>
      get copyWith => CopyWith$Variables$Query$GetCollections(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetCollections<TRes> {
  factory CopyWith$Variables$Query$GetCollections(
          Variables$Query$GetCollections instance,
          TRes Function(Variables$Query$GetCollections) then) =
      _CopyWithImpl$Variables$Query$GetCollections;

  factory CopyWith$Variables$Query$GetCollections.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCollections;

  TRes call({Input$CollectionListOptions? options});
}

class _CopyWithImpl$Variables$Query$GetCollections<TRes>
    implements CopyWith$Variables$Query$GetCollections<TRes> {
  _CopyWithImpl$Variables$Query$GetCollections(this._instance, this._then);

  final Variables$Query$GetCollections _instance;

  final TRes Function(Variables$Query$GetCollections) _then;

  static const _undefined = {};

  TRes call({Object? options = _undefined}) => _then(
      Variables$Query$GetCollections(
          options: options == _undefined
              ? _instance.options
              : (options as Input$CollectionListOptions?)));
}

class _CopyWithStubImpl$Variables$Query$GetCollections<TRes>
    implements CopyWith$Variables$Query$GetCollections<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCollections(this._res);

  TRes _res;

  call({Input$CollectionListOptions? options}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetCollections {
  Query$GetCollections({required this.collections, required this.$__typename});

  @override
  factory Query$GetCollections.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCollectionsFromJson(json);

  final Query$GetCollections$collections collections;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetCollectionsToJson(this);
  int get hashCode {
    final l$collections = collections;
    final l$$__typename = $__typename;
    return Object.hashAll([l$collections, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCollections) || runtimeType != other.runtimeType)
      return false;
    final l$collections = collections;
    final lOther$collections = other.collections;
    if (l$collections != lOther$collections) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCollections on Query$GetCollections {
  CopyWith$Query$GetCollections<Query$GetCollections> get copyWith =>
      CopyWith$Query$GetCollections(this, (i) => i);
}

abstract class CopyWith$Query$GetCollections<TRes> {
  factory CopyWith$Query$GetCollections(Query$GetCollections instance,
          TRes Function(Query$GetCollections) then) =
      _CopyWithImpl$Query$GetCollections;

  factory CopyWith$Query$GetCollections.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCollections;

  TRes call(
      {Query$GetCollections$collections? collections, String? $__typename});
  CopyWith$Query$GetCollections$collections<TRes> get collections;
}

class _CopyWithImpl$Query$GetCollections<TRes>
    implements CopyWith$Query$GetCollections<TRes> {
  _CopyWithImpl$Query$GetCollections(this._instance, this._then);

  final Query$GetCollections _instance;

  final TRes Function(Query$GetCollections) _then;

  static const _undefined = {};

  TRes call(
          {Object? collections = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCollections(
          collections: collections == _undefined || collections == null
              ? _instance.collections
              : (collections as Query$GetCollections$collections),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetCollections$collections<TRes> get collections {
    final local$collections = _instance.collections;
    return CopyWith$Query$GetCollections$collections(
        local$collections, (e) => call(collections: e));
  }
}

class _CopyWithStubImpl$Query$GetCollections<TRes>
    implements CopyWith$Query$GetCollections<TRes> {
  _CopyWithStubImpl$Query$GetCollections(this._res);

  TRes _res;

  call({Query$GetCollections$collections? collections, String? $__typename}) =>
      _res;
  CopyWith$Query$GetCollections$collections<TRes> get collections =>
      CopyWith$Query$GetCollections$collections.stub(_res);
}

const documentNodeQueryGetCollections = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCollections'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'options')),
            type: NamedTypeNode(
                name: NameNode(value: 'CollectionListOptions'),
                isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'collections'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: VariableNode(name: NameNode(value: 'options')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'SingleItem'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionSingleItem,
  fragmentDefinitionAsset,
]);
Query$GetCollections _parserFn$Query$GetCollections(
        Map<String, dynamic> data) =>
    Query$GetCollections.fromJson(data);

class Options$Query$GetCollections
    extends graphql.QueryOptions<Query$GetCollections> {
  Options$Query$GetCollections(
      {String? operationName,
      Variables$Query$GetCollections? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetCollections,
            parserFn: _parserFn$Query$GetCollections);
}

class WatchOptions$Query$GetCollections
    extends graphql.WatchQueryOptions<Query$GetCollections> {
  WatchOptions$Query$GetCollections(
      {String? operationName,
      Variables$Query$GetCollections? variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables?.toJson() ?? {},
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryGetCollections,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetCollections);
}

class FetchMoreOptions$Query$GetCollections extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCollections(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$GetCollections? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryGetCollections);
}

extension ClientExtension$Query$GetCollections on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCollections>> query$GetCollections(
          [Options$Query$GetCollections? options]) async =>
      await this.query(options ?? Options$Query$GetCollections());
  graphql.ObservableQuery<Query$GetCollections> watchQuery$GetCollections(
          [WatchOptions$Query$GetCollections? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCollections());
  void writeQuery$GetCollections(
          {required Query$GetCollections data,
          Variables$Query$GetCollections? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetCollections),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetCollections? readQuery$GetCollections(
      {Variables$Query$GetCollections? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetCollections),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$GetCollections.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCollections> useQuery$GetCollections(
        [Options$Query$GetCollections? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCollections());
graphql.ObservableQuery<Query$GetCollections> useWatchQuery$GetCollections(
        [WatchOptions$Query$GetCollections? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetCollections());

class Query$GetCollections$Widget
    extends graphql_flutter.Query<Query$GetCollections> {
  Query$GetCollections$Widget(
      {widgets.Key? key,
      Options$Query$GetCollections? options,
      required graphql_flutter.QueryBuilder<Query$GetCollections> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetCollections(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetCollections$collections {
  Query$GetCollections$collections(
      {required this.items, required this.$__typename});

  @override
  factory Query$GetCollections$collections.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetCollections$collectionsFromJson(json);

  final List<Fragment$SingleItem> items;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCollections$collectionsToJson(this);
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$items.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCollections$collections) ||
        runtimeType != other.runtimeType) return false;
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) return false;
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCollections$collections
    on Query$GetCollections$collections {
  CopyWith$Query$GetCollections$collections<Query$GetCollections$collections>
      get copyWith => CopyWith$Query$GetCollections$collections(this, (i) => i);
}

abstract class CopyWith$Query$GetCollections$collections<TRes> {
  factory CopyWith$Query$GetCollections$collections(
          Query$GetCollections$collections instance,
          TRes Function(Query$GetCollections$collections) then) =
      _CopyWithImpl$Query$GetCollections$collections;

  factory CopyWith$Query$GetCollections$collections.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCollections$collections;

  TRes call({List<Fragment$SingleItem>? items, String? $__typename});
  TRes items(
      Iterable<Fragment$SingleItem> Function(
              Iterable<CopyWith$Fragment$SingleItem<Fragment$SingleItem>>)
          _fn);
}

class _CopyWithImpl$Query$GetCollections$collections<TRes>
    implements CopyWith$Query$GetCollections$collections<TRes> {
  _CopyWithImpl$Query$GetCollections$collections(this._instance, this._then);

  final Query$GetCollections$collections _instance;

  final TRes Function(Query$GetCollections$collections) _then;

  static const _undefined = {};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetCollections$collections(
          items: items == _undefined || items == null
              ? _instance.items
              : (items as List<Fragment$SingleItem>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Fragment$SingleItem> Function(
                  Iterable<CopyWith$Fragment$SingleItem<Fragment$SingleItem>>)
              _fn) =>
      call(
          items: _fn(_instance.items
              .map((e) => CopyWith$Fragment$SingleItem(e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetCollections$collections<TRes>
    implements CopyWith$Query$GetCollections$collections<TRes> {
  _CopyWithStubImpl$Query$GetCollections$collections(this._res);

  TRes _res;

  call({List<Fragment$SingleItem>? items, String? $__typename}) => _res;
  items(_fn) => _res;
}
