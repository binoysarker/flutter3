import 'collections.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'products.graphql.g.dart';

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
class Variables$Query$GetAllProducts {
  Variables$Query$GetAllProducts({this.take});

  @override
  factory Variables$Query$GetAllProducts.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$GetAllProductsFromJson(json);

  final int? take;

  Map<String, dynamic> toJson() => _$Variables$Query$GetAllProductsToJson(this);
  int get hashCode {
    final l$take = take;
    return Object.hashAll([l$take]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetAllProducts) ||
        runtimeType != other.runtimeType) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    return true;
  }

  CopyWith$Variables$Query$GetAllProducts<Variables$Query$GetAllProducts>
      get copyWith => CopyWith$Variables$Query$GetAllProducts(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetAllProducts<TRes> {
  factory CopyWith$Variables$Query$GetAllProducts(
          Variables$Query$GetAllProducts instance,
          TRes Function(Variables$Query$GetAllProducts) then) =
      _CopyWithImpl$Variables$Query$GetAllProducts;

  factory CopyWith$Variables$Query$GetAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllProducts;

  TRes call({int? take});
}

class _CopyWithImpl$Variables$Query$GetAllProducts<TRes>
    implements CopyWith$Variables$Query$GetAllProducts<TRes> {
  _CopyWithImpl$Variables$Query$GetAllProducts(this._instance, this._then);

  final Variables$Query$GetAllProducts _instance;

  final TRes Function(Variables$Query$GetAllProducts) _then;

  static const _undefined = {};

  TRes call({Object? take = _undefined}) =>
      _then(Variables$Query$GetAllProducts(
          take: take == _undefined ? _instance.take : (take as int?)));
}

class _CopyWithStubImpl$Variables$Query$GetAllProducts<TRes>
    implements CopyWith$Variables$Query$GetAllProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllProducts(this._res);

  TRes _res;

  call({int? take}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts {
  Query$GetAllProducts({required this.products, required this.$__typename});

  @override
  factory Query$GetAllProducts.fromJson(Map<String, dynamic> json) =>
      _$Query$GetAllProductsFromJson(json);

  final Query$GetAllProducts$products products;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetAllProductsToJson(this);
  int get hashCode {
    final l$products = products;
    final l$$__typename = $__typename;
    return Object.hashAll([l$products, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts) || runtimeType != other.runtimeType)
      return false;
    final l$products = products;
    final lOther$products = other.products;
    if (l$products != lOther$products) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts on Query$GetAllProducts {
  CopyWith$Query$GetAllProducts<Query$GetAllProducts> get copyWith =>
      CopyWith$Query$GetAllProducts(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts<TRes> {
  factory CopyWith$Query$GetAllProducts(Query$GetAllProducts instance,
          TRes Function(Query$GetAllProducts) then) =
      _CopyWithImpl$Query$GetAllProducts;

  factory CopyWith$Query$GetAllProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts;

  TRes call({Query$GetAllProducts$products? products, String? $__typename});
  CopyWith$Query$GetAllProducts$products<TRes> get products;
}

class _CopyWithImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithImpl$Query$GetAllProducts(this._instance, this._then);

  final Query$GetAllProducts _instance;

  final TRes Function(Query$GetAllProducts) _then;

  static const _undefined = {};

  TRes call(
          {Object? products = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts(
          products: products == _undefined || products == null
              ? _instance.products
              : (products as Query$GetAllProducts$products),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetAllProducts$products<TRes> get products {
    final local$products = _instance.products;
    return CopyWith$Query$GetAllProducts$products(
        local$products, (e) => call(products: e));
  }
}

class _CopyWithStubImpl$Query$GetAllProducts<TRes>
    implements CopyWith$Query$GetAllProducts<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts(this._res);

  TRes _res;

  call({Query$GetAllProducts$products? products, String? $__typename}) => _res;
  CopyWith$Query$GetAllProducts$products<TRes> get products =>
      CopyWith$Query$GetAllProducts$products.stub(_res);
}

const documentNodeQueryGetAllProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'take')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'products'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'options'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'take'),
                        value: VariableNode(name: NameNode(value: 'take')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
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
                        name: NameNode(value: 'variants'),
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
                              name: NameNode(value: 'currencyCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'price'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'priceWithTax'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'productId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'featuredAsset'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'preview'),
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
                        name: NameNode(value: 'featuredAsset'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'name'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'id'),
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
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'assets'),
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
                              name: NameNode(value: 'preview'),
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
                        name: NameNode(value: 'collections'),
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
                              name: NameNode(value: 'assets'),
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
                                    name: NameNode(value: 'preview'),
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
Query$GetAllProducts _parserFn$Query$GetAllProducts(
        Map<String, dynamic> data) =>
    Query$GetAllProducts.fromJson(data);

class Options$Query$GetAllProducts
    extends graphql.QueryOptions<Query$GetAllProducts> {
  Options$Query$GetAllProducts(
      {String? operationName,
      Variables$Query$GetAllProducts? variables,
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
            document: documentNodeQueryGetAllProducts,
            parserFn: _parserFn$Query$GetAllProducts);
}

class WatchOptions$Query$GetAllProducts
    extends graphql.WatchQueryOptions<Query$GetAllProducts> {
  WatchOptions$Query$GetAllProducts(
      {String? operationName,
      Variables$Query$GetAllProducts? variables,
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
            document: documentNodeQueryGetAllProducts,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetAllProducts);
}

class FetchMoreOptions$Query$GetAllProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllProducts(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$GetAllProducts? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryGetAllProducts);
}

extension ClientExtension$Query$GetAllProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllProducts>> query$GetAllProducts(
          [Options$Query$GetAllProducts? options]) async =>
      await this.query(options ?? Options$Query$GetAllProducts());
  graphql.ObservableQuery<Query$GetAllProducts> watchQuery$GetAllProducts(
          [WatchOptions$Query$GetAllProducts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllProducts());
  void writeQuery$GetAllProducts(
          {required Query$GetAllProducts data,
          Variables$Query$GetAllProducts? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetAllProducts),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetAllProducts? readQuery$GetAllProducts(
      {Variables$Query$GetAllProducts? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAllProducts),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$GetAllProducts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllProducts> useQuery$GetAllProducts(
        [Options$Query$GetAllProducts? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllProducts());
graphql.ObservableQuery<Query$GetAllProducts> useWatchQuery$GetAllProducts(
        [WatchOptions$Query$GetAllProducts? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAllProducts());

class Query$GetAllProducts$Widget
    extends graphql_flutter.Query<Query$GetAllProducts> {
  Query$GetAllProducts$Widget(
      {widgets.Key? key,
      Options$Query$GetAllProducts? options,
      required graphql_flutter.QueryBuilder<Query$GetAllProducts> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetAllProducts(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products {
  Query$GetAllProducts$products(
      {required this.items, required this.$__typename});

  @override
  factory Query$GetAllProducts$products.fromJson(Map<String, dynamic> json) =>
      _$Query$GetAllProducts$productsFromJson(json);

  final List<Query$GetAllProducts$products$items> items;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetAllProducts$productsToJson(this);
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$items.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products) ||
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

extension UtilityExtension$Query$GetAllProducts$products
    on Query$GetAllProducts$products {
  CopyWith$Query$GetAllProducts$products<Query$GetAllProducts$products>
      get copyWith => CopyWith$Query$GetAllProducts$products(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products<TRes> {
  factory CopyWith$Query$GetAllProducts$products(
          Query$GetAllProducts$products instance,
          TRes Function(Query$GetAllProducts$products) then) =
      _CopyWithImpl$Query$GetAllProducts$products;

  factory CopyWith$Query$GetAllProducts$products.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products;

  TRes call(
      {List<Query$GetAllProducts$products$items>? items, String? $__typename});
  TRes items(
      Iterable<Query$GetAllProducts$products$items> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$products$items<
                      Query$GetAllProducts$products$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProducts$products<TRes>
    implements CopyWith$Query$GetAllProducts$products<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products(this._instance, this._then);

  final Query$GetAllProducts$products _instance;

  final TRes Function(Query$GetAllProducts$products) _then;

  static const _undefined = {};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products(
          items: items == _undefined || items == null
              ? _instance.items
              : (items as List<Query$GetAllProducts$products$items>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Query$GetAllProducts$products$items> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$products$items<
                          Query$GetAllProducts$products$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) =>
                  CopyWith$Query$GetAllProducts$products$items(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Query$GetAllProducts$products<TRes>
    implements CopyWith$Query$GetAllProducts$products<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products(this._res);

  TRes _res;

  call(
          {List<Query$GetAllProducts$products$items>? items,
          String? $__typename}) =>
      _res;
  items(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items {
  Query$GetAllProducts$products$items(
      {required this.id,
      required this.name,
      required this.slug,
      required this.variants,
      this.featuredAsset,
      required this.assets,
      required this.collections,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$itemsFromJson(json);

  final String id;

  final String name;

  final String slug;

  final List<Query$GetAllProducts$products$items$variants> variants;

  final Query$GetAllProducts$products$items$featuredAsset? featuredAsset;

  final List<Query$GetAllProducts$products$items$assets> assets;

  final List<Query$GetAllProducts$products$items$collections> collections;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$itemsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$slug = slug;
    final l$variants = variants;
    final l$featuredAsset = featuredAsset;
    final l$assets = assets;
    final l$collections = collections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$slug,
      Object.hashAll(l$variants.map((v) => v)),
      l$featuredAsset,
      Object.hashAll(l$assets.map((v) => v)),
      Object.hashAll(l$collections.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items) ||
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
    final l$variants = variants;
    final lOther$variants = other.variants;
    if (l$variants.length != lOther$variants.length) return false;
    for (int i = 0; i < l$variants.length; i++) {
      final l$variants$entry = l$variants[i];
      final lOther$variants$entry = lOther$variants[i];
      if (l$variants$entry != lOther$variants$entry) return false;
    }

    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$assets = assets;
    final lOther$assets = other.assets;
    if (l$assets.length != lOther$assets.length) return false;
    for (int i = 0; i < l$assets.length; i++) {
      final l$assets$entry = l$assets[i];
      final lOther$assets$entry = lOther$assets[i];
      if (l$assets$entry != lOther$assets$entry) return false;
    }

    final l$collections = collections;
    final lOther$collections = other.collections;
    if (l$collections.length != lOther$collections.length) return false;
    for (int i = 0; i < l$collections.length; i++) {
      final l$collections$entry = l$collections[i];
      final lOther$collections$entry = lOther$collections[i];
      if (l$collections$entry != lOther$collections$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items
    on Query$GetAllProducts$products$items {
  CopyWith$Query$GetAllProducts$products$items<
          Query$GetAllProducts$products$items>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items<TRes> {
  factory CopyWith$Query$GetAllProducts$products$items(
          Query$GetAllProducts$products$items instance,
          TRes Function(Query$GetAllProducts$products$items) then) =
      _CopyWithImpl$Query$GetAllProducts$products$items;

  factory CopyWith$Query$GetAllProducts$products$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items;

  TRes call(
      {String? id,
      String? name,
      String? slug,
      List<Query$GetAllProducts$products$items$variants>? variants,
      Query$GetAllProducts$products$items$featuredAsset? featuredAsset,
      List<Query$GetAllProducts$products$items$assets>? assets,
      List<Query$GetAllProducts$products$items$collections>? collections,
      String? $__typename});
  TRes variants(
      Iterable<Query$GetAllProducts$products$items$variants> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$products$items$variants<
                      Query$GetAllProducts$products$items$variants>>)
          _fn);
  CopyWith$Query$GetAllProducts$products$items$featuredAsset<TRes>
      get featuredAsset;
  TRes assets(
      Iterable<Query$GetAllProducts$products$items$assets> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$products$items$assets<
                      Query$GetAllProducts$products$items$assets>>)
          _fn);
  TRes collections(
      Iterable<Query$GetAllProducts$products$items$collections> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$products$items$collections<
                      Query$GetAllProducts$products$items$collections>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProducts$products$items<TRes>
    implements CopyWith$Query$GetAllProducts$products$items<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items(this._instance, this._then);

  final Query$GetAllProducts$products$items _instance;

  final TRes Function(Query$GetAllProducts$products$items) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? variants = _undefined,
          Object? featuredAsset = _undefined,
          Object? assets = _undefined,
          Object? collections = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          variants: variants == _undefined || variants == null
              ? _instance.variants
              : (variants
                  as List<Query$GetAllProducts$products$items$variants>),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset
                  as Query$GetAllProducts$products$items$featuredAsset?),
          assets: assets == _undefined || assets == null
              ? _instance.assets
              : (assets as List<Query$GetAllProducts$products$items$assets>),
          collections: collections == _undefined || collections == null
              ? _instance.collections
              : (collections
                  as List<Query$GetAllProducts$products$items$collections>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes variants(
          Iterable<Query$GetAllProducts$products$items$variants> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$products$items$variants<
                          Query$GetAllProducts$products$items$variants>>)
              _fn) =>
      call(
          variants: _fn(_instance.variants.map((e) =>
              CopyWith$Query$GetAllProducts$products$items$variants(
                  e, (i) => i))).toList());
  CopyWith$Query$GetAllProducts$products$items$featuredAsset<TRes>
      get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Query$GetAllProducts$products$items$featuredAsset.stub(
            _then(_instance))
        : CopyWith$Query$GetAllProducts$products$items$featuredAsset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  TRes assets(
          Iterable<Query$GetAllProducts$products$items$assets> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$products$items$assets<
                          Query$GetAllProducts$products$items$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets.map((e) =>
              CopyWith$Query$GetAllProducts$products$items$assets(
                  e, (i) => i))).toList());
  TRes collections(
          Iterable<Query$GetAllProducts$products$items$collections> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$products$items$collections<
                          Query$GetAllProducts$products$items$collections>>)
              _fn) =>
      call(
          collections: _fn(_instance.collections.map((e) =>
              CopyWith$Query$GetAllProducts$products$items$collections(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items<TRes>
    implements CopyWith$Query$GetAllProducts$products$items<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? slug,
          List<Query$GetAllProducts$products$items$variants>? variants,
          Query$GetAllProducts$products$items$featuredAsset? featuredAsset,
          List<Query$GetAllProducts$products$items$assets>? assets,
          List<Query$GetAllProducts$products$items$collections>? collections,
          String? $__typename}) =>
      _res;
  variants(_fn) => _res;
  CopyWith$Query$GetAllProducts$products$items$featuredAsset<TRes>
      get featuredAsset =>
          CopyWith$Query$GetAllProducts$products$items$featuredAsset.stub(_res);
  assets(_fn) => _res;
  collections(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$variants {
  Query$GetAllProducts$products$items$variants(
      {required this.id,
      required this.name,
      required this.currencyCode,
      required this.price,
      required this.priceWithTax,
      required this.productId,
      this.featuredAsset,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$variants.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$variantsFromJson(json);

  final String id;

  final String name;

  @JsonKey(unknownEnumValue: Enum$CurrencyCode.$unknown)
  final Enum$CurrencyCode currencyCode;

  final int price;

  final int priceWithTax;

  final String productId;

  final Query$GetAllProducts$products$items$variants$featuredAsset?
      featuredAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$variantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$currencyCode = currencyCode;
    final l$price = price;
    final l$priceWithTax = priceWithTax;
    final l$productId = productId;
    final l$featuredAsset = featuredAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$currencyCode,
      l$price,
      l$priceWithTax,
      l$productId,
      l$featuredAsset,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items$variants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) return false;
    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$variants
    on Query$GetAllProducts$products$items$variants {
  CopyWith$Query$GetAllProducts$products$items$variants<
          Query$GetAllProducts$products$items$variants>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items$variants(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$variants<TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$variants(
          Query$GetAllProducts$products$items$variants instance,
          TRes Function(Query$GetAllProducts$products$items$variants) then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$variants;

  factory CopyWith$Query$GetAllProducts$products$items$variants.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$variants;

  TRes call(
      {String? id,
      String? name,
      Enum$CurrencyCode? currencyCode,
      int? price,
      int? priceWithTax,
      String? productId,
      Query$GetAllProducts$products$items$variants$featuredAsset? featuredAsset,
      String? $__typename});
  CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<TRes>
      get featuredAsset;
}

class _CopyWithImpl$Query$GetAllProducts$products$items$variants<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$variants<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$variants(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$variants _instance;

  final TRes Function(Query$GetAllProducts$products$items$variants) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? currencyCode = _undefined,
          Object? price = _undefined,
          Object? priceWithTax = _undefined,
          Object? productId = _undefined,
          Object? featuredAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$variants(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          currencyCode: currencyCode == _undefined || currencyCode == null
              ? _instance.currencyCode
              : (currencyCode as Enum$CurrencyCode),
          price: price == _undefined || price == null
              ? _instance.price
              : (price as int),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          productId: productId == _undefined || productId == null
              ? _instance.productId
              : (productId as String),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset
                  as Query$GetAllProducts$products$items$variants$featuredAsset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<TRes>
      get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset
            .stub(_then(_instance))
        : CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$variants<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$variants<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$variants(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          Enum$CurrencyCode? currencyCode,
          int? price,
          int? priceWithTax,
          String? productId,
          Query$GetAllProducts$products$items$variants$featuredAsset?
              featuredAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<TRes>
      get featuredAsset =>
          CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$variants$featuredAsset {
  Query$GetAllProducts$products$items$variants$featuredAsset(
      {required this.preview, required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$variants$featuredAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$variants$featuredAssetFromJson(
          json);

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$variants$featuredAssetToJson(this);
  int get hashCode {
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetAllProducts$products$items$variants$featuredAsset) ||
        runtimeType != other.runtimeType) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$variants$featuredAsset
    on Query$GetAllProducts$products$items$variants$featuredAsset {
  CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<
          Query$GetAllProducts$products$items$variants$featuredAsset>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset(
              this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<
    TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset(
          Query$GetAllProducts$products$items$variants$featuredAsset instance,
          TRes Function(
                  Query$GetAllProducts$products$items$variants$featuredAsset)
              then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$variants$featuredAsset;

  factory CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$variants$featuredAsset;

  TRes call({String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetAllProducts$products$items$variants$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<
            TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$variants$featuredAsset(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$variants$featuredAsset _instance;

  final TRes Function(
      Query$GetAllProducts$products$items$variants$featuredAsset) _then;

  static const _undefined = {};

  TRes call({Object? preview = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$variants$featuredAsset(
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$variants$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$variants$featuredAsset<
            TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$variants$featuredAsset(
      this._res);

  TRes _res;

  call({String? preview, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$featuredAsset {
  Query$GetAllProducts$products$items$featuredAsset(
      {required this.name,
      required this.id,
      required this.preview,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$featuredAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$featuredAssetFromJson(json);

  final String name;

  final String id;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$featuredAssetToJson(this);
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$id, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items$featuredAsset) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$featuredAsset
    on Query$GetAllProducts$products$items$featuredAsset {
  CopyWith$Query$GetAllProducts$products$items$featuredAsset<
          Query$GetAllProducts$products$items$featuredAsset>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items$featuredAsset(
              this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$featuredAsset<
    TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$featuredAsset(
          Query$GetAllProducts$products$items$featuredAsset instance,
          TRes Function(Query$GetAllProducts$products$items$featuredAsset)
              then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$featuredAsset;

  factory CopyWith$Query$GetAllProducts$products$items$featuredAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$featuredAsset;

  TRes call({String? name, String? id, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetAllProducts$products$items$featuredAsset<TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$featuredAsset<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$featuredAsset(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$featuredAsset _instance;

  final TRes Function(Query$GetAllProducts$products$items$featuredAsset) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? id = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$featuredAsset(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$featuredAsset<TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$featuredAsset<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$featuredAsset(
      this._res);

  TRes _res;

  call({String? name, String? id, String? preview, String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$assets {
  Query$GetAllProducts$products$items$assets(
      {required this.id,
      required this.name,
      required this.preview,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$assets.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$assetsFromJson(json);

  final String id;

  final String name;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$assetsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items$assets) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$assets
    on Query$GetAllProducts$products$items$assets {
  CopyWith$Query$GetAllProducts$products$items$assets<
          Query$GetAllProducts$products$items$assets>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items$assets(this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$assets<TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$assets(
          Query$GetAllProducts$products$items$assets instance,
          TRes Function(Query$GetAllProducts$products$items$assets) then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$assets;

  factory CopyWith$Query$GetAllProducts$products$items$assets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$assets;

  TRes call({String? id, String? name, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetAllProducts$products$items$assets<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$assets<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$assets(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$assets _instance;

  final TRes Function(Query$GetAllProducts$products$items$assets) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$assets(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$assets<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$assets<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$assets(this._res);

  TRes _res;

  call({String? id, String? name, String? preview, String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$collections {
  Query$GetAllProducts$products$items$collections(
      {required this.id,
      required this.name,
      required this.assets,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$collections.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$collectionsFromJson(json);

  final String id;

  final String name;

  final List<Query$GetAllProducts$products$items$collections$assets> assets;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$collectionsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$assets = assets;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, Object.hashAll(l$assets.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items$collections) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$assets = assets;
    final lOther$assets = other.assets;
    if (l$assets.length != lOther$assets.length) return false;
    for (int i = 0; i < l$assets.length; i++) {
      final l$assets$entry = l$assets[i];
      final lOther$assets$entry = lOther$assets[i];
      if (l$assets$entry != lOther$assets$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$collections
    on Query$GetAllProducts$products$items$collections {
  CopyWith$Query$GetAllProducts$products$items$collections<
          Query$GetAllProducts$products$items$collections>
      get copyWith => CopyWith$Query$GetAllProducts$products$items$collections(
          this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$collections<TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$collections(
          Query$GetAllProducts$products$items$collections instance,
          TRes Function(Query$GetAllProducts$products$items$collections) then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$collections;

  factory CopyWith$Query$GetAllProducts$products$items$collections.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$collections;

  TRes call(
      {String? id,
      String? name,
      List<Query$GetAllProducts$products$items$collections$assets>? assets,
      String? $__typename});
  TRes assets(
      Iterable<Query$GetAllProducts$products$items$collections$assets> Function(
              Iterable<
                  CopyWith$Query$GetAllProducts$products$items$collections$assets<
                      Query$GetAllProducts$products$items$collections$assets>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProducts$products$items$collections<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$collections<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$collections(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$collections _instance;

  final TRes Function(Query$GetAllProducts$products$items$collections) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? assets = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$collections(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          assets: assets == _undefined || assets == null
              ? _instance.assets
              : (assets as List<
                  Query$GetAllProducts$products$items$collections$assets>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes assets(
          Iterable<Query$GetAllProducts$products$items$collections$assets> Function(
                  Iterable<
                      CopyWith$Query$GetAllProducts$products$items$collections$assets<
                          Query$GetAllProducts$products$items$collections$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets.map((e) =>
              CopyWith$Query$GetAllProducts$products$items$collections$assets(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$collections<TRes>
    implements CopyWith$Query$GetAllProducts$products$items$collections<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$collections(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          List<Query$GetAllProducts$products$items$collections$assets>? assets,
          String? $__typename}) =>
      _res;
  assets(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllProducts$products$items$collections$assets {
  Query$GetAllProducts$products$items$collections$assets(
      {required this.id,
      required this.name,
      required this.preview,
      required this.$__typename});

  @override
  factory Query$GetAllProducts$products$items$collections$assets.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllProducts$products$items$collections$assetsFromJson(json);

  final String id;

  final String name;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllProducts$products$items$collections$assetsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllProducts$products$items$collections$assets) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllProducts$products$items$collections$assets
    on Query$GetAllProducts$products$items$collections$assets {
  CopyWith$Query$GetAllProducts$products$items$collections$assets<
          Query$GetAllProducts$products$items$collections$assets>
      get copyWith =>
          CopyWith$Query$GetAllProducts$products$items$collections$assets(
              this, (i) => i);
}

abstract class CopyWith$Query$GetAllProducts$products$items$collections$assets<
    TRes> {
  factory CopyWith$Query$GetAllProducts$products$items$collections$assets(
          Query$GetAllProducts$products$items$collections$assets instance,
          TRes Function(Query$GetAllProducts$products$items$collections$assets)
              then) =
      _CopyWithImpl$Query$GetAllProducts$products$items$collections$assets;

  factory CopyWith$Query$GetAllProducts$products$items$collections$assets.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllProducts$products$items$collections$assets;

  TRes call({String? id, String? name, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetAllProducts$products$items$collections$assets<TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$collections$assets<TRes> {
  _CopyWithImpl$Query$GetAllProducts$products$items$collections$assets(
      this._instance, this._then);

  final Query$GetAllProducts$products$items$collections$assets _instance;

  final TRes Function(Query$GetAllProducts$products$items$collections$assets)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllProducts$products$items$collections$assets(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllProducts$products$items$collections$assets<
        TRes>
    implements
        CopyWith$Query$GetAllProducts$products$items$collections$assets<TRes> {
  _CopyWithStubImpl$Query$GetAllProducts$products$items$collections$assets(
      this._res);

  TRes _res;

  call({String? id, String? name, String? preview, String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$SearchProducts {
  Variables$Query$SearchProducts({required this.input});

  @override
  factory Variables$Query$SearchProducts.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$SearchProductsFromJson(json);

  final Input$SearchInput input;

  Map<String, dynamic> toJson() => _$Variables$Query$SearchProductsToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$SearchProducts) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Query$SearchProducts<Variables$Query$SearchProducts>
      get copyWith => CopyWith$Variables$Query$SearchProducts(this, (i) => i);
}

abstract class CopyWith$Variables$Query$SearchProducts<TRes> {
  factory CopyWith$Variables$Query$SearchProducts(
          Variables$Query$SearchProducts instance,
          TRes Function(Variables$Query$SearchProducts) then) =
      _CopyWithImpl$Variables$Query$SearchProducts;

  factory CopyWith$Variables$Query$SearchProducts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchProducts;

  TRes call({Input$SearchInput? input});
}

class _CopyWithImpl$Variables$Query$SearchProducts<TRes>
    implements CopyWith$Variables$Query$SearchProducts<TRes> {
  _CopyWithImpl$Variables$Query$SearchProducts(this._instance, this._then);

  final Variables$Query$SearchProducts _instance;

  final TRes Function(Variables$Query$SearchProducts) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$SearchProducts(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$SearchInput)));
}

class _CopyWithStubImpl$Variables$Query$SearchProducts<TRes>
    implements CopyWith$Variables$Query$SearchProducts<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchProducts(this._res);

  TRes _res;

  call({Input$SearchInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts {
  Query$SearchProducts({required this.search, required this.$__typename});

  @override
  factory Query$SearchProducts.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchProductsFromJson(json);

  final Query$SearchProducts$search search;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchProductsToJson(this);
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([l$search, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts) || runtimeType != other.runtimeType)
      return false;
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts on Query$SearchProducts {
  CopyWith$Query$SearchProducts<Query$SearchProducts> get copyWith =>
      CopyWith$Query$SearchProducts(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts<TRes> {
  factory CopyWith$Query$SearchProducts(Query$SearchProducts instance,
          TRes Function(Query$SearchProducts) then) =
      _CopyWithImpl$Query$SearchProducts;

  factory CopyWith$Query$SearchProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts;

  TRes call({Query$SearchProducts$search? search, String? $__typename});
  CopyWith$Query$SearchProducts$search<TRes> get search;
}

class _CopyWithImpl$Query$SearchProducts<TRes>
    implements CopyWith$Query$SearchProducts<TRes> {
  _CopyWithImpl$Query$SearchProducts(this._instance, this._then);

  final Query$SearchProducts _instance;

  final TRes Function(Query$SearchProducts) _then;

  static const _undefined = {};

  TRes call({Object? search = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts(
          search: search == _undefined || search == null
              ? _instance.search
              : (search as Query$SearchProducts$search),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchProducts$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$SearchProducts$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$SearchProducts<TRes>
    implements CopyWith$Query$SearchProducts<TRes> {
  _CopyWithStubImpl$Query$SearchProducts(this._res);

  TRes _res;

  call({Query$SearchProducts$search? search, String? $__typename}) => _res;
  CopyWith$Query$SearchProducts$search<TRes> get search =>
      CopyWith$Query$SearchProducts$search.stub(_res);
}

const documentNodeQuerySearchProducts = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchProducts'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'SearchInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'search'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'productId'),
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
                        name: NameNode(value: 'productName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'priceWithTax'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'PriceRange'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'min'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'max'),
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
                        name: NameNode(value: 'productAsset'),
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
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'totalItems'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'facetValues'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'facetValue'),
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
                              name: NameNode(value: 'facet'),
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
Query$SearchProducts _parserFn$Query$SearchProducts(
        Map<String, dynamic> data) =>
    Query$SearchProducts.fromJson(data);

class Options$Query$SearchProducts
    extends graphql.QueryOptions<Query$SearchProducts> {
  Options$Query$SearchProducts(
      {String? operationName,
      required Variables$Query$SearchProducts variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQuerySearchProducts,
            parserFn: _parserFn$Query$SearchProducts);
}

class WatchOptions$Query$SearchProducts
    extends graphql.WatchQueryOptions<Query$SearchProducts> {
  WatchOptions$Query$SearchProducts(
      {String? operationName,
      required Variables$Query$SearchProducts variables,
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
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQuerySearchProducts,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$SearchProducts);
}

class FetchMoreOptions$Query$SearchProducts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchProducts(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$SearchProducts variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQuerySearchProducts);
}

extension ClientExtension$Query$SearchProducts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchProducts>> query$SearchProducts(
          Options$Query$SearchProducts options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$SearchProducts> watchQuery$SearchProducts(
          WatchOptions$Query$SearchProducts options) =>
      this.watchQuery(options);
  void writeQuery$SearchProducts(
          {required Query$SearchProducts data,
          required Variables$Query$SearchProducts variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQuerySearchProducts),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$SearchProducts? readQuery$SearchProducts(
      {required Variables$Query$SearchProducts variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQuerySearchProducts),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$SearchProducts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchProducts> useQuery$SearchProducts(
        Options$Query$SearchProducts options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SearchProducts> useWatchQuery$SearchProducts(
        WatchOptions$Query$SearchProducts options) =>
    graphql_flutter.useWatchQuery(options);

class Query$SearchProducts$Widget
    extends graphql_flutter.Query<Query$SearchProducts> {
  Query$SearchProducts$Widget(
      {widgets.Key? key,
      required Options$Query$SearchProducts options,
      required graphql_flutter.QueryBuilder<Query$SearchProducts> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search {
  Query$SearchProducts$search(
      {required this.items,
      required this.totalItems,
      required this.facetValues,
      required this.$__typename});

  @override
  factory Query$SearchProducts$search.fromJson(Map<String, dynamic> json) =>
      _$Query$SearchProducts$searchFromJson(json);

  final List<Query$SearchProducts$search$items> items;

  final int totalItems;

  final List<Query$SearchProducts$search$facetValues> facetValues;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$SearchProducts$searchToJson(this);
  int get hashCode {
    final l$items = items;
    final l$totalItems = totalItems;
    final l$facetValues = facetValues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$items.map((v) => v)),
      l$totalItems,
      Object.hashAll(l$facetValues.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search) ||
        runtimeType != other.runtimeType) return false;
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) return false;
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) return false;
    }

    final l$totalItems = totalItems;
    final lOther$totalItems = other.totalItems;
    if (l$totalItems != lOther$totalItems) return false;
    final l$facetValues = facetValues;
    final lOther$facetValues = other.facetValues;
    if (l$facetValues.length != lOther$facetValues.length) return false;
    for (int i = 0; i < l$facetValues.length; i++) {
      final l$facetValues$entry = l$facetValues[i];
      final lOther$facetValues$entry = lOther$facetValues[i];
      if (l$facetValues$entry != lOther$facetValues$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search
    on Query$SearchProducts$search {
  CopyWith$Query$SearchProducts$search<Query$SearchProducts$search>
      get copyWith => CopyWith$Query$SearchProducts$search(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search<TRes> {
  factory CopyWith$Query$SearchProducts$search(
          Query$SearchProducts$search instance,
          TRes Function(Query$SearchProducts$search) then) =
      _CopyWithImpl$Query$SearchProducts$search;

  factory CopyWith$Query$SearchProducts$search.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search;

  TRes call(
      {List<Query$SearchProducts$search$items>? items,
      int? totalItems,
      List<Query$SearchProducts$search$facetValues>? facetValues,
      String? $__typename});
  TRes items(
      Iterable<Query$SearchProducts$search$items> Function(
              Iterable<
                  CopyWith$Query$SearchProducts$search$items<
                      Query$SearchProducts$search$items>>)
          _fn);
  TRes facetValues(
      Iterable<Query$SearchProducts$search$facetValues> Function(
              Iterable<
                  CopyWith$Query$SearchProducts$search$facetValues<
                      Query$SearchProducts$search$facetValues>>)
          _fn);
}

class _CopyWithImpl$Query$SearchProducts$search<TRes>
    implements CopyWith$Query$SearchProducts$search<TRes> {
  _CopyWithImpl$Query$SearchProducts$search(this._instance, this._then);

  final Query$SearchProducts$search _instance;

  final TRes Function(Query$SearchProducts$search) _then;

  static const _undefined = {};

  TRes call(
          {Object? items = _undefined,
          Object? totalItems = _undefined,
          Object? facetValues = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search(
          items: items == _undefined || items == null
              ? _instance.items
              : (items as List<Query$SearchProducts$search$items>),
          totalItems: totalItems == _undefined || totalItems == null
              ? _instance.totalItems
              : (totalItems as int),
          facetValues: facetValues == _undefined || facetValues == null
              ? _instance.facetValues
              : (facetValues as List<Query$SearchProducts$search$facetValues>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Query$SearchProducts$search$items> Function(
                  Iterable<
                      CopyWith$Query$SearchProducts$search$items<
                          Query$SearchProducts$search$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) =>
                  CopyWith$Query$SearchProducts$search$items(e, (i) => i)))
              .toList());
  TRes facetValues(
          Iterable<Query$SearchProducts$search$facetValues> Function(
                  Iterable<
                      CopyWith$Query$SearchProducts$search$facetValues<
                          Query$SearchProducts$search$facetValues>>)
              _fn) =>
      call(
          facetValues: _fn(_instance.facetValues.map((e) =>
              CopyWith$Query$SearchProducts$search$facetValues(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$SearchProducts$search<TRes>
    implements CopyWith$Query$SearchProducts$search<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search(this._res);

  TRes _res;

  call(
          {List<Query$SearchProducts$search$items>? items,
          int? totalItems,
          List<Query$SearchProducts$search$facetValues>? facetValues,
          String? $__typename}) =>
      _res;
  items(_fn) => _res;
  facetValues(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$items {
  Query$SearchProducts$search$items(
      {required this.productId,
      required this.slug,
      required this.productName,
      required this.description,
      required this.priceWithTax,
      this.productAsset,
      required this.$__typename});

  @override
  factory Query$SearchProducts$search$items.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$itemsFromJson(json);

  final String productId;

  final String slug;

  final String productName;

  final String description;

  final Query$SearchProducts$search$items$priceWithTax priceWithTax;

  final Query$SearchProducts$search$items$productAsset? productAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$itemsToJson(this);
  int get hashCode {
    final l$productId = productId;
    final l$slug = slug;
    final l$productName = productName;
    final l$description = description;
    final l$priceWithTax = priceWithTax;
    final l$productAsset = productAsset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$slug,
      l$productName,
      l$description,
      l$priceWithTax,
      l$productAsset,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$items) ||
        runtimeType != other.runtimeType) return false;
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$productName = productName;
    final lOther$productName = other.productName;
    if (l$productName != lOther$productName) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$productAsset = productAsset;
    final lOther$productAsset = other.productAsset;
    if (l$productAsset != lOther$productAsset) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$items
    on Query$SearchProducts$search$items {
  CopyWith$Query$SearchProducts$search$items<Query$SearchProducts$search$items>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$items(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$items<TRes> {
  factory CopyWith$Query$SearchProducts$search$items(
          Query$SearchProducts$search$items instance,
          TRes Function(Query$SearchProducts$search$items) then) =
      _CopyWithImpl$Query$SearchProducts$search$items;

  factory CopyWith$Query$SearchProducts$search$items.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$items;

  TRes call(
      {String? productId,
      String? slug,
      String? productName,
      String? description,
      Query$SearchProducts$search$items$priceWithTax? priceWithTax,
      Query$SearchProducts$search$items$productAsset? productAsset,
      String? $__typename});
  CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes>
      get priceWithTax;
  CopyWith$Query$SearchProducts$search$items$productAsset<TRes>
      get productAsset;
}

class _CopyWithImpl$Query$SearchProducts$search$items<TRes>
    implements CopyWith$Query$SearchProducts$search$items<TRes> {
  _CopyWithImpl$Query$SearchProducts$search$items(this._instance, this._then);

  final Query$SearchProducts$search$items _instance;

  final TRes Function(Query$SearchProducts$search$items) _then;

  static const _undefined = {};

  TRes call(
          {Object? productId = _undefined,
          Object? slug = _undefined,
          Object? productName = _undefined,
          Object? description = _undefined,
          Object? priceWithTax = _undefined,
          Object? productAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$items(
          productId: productId == _undefined || productId == null
              ? _instance.productId
              : (productId as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          productName: productName == _undefined || productName == null
              ? _instance.productName
              : (productName as String),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax
                  as Query$SearchProducts$search$items$priceWithTax),
          productAsset: productAsset == _undefined
              ? _instance.productAsset
              : (productAsset
                  as Query$SearchProducts$search$items$productAsset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes>
      get priceWithTax {
    final local$priceWithTax = _instance.priceWithTax;
    return CopyWith$Query$SearchProducts$search$items$priceWithTax(
        local$priceWithTax, (e) => call(priceWithTax: e));
  }

  CopyWith$Query$SearchProducts$search$items$productAsset<TRes>
      get productAsset {
    final local$productAsset = _instance.productAsset;
    return local$productAsset == null
        ? CopyWith$Query$SearchProducts$search$items$productAsset.stub(
            _then(_instance))
        : CopyWith$Query$SearchProducts$search$items$productAsset(
            local$productAsset, (e) => call(productAsset: e));
  }
}

class _CopyWithStubImpl$Query$SearchProducts$search$items<TRes>
    implements CopyWith$Query$SearchProducts$search$items<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$items(this._res);

  TRes _res;

  call(
          {String? productId,
          String? slug,
          String? productName,
          String? description,
          Query$SearchProducts$search$items$priceWithTax? priceWithTax,
          Query$SearchProducts$search$items$productAsset? productAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes>
      get priceWithTax =>
          CopyWith$Query$SearchProducts$search$items$priceWithTax.stub(_res);
  CopyWith$Query$SearchProducts$search$items$productAsset<TRes>
      get productAsset =>
          CopyWith$Query$SearchProducts$search$items$productAsset.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$items$priceWithTax {
  Query$SearchProducts$search$items$priceWithTax({required this.$__typename});

  @override
  factory Query$SearchProducts$search$items$priceWithTax.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "PriceRange":
        return Query$SearchProducts$search$items$priceWithTax$$PriceRange
            .fromJson(json);
      default:
        return _$Query$SearchProducts$search$items$priceWithTaxFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$items$priceWithTaxToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$items$priceWithTax) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$items$priceWithTax
    on Query$SearchProducts$search$items$priceWithTax {
  CopyWith$Query$SearchProducts$search$items$priceWithTax<
          Query$SearchProducts$search$items$priceWithTax>
      get copyWith => CopyWith$Query$SearchProducts$search$items$priceWithTax(
          this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes> {
  factory CopyWith$Query$SearchProducts$search$items$priceWithTax(
          Query$SearchProducts$search$items$priceWithTax instance,
          TRes Function(Query$SearchProducts$search$items$priceWithTax) then) =
      _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax;

  factory CopyWith$Query$SearchProducts$search$items$priceWithTax.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax<TRes>
    implements CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes> {
  _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax(
      this._instance, this._then);

  final Query$SearchProducts$search$items$priceWithTax _instance;

  final TRes Function(Query$SearchProducts$search$items$priceWithTax) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$items$priceWithTax(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax<TRes>
    implements CopyWith$Query$SearchProducts$search$items$priceWithTax<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$items$priceWithTax$$PriceRange
    implements Query$SearchProducts$search$items$priceWithTax {
  Query$SearchProducts$search$items$priceWithTax$$PriceRange(
      {required this.$__typename, required this.min, required this.max});

  @override
  factory Query$SearchProducts$search$items$priceWithTax$$PriceRange.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int min;

  final int max;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$$__typename, l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$SearchProducts$search$items$priceWithTax$$PriceRange) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$items$priceWithTax$$PriceRange
    on Query$SearchProducts$search$items$priceWithTax$$PriceRange {
  CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
          Query$SearchProducts$search$items$priceWithTax$$PriceRange>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange(
              this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
    TRes> {
  factory CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange(
          Query$SearchProducts$search$items$priceWithTax$$PriceRange instance,
          TRes Function(
                  Query$SearchProducts$search$items$priceWithTax$$PriceRange)
              then) =
      _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange;

  factory CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange;

  TRes call({String? $__typename, int? min, int? max});
}

class _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
            TRes> {
  _CopyWithImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange(
      this._instance, this._then);

  final Query$SearchProducts$search$items$priceWithTax$$PriceRange _instance;

  final TRes Function(
      Query$SearchProducts$search$items$priceWithTax$$PriceRange) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? min = _undefined,
          Object? max = _undefined}) =>
      _then(Query$SearchProducts$search$items$priceWithTax$$PriceRange(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          min: min == _undefined || min == null ? _instance.min : (min as int),
          max:
              max == _undefined || max == null ? _instance.max : (max as int)));
}

class _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$items$priceWithTax$$PriceRange<
            TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$items$priceWithTax$$PriceRange(
      this._res);

  TRes _res;

  call({String? $__typename, int? min, int? max}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$items$productAsset {
  Query$SearchProducts$search$items$productAsset(
      {required this.id,
      required this.preview,
      this.focalPoint,
      required this.$__typename});

  @override
  factory Query$SearchProducts$search$items$productAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$items$productAssetFromJson(json);

  final String id;

  final String preview;

  final Query$SearchProducts$search$items$productAsset$focalPoint? focalPoint;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$items$productAssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$preview = preview;
    final l$focalPoint = focalPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$preview, l$focalPoint, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$items$productAsset) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
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

extension UtilityExtension$Query$SearchProducts$search$items$productAsset
    on Query$SearchProducts$search$items$productAsset {
  CopyWith$Query$SearchProducts$search$items$productAsset<
          Query$SearchProducts$search$items$productAsset>
      get copyWith => CopyWith$Query$SearchProducts$search$items$productAsset(
          this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$items$productAsset<TRes> {
  factory CopyWith$Query$SearchProducts$search$items$productAsset(
          Query$SearchProducts$search$items$productAsset instance,
          TRes Function(Query$SearchProducts$search$items$productAsset) then) =
      _CopyWithImpl$Query$SearchProducts$search$items$productAsset;

  factory CopyWith$Query$SearchProducts$search$items$productAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset;

  TRes call(
      {String? id,
      String? preview,
      Query$SearchProducts$search$items$productAsset$focalPoint? focalPoint,
      String? $__typename});
  CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<TRes>
      get focalPoint;
}

class _CopyWithImpl$Query$SearchProducts$search$items$productAsset<TRes>
    implements CopyWith$Query$SearchProducts$search$items$productAsset<TRes> {
  _CopyWithImpl$Query$SearchProducts$search$items$productAsset(
      this._instance, this._then);

  final Query$SearchProducts$search$items$productAsset _instance;

  final TRes Function(Query$SearchProducts$search$items$productAsset) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? preview = _undefined,
          Object? focalPoint = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$items$productAsset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          focalPoint: focalPoint == _undefined
              ? _instance.focalPoint
              : (focalPoint
                  as Query$SearchProducts$search$items$productAsset$focalPoint?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<TRes>
      get focalPoint {
    final local$focalPoint = _instance.focalPoint;
    return local$focalPoint == null
        ? CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint
            .stub(_then(_instance))
        : CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint(
            local$focalPoint, (e) => call(focalPoint: e));
  }
}

class _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset<TRes>
    implements CopyWith$Query$SearchProducts$search$items$productAsset<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset(this._res);

  TRes _res;

  call(
          {String? id,
          String? preview,
          Query$SearchProducts$search$items$productAsset$focalPoint? focalPoint,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<TRes>
      get focalPoint =>
          CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$items$productAsset$focalPoint {
  Query$SearchProducts$search$items$productAsset$focalPoint(
      {required this.x, required this.y, required this.$__typename});

  @override
  factory Query$SearchProducts$search$items$productAsset$focalPoint.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$items$productAsset$focalPointFromJson(json);

  final double x;

  final double y;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$items$productAsset$focalPointToJson(this);
  int get hashCode {
    final l$x = x;
    final l$y = y;
    final l$$__typename = $__typename;
    return Object.hashAll([l$x, l$y, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$items$productAsset$focalPoint) ||
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

extension UtilityExtension$Query$SearchProducts$search$items$productAsset$focalPoint
    on Query$SearchProducts$search$items$productAsset$focalPoint {
  CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<
          Query$SearchProducts$search$items$productAsset$focalPoint>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint(
              this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<
    TRes> {
  factory CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint(
          Query$SearchProducts$search$items$productAsset$focalPoint instance,
          TRes Function(
                  Query$SearchProducts$search$items$productAsset$focalPoint)
              then) =
      _CopyWithImpl$Query$SearchProducts$search$items$productAsset$focalPoint;

  factory CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset$focalPoint;

  TRes call({double? x, double? y, String? $__typename});
}

class _CopyWithImpl$Query$SearchProducts$search$items$productAsset$focalPoint<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<
            TRes> {
  _CopyWithImpl$Query$SearchProducts$search$items$productAsset$focalPoint(
      this._instance, this._then);

  final Query$SearchProducts$search$items$productAsset$focalPoint _instance;

  final TRes Function(Query$SearchProducts$search$items$productAsset$focalPoint)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? x = _undefined,
          Object? y = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$items$productAsset$focalPoint(
          x: x == _undefined || x == null ? _instance.x : (x as double),
          y: y == _undefined || y == null ? _instance.y : (y as double),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset$focalPoint<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$items$productAsset$focalPoint<
            TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$items$productAsset$focalPoint(
      this._res);

  TRes _res;

  call({double? x, double? y, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$facetValues {
  Query$SearchProducts$search$facetValues(
      {required this.count,
      required this.facetValue,
      required this.$__typename});

  @override
  factory Query$SearchProducts$search$facetValues.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$facetValuesFromJson(json);

  final int count;

  final Query$SearchProducts$search$facetValues$facetValue facetValue;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$facetValuesToJson(this);
  int get hashCode {
    final l$count = count;
    final l$facetValue = facetValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$facetValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$facetValues) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$facetValue = facetValue;
    final lOther$facetValue = other.facetValue;
    if (l$facetValue != lOther$facetValue) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$facetValues
    on Query$SearchProducts$search$facetValues {
  CopyWith$Query$SearchProducts$search$facetValues<
          Query$SearchProducts$search$facetValues>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$facetValues(this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$facetValues<TRes> {
  factory CopyWith$Query$SearchProducts$search$facetValues(
          Query$SearchProducts$search$facetValues instance,
          TRes Function(Query$SearchProducts$search$facetValues) then) =
      _CopyWithImpl$Query$SearchProducts$search$facetValues;

  factory CopyWith$Query$SearchProducts$search$facetValues.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$facetValues;

  TRes call(
      {int? count,
      Query$SearchProducts$search$facetValues$facetValue? facetValue,
      String? $__typename});
  CopyWith$Query$SearchProducts$search$facetValues$facetValue<TRes>
      get facetValue;
}

class _CopyWithImpl$Query$SearchProducts$search$facetValues<TRes>
    implements CopyWith$Query$SearchProducts$search$facetValues<TRes> {
  _CopyWithImpl$Query$SearchProducts$search$facetValues(
      this._instance, this._then);

  final Query$SearchProducts$search$facetValues _instance;

  final TRes Function(Query$SearchProducts$search$facetValues) _then;

  static const _undefined = {};

  TRes call(
          {Object? count = _undefined,
          Object? facetValue = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$facetValues(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          facetValue: facetValue == _undefined || facetValue == null
              ? _instance.facetValue
              : (facetValue
                  as Query$SearchProducts$search$facetValues$facetValue),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchProducts$search$facetValues$facetValue<TRes>
      get facetValue {
    final local$facetValue = _instance.facetValue;
    return CopyWith$Query$SearchProducts$search$facetValues$facetValue(
        local$facetValue, (e) => call(facetValue: e));
  }
}

class _CopyWithStubImpl$Query$SearchProducts$search$facetValues<TRes>
    implements CopyWith$Query$SearchProducts$search$facetValues<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$facetValues(this._res);

  TRes _res;

  call(
          {int? count,
          Query$SearchProducts$search$facetValues$facetValue? facetValue,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchProducts$search$facetValues$facetValue<TRes>
      get facetValue =>
          CopyWith$Query$SearchProducts$search$facetValues$facetValue.stub(
              _res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$facetValues$facetValue {
  Query$SearchProducts$search$facetValues$facetValue(
      {required this.id,
      required this.name,
      required this.facet,
      required this.$__typename});

  @override
  factory Query$SearchProducts$search$facetValues$facetValue.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$facetValues$facetValueFromJson(json);

  final String id;

  final String name;

  final Query$SearchProducts$search$facetValues$facetValue$facet facet;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$facetValues$facetValueToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$facet = facet;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$facet, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$facetValues$facetValue) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$facet = facet;
    final lOther$facet = other.facet;
    if (l$facet != lOther$facet) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$facetValues$facetValue
    on Query$SearchProducts$search$facetValues$facetValue {
  CopyWith$Query$SearchProducts$search$facetValues$facetValue<
          Query$SearchProducts$search$facetValues$facetValue>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$facetValues$facetValue(
              this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$facetValues$facetValue<
    TRes> {
  factory CopyWith$Query$SearchProducts$search$facetValues$facetValue(
          Query$SearchProducts$search$facetValues$facetValue instance,
          TRes Function(Query$SearchProducts$search$facetValues$facetValue)
              then) =
      _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue;

  factory CopyWith$Query$SearchProducts$search$facetValues$facetValue.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue;

  TRes call(
      {String? id,
      String? name,
      Query$SearchProducts$search$facetValues$facetValue$facet? facet,
      String? $__typename});
  CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<TRes>
      get facet;
}

class _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue<TRes>
    implements
        CopyWith$Query$SearchProducts$search$facetValues$facetValue<TRes> {
  _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue(
      this._instance, this._then);

  final Query$SearchProducts$search$facetValues$facetValue _instance;

  final TRes Function(Query$SearchProducts$search$facetValues$facetValue) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? facet = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$facetValues$facetValue(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          facet: facet == _undefined || facet == null
              ? _instance.facet
              : (facet
                  as Query$SearchProducts$search$facetValues$facetValue$facet),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<TRes>
      get facet {
    final local$facet = _instance.facet;
    return CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet(
        local$facet, (e) => call(facet: e));
  }
}

class _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue<TRes>
    implements
        CopyWith$Query$SearchProducts$search$facetValues$facetValue<TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue(
      this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          Query$SearchProducts$search$facetValues$facetValue$facet? facet,
          String? $__typename}) =>
      _res;
  CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<TRes>
      get facet =>
          CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$SearchProducts$search$facetValues$facetValue$facet {
  Query$SearchProducts$search$facetValues$facetValue$facet(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$SearchProducts$search$facetValues$facetValue$facet.fromJson(
          Map<String, dynamic> json) =>
      _$Query$SearchProducts$search$facetValues$facetValue$facetFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$SearchProducts$search$facetValues$facetValue$facetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$SearchProducts$search$facetValues$facetValue$facet) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$SearchProducts$search$facetValues$facetValue$facet
    on Query$SearchProducts$search$facetValues$facetValue$facet {
  CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<
          Query$SearchProducts$search$facetValues$facetValue$facet>
      get copyWith =>
          CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet(
              this, (i) => i);
}

abstract class CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<
    TRes> {
  factory CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet(
          Query$SearchProducts$search$facetValues$facetValue$facet instance,
          TRes Function(
                  Query$SearchProducts$search$facetValues$facetValue$facet)
              then) =
      _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue$facet;

  factory CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue$facet;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue$facet<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<
            TRes> {
  _CopyWithImpl$Query$SearchProducts$search$facetValues$facetValue$facet(
      this._instance, this._then);

  final Query$SearchProducts$search$facetValues$facetValue$facet _instance;

  final TRes Function(Query$SearchProducts$search$facetValues$facetValue$facet)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$SearchProducts$search$facetValues$facetValue$facet(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue$facet<
        TRes>
    implements
        CopyWith$Query$SearchProducts$search$facetValues$facetValue$facet<
            TRes> {
  _CopyWithStubImpl$Query$SearchProducts$search$facetValues$facetValue$facet(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$GetProductDetail {
  Variables$Query$GetProductDetail({required this.slug});

  @override
  factory Variables$Query$GetProductDetail.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$GetProductDetailFromJson(json);

  final String slug;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$GetProductDetailToJson(this);
  int get hashCode {
    final l$slug = slug;
    return Object.hashAll([l$slug]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetProductDetail) ||
        runtimeType != other.runtimeType) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    return true;
  }

  CopyWith$Variables$Query$GetProductDetail<Variables$Query$GetProductDetail>
      get copyWith => CopyWith$Variables$Query$GetProductDetail(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetProductDetail<TRes> {
  factory CopyWith$Variables$Query$GetProductDetail(
          Variables$Query$GetProductDetail instance,
          TRes Function(Variables$Query$GetProductDetail) then) =
      _CopyWithImpl$Variables$Query$GetProductDetail;

  factory CopyWith$Variables$Query$GetProductDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProductDetail;

  TRes call({String? slug});
}

class _CopyWithImpl$Variables$Query$GetProductDetail<TRes>
    implements CopyWith$Variables$Query$GetProductDetail<TRes> {
  _CopyWithImpl$Variables$Query$GetProductDetail(this._instance, this._then);

  final Variables$Query$GetProductDetail _instance;

  final TRes Function(Variables$Query$GetProductDetail) _then;

  static const _undefined = {};

  TRes call({Object? slug = _undefined}) =>
      _then(Variables$Query$GetProductDetail(
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String)));
}

class _CopyWithStubImpl$Variables$Query$GetProductDetail<TRes>
    implements CopyWith$Variables$Query$GetProductDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProductDetail(this._res);

  TRes _res;

  call({String? slug}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail {
  Query$GetProductDetail({this.product, required this.$__typename});

  @override
  factory Query$GetProductDetail.fromJson(Map<String, dynamic> json) =>
      _$Query$GetProductDetailFromJson(json);

  final Query$GetProductDetail$product? product;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetProductDetailToJson(this);
  int get hashCode {
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([l$product, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail) || runtimeType != other.runtimeType)
      return false;
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail on Query$GetProductDetail {
  CopyWith$Query$GetProductDetail<Query$GetProductDetail> get copyWith =>
      CopyWith$Query$GetProductDetail(this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail<TRes> {
  factory CopyWith$Query$GetProductDetail(Query$GetProductDetail instance,
          TRes Function(Query$GetProductDetail) then) =
      _CopyWithImpl$Query$GetProductDetail;

  factory CopyWith$Query$GetProductDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail;

  TRes call({Query$GetProductDetail$product? product, String? $__typename});
  CopyWith$Query$GetProductDetail$product<TRes> get product;
}

class _CopyWithImpl$Query$GetProductDetail<TRes>
    implements CopyWith$Query$GetProductDetail<TRes> {
  _CopyWithImpl$Query$GetProductDetail(this._instance, this._then);

  final Query$GetProductDetail _instance;

  final TRes Function(Query$GetProductDetail) _then;

  static const _undefined = {};

  TRes call({Object? product = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail(
          product: product == _undefined
              ? _instance.product
              : (product as Query$GetProductDetail$product?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetProductDetail$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$GetProductDetail$product.stub(_then(_instance))
        : CopyWith$Query$GetProductDetail$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Query$GetProductDetail<TRes>
    implements CopyWith$Query$GetProductDetail<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail(this._res);

  TRes _res;

  call({Query$GetProductDetail$product? product, String? $__typename}) => _res;
  CopyWith$Query$GetProductDetail$product<TRes> get product =>
      CopyWith$Query$GetProductDetail$product.stub(_res);
}

const documentNodeQueryGetProductDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetProductDetail'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'slug')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'product'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'slug'),
                  value: VariableNode(name: NameNode(value: 'slug')))
            ],
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
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'variants'),
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
                        name: NameNode(value: 'options'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'price'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'priceWithTax'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'currencyCode'),
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
                        name: NameNode(value: 'assets'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
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
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'sku'),
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
                    FragmentSpreadNode(
                        name: NameNode(value: 'Asset'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'assets'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'Asset'), directives: []),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: 'collections'),
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
                        name: NameNode(value: 'slug'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'breadcrumbs'),
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
  fragmentDefinitionAsset,
]);
Query$GetProductDetail _parserFn$Query$GetProductDetail(
        Map<String, dynamic> data) =>
    Query$GetProductDetail.fromJson(data);

class Options$Query$GetProductDetail
    extends graphql.QueryOptions<Query$GetProductDetail> {
  Options$Query$GetProductDetail(
      {String? operationName,
      required Variables$Query$GetProductDetail variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetProductDetail,
            parserFn: _parserFn$Query$GetProductDetail);
}

class WatchOptions$Query$GetProductDetail
    extends graphql.WatchQueryOptions<Query$GetProductDetail> {
  WatchOptions$Query$GetProductDetail(
      {String? operationName,
      required Variables$Query$GetProductDetail variables,
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
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeQueryGetProductDetail,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetProductDetail);
}

class FetchMoreOptions$Query$GetProductDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetProductDetail(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$GetProductDetail variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryGetProductDetail);
}

extension ClientExtension$Query$GetProductDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetProductDetail>> query$GetProductDetail(
          Options$Query$GetProductDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetProductDetail> watchQuery$GetProductDetail(
          WatchOptions$Query$GetProductDetail options) =>
      this.watchQuery(options);
  void writeQuery$GetProductDetail(
          {required Query$GetProductDetail data,
          required Variables$Query$GetProductDetail variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetProductDetail),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetProductDetail? readQuery$GetProductDetail(
      {required Variables$Query$GetProductDetail variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetProductDetail),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$GetProductDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetProductDetail>
    useQuery$GetProductDetail(Options$Query$GetProductDetail options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetProductDetail> useWatchQuery$GetProductDetail(
        WatchOptions$Query$GetProductDetail options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetProductDetail$Widget
    extends graphql_flutter.Query<Query$GetProductDetail> {
  Query$GetProductDetail$Widget(
      {widgets.Key? key,
      required Options$Query$GetProductDetail options,
      required graphql_flutter.QueryBuilder<Query$GetProductDetail> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product {
  Query$GetProductDetail$product(
      {required this.id,
      required this.name,
      required this.description,
      required this.variants,
      this.featuredAsset,
      required this.assets,
      required this.collections,
      required this.$__typename});

  @override
  factory Query$GetProductDetail$product.fromJson(Map<String, dynamic> json) =>
      _$Query$GetProductDetail$productFromJson(json);

  final String id;

  final String name;

  final String description;

  final List<Query$GetProductDetail$product$variants> variants;

  final Fragment$Asset? featuredAsset;

  final List<Fragment$Asset> assets;

  final List<Query$GetProductDetail$product$collections> collections;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetProductDetail$productToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$variants = variants;
    final l$featuredAsset = featuredAsset;
    final l$assets = assets;
    final l$collections = collections;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      Object.hashAll(l$variants.map((v) => v)),
      l$featuredAsset,
      Object.hashAll(l$assets.map((v) => v)),
      Object.hashAll(l$collections.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail$product) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$variants = variants;
    final lOther$variants = other.variants;
    if (l$variants.length != lOther$variants.length) return false;
    for (int i = 0; i < l$variants.length; i++) {
      final l$variants$entry = l$variants[i];
      final lOther$variants$entry = lOther$variants[i];
      if (l$variants$entry != lOther$variants$entry) return false;
    }

    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$assets = assets;
    final lOther$assets = other.assets;
    if (l$assets.length != lOther$assets.length) return false;
    for (int i = 0; i < l$assets.length; i++) {
      final l$assets$entry = l$assets[i];
      final lOther$assets$entry = lOther$assets[i];
      if (l$assets$entry != lOther$assets$entry) return false;
    }

    final l$collections = collections;
    final lOther$collections = other.collections;
    if (l$collections.length != lOther$collections.length) return false;
    for (int i = 0; i < l$collections.length; i++) {
      final l$collections$entry = l$collections[i];
      final lOther$collections$entry = lOther$collections[i];
      if (l$collections$entry != lOther$collections$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail$product
    on Query$GetProductDetail$product {
  CopyWith$Query$GetProductDetail$product<Query$GetProductDetail$product>
      get copyWith => CopyWith$Query$GetProductDetail$product(this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product<TRes> {
  factory CopyWith$Query$GetProductDetail$product(
          Query$GetProductDetail$product instance,
          TRes Function(Query$GetProductDetail$product) then) =
      _CopyWithImpl$Query$GetProductDetail$product;

  factory CopyWith$Query$GetProductDetail$product.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product;

  TRes call(
      {String? id,
      String? name,
      String? description,
      List<Query$GetProductDetail$product$variants>? variants,
      Fragment$Asset? featuredAsset,
      List<Fragment$Asset>? assets,
      List<Query$GetProductDetail$product$collections>? collections,
      String? $__typename});
  TRes variants(
      Iterable<Query$GetProductDetail$product$variants> Function(
              Iterable<
                  CopyWith$Query$GetProductDetail$product$variants<
                      Query$GetProductDetail$product$variants>>)
          _fn);
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  TRes assets(
      Iterable<Fragment$Asset> Function(
              Iterable<CopyWith$Fragment$Asset<Fragment$Asset>>)
          _fn);
  TRes collections(
      Iterable<Query$GetProductDetail$product$collections> Function(
              Iterable<
                  CopyWith$Query$GetProductDetail$product$collections<
                      Query$GetProductDetail$product$collections>>)
          _fn);
}

class _CopyWithImpl$Query$GetProductDetail$product<TRes>
    implements CopyWith$Query$GetProductDetail$product<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product(this._instance, this._then);

  final Query$GetProductDetail$product _instance;

  final TRes Function(Query$GetProductDetail$product) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? variants = _undefined,
          Object? featuredAsset = _undefined,
          Object? assets = _undefined,
          Object? collections = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          variants: variants == _undefined || variants == null
              ? _instance.variants
              : (variants as List<Query$GetProductDetail$product$variants>),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset as Fragment$Asset?),
          assets: assets == _undefined || assets == null
              ? _instance.assets
              : (assets as List<Fragment$Asset>),
          collections: collections == _undefined || collections == null
              ? _instance.collections
              : (collections
                  as List<Query$GetProductDetail$product$collections>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes variants(
          Iterable<Query$GetProductDetail$product$variants> Function(
                  Iterable<
                      CopyWith$Query$GetProductDetail$product$variants<
                          Query$GetProductDetail$product$variants>>)
              _fn) =>
      call(
          variants: _fn(_instance.variants.map((e) =>
              CopyWith$Query$GetProductDetail$product$variants(
                  e, (i) => i))).toList());
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  TRes assets(
          Iterable<Fragment$Asset> Function(
                  Iterable<CopyWith$Fragment$Asset<Fragment$Asset>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets
              .map((e) => CopyWith$Fragment$Asset(e, (i) => i))).toList());
  TRes collections(
          Iterable<Query$GetProductDetail$product$collections> Function(
                  Iterable<
                      CopyWith$Query$GetProductDetail$product$collections<
                          Query$GetProductDetail$product$collections>>)
              _fn) =>
      call(
          collections: _fn(_instance.collections.map((e) =>
              CopyWith$Query$GetProductDetail$product$collections(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetProductDetail$product<TRes>
    implements CopyWith$Query$GetProductDetail$product<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? description,
          List<Query$GetProductDetail$product$variants>? variants,
          Fragment$Asset? featuredAsset,
          List<Fragment$Asset>? assets,
          List<Query$GetProductDetail$product$collections>? collections,
          String? $__typename}) =>
      _res;
  variants(_fn) => _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  assets(_fn) => _res;
  collections(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product$variants {
  Query$GetProductDetail$product$variants(
      {required this.id,
      required this.name,
      required this.options,
      required this.price,
      required this.priceWithTax,
      required this.currencyCode,
      required this.languageCode,
      required this.assets,
      required this.sku,
      required this.$__typename});

  @override
  factory Query$GetProductDetail$product$variants.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetProductDetail$product$variantsFromJson(json);

  final String id;

  final String name;

  final List<Query$GetProductDetail$product$variants$options> options;

  final int price;

  final int priceWithTax;

  @JsonKey(unknownEnumValue: Enum$CurrencyCode.$unknown)
  final Enum$CurrencyCode currencyCode;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  final List<Query$GetProductDetail$product$variants$assets> assets;

  final String sku;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetProductDetail$product$variantsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$options = options;
    final l$price = price;
    final l$priceWithTax = priceWithTax;
    final l$currencyCode = currencyCode;
    final l$languageCode = languageCode;
    final l$assets = assets;
    final l$sku = sku;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$options.map((v) => v)),
      l$price,
      l$priceWithTax,
      l$currencyCode,
      l$languageCode,
      Object.hashAll(l$assets.map((v) => v)),
      l$sku,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail$product$variants) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) return false;
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) return false;
    }

    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$assets = assets;
    final lOther$assets = other.assets;
    if (l$assets.length != lOther$assets.length) return false;
    for (int i = 0; i < l$assets.length; i++) {
      final l$assets$entry = l$assets[i];
      final lOther$assets$entry = lOther$assets[i];
      if (l$assets$entry != lOther$assets$entry) return false;
    }

    final l$sku = sku;
    final lOther$sku = other.sku;
    if (l$sku != lOther$sku) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail$product$variants
    on Query$GetProductDetail$product$variants {
  CopyWith$Query$GetProductDetail$product$variants<
          Query$GetProductDetail$product$variants>
      get copyWith =>
          CopyWith$Query$GetProductDetail$product$variants(this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product$variants<TRes> {
  factory CopyWith$Query$GetProductDetail$product$variants(
          Query$GetProductDetail$product$variants instance,
          TRes Function(Query$GetProductDetail$product$variants) then) =
      _CopyWithImpl$Query$GetProductDetail$product$variants;

  factory CopyWith$Query$GetProductDetail$product$variants.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product$variants;

  TRes call(
      {String? id,
      String? name,
      List<Query$GetProductDetail$product$variants$options>? options,
      int? price,
      int? priceWithTax,
      Enum$CurrencyCode? currencyCode,
      Enum$LanguageCode? languageCode,
      List<Query$GetProductDetail$product$variants$assets>? assets,
      String? sku,
      String? $__typename});
  TRes options(
      Iterable<Query$GetProductDetail$product$variants$options> Function(
              Iterable<
                  CopyWith$Query$GetProductDetail$product$variants$options<
                      Query$GetProductDetail$product$variants$options>>)
          _fn);
  TRes assets(
      Iterable<Query$GetProductDetail$product$variants$assets> Function(
              Iterable<
                  CopyWith$Query$GetProductDetail$product$variants$assets<
                      Query$GetProductDetail$product$variants$assets>>)
          _fn);
}

class _CopyWithImpl$Query$GetProductDetail$product$variants<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product$variants(
      this._instance, this._then);

  final Query$GetProductDetail$product$variants _instance;

  final TRes Function(Query$GetProductDetail$product$variants) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? options = _undefined,
          Object? price = _undefined,
          Object? priceWithTax = _undefined,
          Object? currencyCode = _undefined,
          Object? languageCode = _undefined,
          Object? assets = _undefined,
          Object? sku = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product$variants(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          options: options == _undefined || options == null
              ? _instance.options
              : (options
                  as List<Query$GetProductDetail$product$variants$options>),
          price: price == _undefined || price == null
              ? _instance.price
              : (price as int),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          currencyCode: currencyCode == _undefined || currencyCode == null
              ? _instance.currencyCode
              : (currencyCode as Enum$CurrencyCode),
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          assets: assets == _undefined || assets == null
              ? _instance.assets
              : (assets
                  as List<Query$GetProductDetail$product$variants$assets>),
          sku: sku == _undefined || sku == null
              ? _instance.sku
              : (sku as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes options(
          Iterable<Query$GetProductDetail$product$variants$options> Function(
                  Iterable<
                      CopyWith$Query$GetProductDetail$product$variants$options<
                          Query$GetProductDetail$product$variants$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map((e) =>
              CopyWith$Query$GetProductDetail$product$variants$options(
                  e, (i) => i))).toList());
  TRes assets(
          Iterable<Query$GetProductDetail$product$variants$assets> Function(
                  Iterable<
                      CopyWith$Query$GetProductDetail$product$variants$assets<
                          Query$GetProductDetail$product$variants$assets>>)
              _fn) =>
      call(
          assets: _fn(_instance.assets.map((e) =>
              CopyWith$Query$GetProductDetail$product$variants$assets(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetProductDetail$product$variants<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product$variants(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          List<Query$GetProductDetail$product$variants$options>? options,
          int? price,
          int? priceWithTax,
          Enum$CurrencyCode? currencyCode,
          Enum$LanguageCode? languageCode,
          List<Query$GetProductDetail$product$variants$assets>? assets,
          String? sku,
          String? $__typename}) =>
      _res;
  options(_fn) => _res;
  assets(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product$variants$options {
  Query$GetProductDetail$product$variants$options(
      {required this.code, required this.name, required this.$__typename});

  @override
  factory Query$GetProductDetail$product$variants$options.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetProductDetail$product$variants$optionsFromJson(json);

  final String code;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetProductDetail$product$variants$optionsToJson(this);
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail$product$variants$options) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail$product$variants$options
    on Query$GetProductDetail$product$variants$options {
  CopyWith$Query$GetProductDetail$product$variants$options<
          Query$GetProductDetail$product$variants$options>
      get copyWith => CopyWith$Query$GetProductDetail$product$variants$options(
          this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product$variants$options<TRes> {
  factory CopyWith$Query$GetProductDetail$product$variants$options(
          Query$GetProductDetail$product$variants$options instance,
          TRes Function(Query$GetProductDetail$product$variants$options) then) =
      _CopyWithImpl$Query$GetProductDetail$product$variants$options;

  factory CopyWith$Query$GetProductDetail$product$variants$options.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product$variants$options;

  TRes call({String? code, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetProductDetail$product$variants$options<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants$options<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product$variants$options(
      this._instance, this._then);

  final Query$GetProductDetail$product$variants$options _instance;

  final TRes Function(Query$GetProductDetail$product$variants$options) _then;

  static const _undefined = {};

  TRes call(
          {Object? code = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product$variants$options(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetProductDetail$product$variants$options<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants$options<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product$variants$options(this._res);

  TRes _res;

  call({String? code, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product$variants$assets {
  Query$GetProductDetail$product$variants$assets(
      {required this.name, required this.preview, required this.$__typename});

  @override
  factory Query$GetProductDetail$product$variants$assets.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetProductDetail$product$variants$assetsFromJson(json);

  final String name;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetProductDetail$product$variants$assetsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail$product$variants$assets) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail$product$variants$assets
    on Query$GetProductDetail$product$variants$assets {
  CopyWith$Query$GetProductDetail$product$variants$assets<
          Query$GetProductDetail$product$variants$assets>
      get copyWith => CopyWith$Query$GetProductDetail$product$variants$assets(
          this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product$variants$assets<TRes> {
  factory CopyWith$Query$GetProductDetail$product$variants$assets(
          Query$GetProductDetail$product$variants$assets instance,
          TRes Function(Query$GetProductDetail$product$variants$assets) then) =
      _CopyWithImpl$Query$GetProductDetail$product$variants$assets;

  factory CopyWith$Query$GetProductDetail$product$variants$assets.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product$variants$assets;

  TRes call({String? name, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetProductDetail$product$variants$assets<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants$assets<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product$variants$assets(
      this._instance, this._then);

  final Query$GetProductDetail$product$variants$assets _instance;

  final TRes Function(Query$GetProductDetail$product$variants$assets) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product$variants$assets(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetProductDetail$product$variants$assets<TRes>
    implements CopyWith$Query$GetProductDetail$product$variants$assets<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product$variants$assets(this._res);

  TRes _res;

  call({String? name, String? preview, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product$collections {
  Query$GetProductDetail$product$collections(
      {required this.id,
      required this.slug,
      required this.breadcrumbs,
      required this.$__typename});

  @override
  factory Query$GetProductDetail$product$collections.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetProductDetail$product$collectionsFromJson(json);

  final String id;

  final String slug;

  final List<Query$GetProductDetail$product$collections$breadcrumbs>
      breadcrumbs;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetProductDetail$product$collectionsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$slug = slug;
    final l$breadcrumbs = breadcrumbs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$slug,
      Object.hashAll(l$breadcrumbs.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetProductDetail$product$collections) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$breadcrumbs = breadcrumbs;
    final lOther$breadcrumbs = other.breadcrumbs;
    if (l$breadcrumbs.length != lOther$breadcrumbs.length) return false;
    for (int i = 0; i < l$breadcrumbs.length; i++) {
      final l$breadcrumbs$entry = l$breadcrumbs[i];
      final lOther$breadcrumbs$entry = lOther$breadcrumbs[i];
      if (l$breadcrumbs$entry != lOther$breadcrumbs$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetProductDetail$product$collections
    on Query$GetProductDetail$product$collections {
  CopyWith$Query$GetProductDetail$product$collections<
          Query$GetProductDetail$product$collections>
      get copyWith =>
          CopyWith$Query$GetProductDetail$product$collections(this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product$collections<TRes> {
  factory CopyWith$Query$GetProductDetail$product$collections(
          Query$GetProductDetail$product$collections instance,
          TRes Function(Query$GetProductDetail$product$collections) then) =
      _CopyWithImpl$Query$GetProductDetail$product$collections;

  factory CopyWith$Query$GetProductDetail$product$collections.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product$collections;

  TRes call(
      {String? id,
      String? slug,
      List<Query$GetProductDetail$product$collections$breadcrumbs>? breadcrumbs,
      String? $__typename});
  TRes breadcrumbs(
      Iterable<Query$GetProductDetail$product$collections$breadcrumbs> Function(
              Iterable<
                  CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<
                      Query$GetProductDetail$product$collections$breadcrumbs>>)
          _fn);
}

class _CopyWithImpl$Query$GetProductDetail$product$collections<TRes>
    implements CopyWith$Query$GetProductDetail$product$collections<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product$collections(
      this._instance, this._then);

  final Query$GetProductDetail$product$collections _instance;

  final TRes Function(Query$GetProductDetail$product$collections) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? slug = _undefined,
          Object? breadcrumbs = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product$collections(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          breadcrumbs: breadcrumbs == _undefined || breadcrumbs == null
              ? _instance.breadcrumbs
              : (breadcrumbs as List<
                  Query$GetProductDetail$product$collections$breadcrumbs>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes breadcrumbs(
          Iterable<Query$GetProductDetail$product$collections$breadcrumbs> Function(
                  Iterable<
                      CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<
                          Query$GetProductDetail$product$collections$breadcrumbs>>)
              _fn) =>
      call(
          breadcrumbs: _fn(_instance.breadcrumbs.map((e) =>
              CopyWith$Query$GetProductDetail$product$collections$breadcrumbs(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetProductDetail$product$collections<TRes>
    implements CopyWith$Query$GetProductDetail$product$collections<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product$collections(this._res);

  TRes _res;

  call(
          {String? id,
          String? slug,
          List<Query$GetProductDetail$product$collections$breadcrumbs>?
              breadcrumbs,
          String? $__typename}) =>
      _res;
  breadcrumbs(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetProductDetail$product$collections$breadcrumbs {
  Query$GetProductDetail$product$collections$breadcrumbs(
      {required this.id,
      required this.name,
      required this.slug,
      required this.$__typename});

  @override
  factory Query$GetProductDetail$product$collections$breadcrumbs.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetProductDetail$product$collections$breadcrumbsFromJson(json);

  final String id;

  final String name;

  final String slug;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetProductDetail$product$collections$breadcrumbsToJson(this);
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
    if (!(other is Query$GetProductDetail$product$collections$breadcrumbs) ||
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

extension UtilityExtension$Query$GetProductDetail$product$collections$breadcrumbs
    on Query$GetProductDetail$product$collections$breadcrumbs {
  CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<
          Query$GetProductDetail$product$collections$breadcrumbs>
      get copyWith =>
          CopyWith$Query$GetProductDetail$product$collections$breadcrumbs(
              this, (i) => i);
}

abstract class CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<
    TRes> {
  factory CopyWith$Query$GetProductDetail$product$collections$breadcrumbs(
          Query$GetProductDetail$product$collections$breadcrumbs instance,
          TRes Function(Query$GetProductDetail$product$collections$breadcrumbs)
              then) =
      _CopyWithImpl$Query$GetProductDetail$product$collections$breadcrumbs;

  factory CopyWith$Query$GetProductDetail$product$collections$breadcrumbs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetProductDetail$product$collections$breadcrumbs;

  TRes call({String? id, String? name, String? slug, String? $__typename});
}

class _CopyWithImpl$Query$GetProductDetail$product$collections$breadcrumbs<TRes>
    implements
        CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<TRes> {
  _CopyWithImpl$Query$GetProductDetail$product$collections$breadcrumbs(
      this._instance, this._then);

  final Query$GetProductDetail$product$collections$breadcrumbs _instance;

  final TRes Function(Query$GetProductDetail$product$collections$breadcrumbs)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetProductDetail$product$collections$breadcrumbs(
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

class _CopyWithStubImpl$Query$GetProductDetail$product$collections$breadcrumbs<
        TRes>
    implements
        CopyWith$Query$GetProductDetail$product$collections$breadcrumbs<TRes> {
  _CopyWithStubImpl$Query$GetProductDetail$product$collections$breadcrumbs(
      this._res);

  TRes _res;

  call({String? id, String? name, String? slug, String? $__typename}) => _res;
}
