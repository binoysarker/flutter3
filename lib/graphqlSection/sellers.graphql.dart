import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'sellers.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers {
  Query$GetTopSellers({required this.search, required this.$__typename});

  @override
  factory Query$GetTopSellers.fromJson(Map<String, dynamic> json) =>
      _$Query$GetTopSellersFromJson(json);

  final Query$GetTopSellers$search search;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetTopSellersToJson(this);
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([l$search, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$GetTopSellers on Query$GetTopSellers {
  CopyWith$Query$GetTopSellers<Query$GetTopSellers> get copyWith =>
      CopyWith$Query$GetTopSellers(this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers<TRes> {
  factory CopyWith$Query$GetTopSellers(Query$GetTopSellers instance,
          TRes Function(Query$GetTopSellers) then) =
      _CopyWithImpl$Query$GetTopSellers;

  factory CopyWith$Query$GetTopSellers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers;

  TRes call({Query$GetTopSellers$search? search, String? $__typename});
  CopyWith$Query$GetTopSellers$search<TRes> get search;
}

class _CopyWithImpl$Query$GetTopSellers<TRes>
    implements CopyWith$Query$GetTopSellers<TRes> {
  _CopyWithImpl$Query$GetTopSellers(this._instance, this._then);

  final Query$GetTopSellers _instance;

  final TRes Function(Query$GetTopSellers) _then;

  static const _undefined = {};

  TRes call({Object? search = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetTopSellers(
          search: search == _undefined || search == null
              ? _instance.search
              : (search as Query$GetTopSellers$search),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetTopSellers$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$GetTopSellers$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$GetTopSellers<TRes>
    implements CopyWith$Query$GetTopSellers<TRes> {
  _CopyWithStubImpl$Query$GetTopSellers(this._res);

  TRes _res;

  call({Query$GetTopSellers$search? search, String? $__typename}) => _res;
  CopyWith$Query$GetTopSellers$search<TRes> get search =>
      CopyWith$Query$GetTopSellers$search.stub(_res);
}

const documentNodeQueryGetTopSellers = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTopSellers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'search'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'take'),
                        value: IntValueNode(value: '8')),
                    ObjectFieldNode(
                        name: NameNode(value: 'groupByProduct'),
                        value: BooleanValueNode(value: true)),
                    ObjectFieldNode(
                        name: NameNode(value: 'sort'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'price'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'ASC')))
                        ]))
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
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
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
                        name: NameNode(value: 'productName'),
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
Query$GetTopSellers _parserFn$Query$GetTopSellers(Map<String, dynamic> data) =>
    Query$GetTopSellers.fromJson(data);

class Options$Query$GetTopSellers
    extends graphql.QueryOptions<Query$GetTopSellers> {
  Options$Query$GetTopSellers(
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
            document: documentNodeQueryGetTopSellers,
            parserFn: _parserFn$Query$GetTopSellers);
}

class WatchOptions$Query$GetTopSellers
    extends graphql.WatchQueryOptions<Query$GetTopSellers> {
  WatchOptions$Query$GetTopSellers(
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
            document: documentNodeQueryGetTopSellers,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetTopSellers);
}

class FetchMoreOptions$Query$GetTopSellers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopSellers(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery, document: documentNodeQueryGetTopSellers);
}

extension ClientExtension$Query$GetTopSellers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopSellers>> query$GetTopSellers(
          [Options$Query$GetTopSellers? options]) async =>
      await this.query(options ?? Options$Query$GetTopSellers());
  graphql.ObservableQuery<Query$GetTopSellers> watchQuery$GetTopSellers(
          [WatchOptions$Query$GetTopSellers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetTopSellers());
  void writeQuery$GetTopSellers(
          {required Query$GetTopSellers data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetTopSellers)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetTopSellers? readQuery$GetTopSellers({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetTopSellers)),
        optimistic: optimistic);
    return result == null ? null : Query$GetTopSellers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTopSellers> useQuery$GetTopSellers(
        [Options$Query$GetTopSellers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetTopSellers());
graphql.ObservableQuery<Query$GetTopSellers> useWatchQuery$GetTopSellers(
        [WatchOptions$Query$GetTopSellers? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetTopSellers());

class Query$GetTopSellers$Widget
    extends graphql_flutter.Query<Query$GetTopSellers> {
  Query$GetTopSellers$Widget(
      {widgets.Key? key,
      Options$Query$GetTopSellers? options,
      required graphql_flutter.QueryBuilder<Query$GetTopSellers> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetTopSellers(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers$search {
  Query$GetTopSellers$search({required this.items, required this.$__typename});

  @override
  factory Query$GetTopSellers$search.fromJson(Map<String, dynamic> json) =>
      _$Query$GetTopSellers$searchFromJson(json);

  final List<Query$GetTopSellers$search$items> items;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetTopSellers$searchToJson(this);
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$items.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers$search) ||
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

extension UtilityExtension$Query$GetTopSellers$search
    on Query$GetTopSellers$search {
  CopyWith$Query$GetTopSellers$search<Query$GetTopSellers$search>
      get copyWith => CopyWith$Query$GetTopSellers$search(this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers$search<TRes> {
  factory CopyWith$Query$GetTopSellers$search(
          Query$GetTopSellers$search instance,
          TRes Function(Query$GetTopSellers$search) then) =
      _CopyWithImpl$Query$GetTopSellers$search;

  factory CopyWith$Query$GetTopSellers$search.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers$search;

  TRes call(
      {List<Query$GetTopSellers$search$items>? items, String? $__typename});
  TRes items(
      Iterable<Query$GetTopSellers$search$items> Function(
              Iterable<
                  CopyWith$Query$GetTopSellers$search$items<
                      Query$GetTopSellers$search$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetTopSellers$search<TRes>
    implements CopyWith$Query$GetTopSellers$search<TRes> {
  _CopyWithImpl$Query$GetTopSellers$search(this._instance, this._then);

  final Query$GetTopSellers$search _instance;

  final TRes Function(Query$GetTopSellers$search) _then;

  static const _undefined = {};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetTopSellers$search(
          items: items == _undefined || items == null
              ? _instance.items
              : (items as List<Query$GetTopSellers$search$items>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Query$GetTopSellers$search$items> Function(
                  Iterable<
                      CopyWith$Query$GetTopSellers$search$items<
                          Query$GetTopSellers$search$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) =>
                  CopyWith$Query$GetTopSellers$search$items(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Query$GetTopSellers$search<TRes>
    implements CopyWith$Query$GetTopSellers$search<TRes> {
  _CopyWithStubImpl$Query$GetTopSellers$search(this._res);

  TRes _res;

  call({List<Query$GetTopSellers$search$items>? items, String? $__typename}) =>
      _res;
  items(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers$search$items {
  Query$GetTopSellers$search$items(
      {required this.productId,
      required this.slug,
      this.productAsset,
      required this.priceWithTax,
      required this.productName,
      required this.$__typename});

  @override
  factory Query$GetTopSellers$search$items.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetTopSellers$search$itemsFromJson(json);

  final String productId;

  final String slug;

  final Query$GetTopSellers$search$items$productAsset? productAsset;

  final Query$GetTopSellers$search$items$priceWithTax priceWithTax;

  final String productName;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetTopSellers$search$itemsToJson(this);
  int get hashCode {
    final l$productId = productId;
    final l$slug = slug;
    final l$productAsset = productAsset;
    final l$priceWithTax = priceWithTax;
    final l$productName = productName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productId,
      l$slug,
      l$productAsset,
      l$priceWithTax,
      l$productName,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers$search$items) ||
        runtimeType != other.runtimeType) return false;
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$productAsset = productAsset;
    final lOther$productAsset = other.productAsset;
    if (l$productAsset != lOther$productAsset) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$productName = productName;
    final lOther$productName = other.productName;
    if (l$productName != lOther$productName) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetTopSellers$search$items
    on Query$GetTopSellers$search$items {
  CopyWith$Query$GetTopSellers$search$items<Query$GetTopSellers$search$items>
      get copyWith => CopyWith$Query$GetTopSellers$search$items(this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers$search$items<TRes> {
  factory CopyWith$Query$GetTopSellers$search$items(
          Query$GetTopSellers$search$items instance,
          TRes Function(Query$GetTopSellers$search$items) then) =
      _CopyWithImpl$Query$GetTopSellers$search$items;

  factory CopyWith$Query$GetTopSellers$search$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers$search$items;

  TRes call(
      {String? productId,
      String? slug,
      Query$GetTopSellers$search$items$productAsset? productAsset,
      Query$GetTopSellers$search$items$priceWithTax? priceWithTax,
      String? productName,
      String? $__typename});
  CopyWith$Query$GetTopSellers$search$items$productAsset<TRes> get productAsset;
  CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes> get priceWithTax;
}

class _CopyWithImpl$Query$GetTopSellers$search$items<TRes>
    implements CopyWith$Query$GetTopSellers$search$items<TRes> {
  _CopyWithImpl$Query$GetTopSellers$search$items(this._instance, this._then);

  final Query$GetTopSellers$search$items _instance;

  final TRes Function(Query$GetTopSellers$search$items) _then;

  static const _undefined = {};

  TRes call(
          {Object? productId = _undefined,
          Object? slug = _undefined,
          Object? productAsset = _undefined,
          Object? priceWithTax = _undefined,
          Object? productName = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetTopSellers$search$items(
          productId: productId == _undefined || productId == null
              ? _instance.productId
              : (productId as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          productAsset: productAsset == _undefined
              ? _instance.productAsset
              : (productAsset
                  as Query$GetTopSellers$search$items$productAsset?),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as Query$GetTopSellers$search$items$priceWithTax),
          productName: productName == _undefined || productName == null
              ? _instance.productName
              : (productName as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetTopSellers$search$items$productAsset<TRes>
      get productAsset {
    final local$productAsset = _instance.productAsset;
    return local$productAsset == null
        ? CopyWith$Query$GetTopSellers$search$items$productAsset.stub(
            _then(_instance))
        : CopyWith$Query$GetTopSellers$search$items$productAsset(
            local$productAsset, (e) => call(productAsset: e));
  }

  CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes>
      get priceWithTax {
    final local$priceWithTax = _instance.priceWithTax;
    return CopyWith$Query$GetTopSellers$search$items$priceWithTax(
        local$priceWithTax, (e) => call(priceWithTax: e));
  }
}

class _CopyWithStubImpl$Query$GetTopSellers$search$items<TRes>
    implements CopyWith$Query$GetTopSellers$search$items<TRes> {
  _CopyWithStubImpl$Query$GetTopSellers$search$items(this._res);

  TRes _res;

  call(
          {String? productId,
          String? slug,
          Query$GetTopSellers$search$items$productAsset? productAsset,
          Query$GetTopSellers$search$items$priceWithTax? priceWithTax,
          String? productName,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetTopSellers$search$items$productAsset<TRes>
      get productAsset =>
          CopyWith$Query$GetTopSellers$search$items$productAsset.stub(_res);
  CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes>
      get priceWithTax =>
          CopyWith$Query$GetTopSellers$search$items$priceWithTax.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers$search$items$productAsset {
  Query$GetTopSellers$search$items$productAsset(
      {required this.id, required this.preview, required this.$__typename});

  @override
  factory Query$GetTopSellers$search$items$productAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetTopSellers$search$items$productAssetFromJson(json);

  final String id;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetTopSellers$search$items$productAssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers$search$items$productAsset) ||
        runtimeType != other.runtimeType) return false;
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

extension UtilityExtension$Query$GetTopSellers$search$items$productAsset
    on Query$GetTopSellers$search$items$productAsset {
  CopyWith$Query$GetTopSellers$search$items$productAsset<
          Query$GetTopSellers$search$items$productAsset>
      get copyWith => CopyWith$Query$GetTopSellers$search$items$productAsset(
          this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers$search$items$productAsset<TRes> {
  factory CopyWith$Query$GetTopSellers$search$items$productAsset(
          Query$GetTopSellers$search$items$productAsset instance,
          TRes Function(Query$GetTopSellers$search$items$productAsset) then) =
      _CopyWithImpl$Query$GetTopSellers$search$items$productAsset;

  factory CopyWith$Query$GetTopSellers$search$items$productAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers$search$items$productAsset;

  TRes call({String? id, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetTopSellers$search$items$productAsset<TRes>
    implements CopyWith$Query$GetTopSellers$search$items$productAsset<TRes> {
  _CopyWithImpl$Query$GetTopSellers$search$items$productAsset(
      this._instance, this._then);

  final Query$GetTopSellers$search$items$productAsset _instance;

  final TRes Function(Query$GetTopSellers$search$items$productAsset) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetTopSellers$search$items$productAsset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetTopSellers$search$items$productAsset<TRes>
    implements CopyWith$Query$GetTopSellers$search$items$productAsset<TRes> {
  _CopyWithStubImpl$Query$GetTopSellers$search$items$productAsset(this._res);

  TRes _res;

  call({String? id, String? preview, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers$search$items$priceWithTax {
  Query$GetTopSellers$search$items$priceWithTax({required this.$__typename});

  @override
  factory Query$GetTopSellers$search$items$priceWithTax.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "PriceRange":
        return Query$GetTopSellers$search$items$priceWithTax$$PriceRange
            .fromJson(json);
      default:
        return _$Query$GetTopSellers$search$items$priceWithTaxFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetTopSellers$search$items$priceWithTaxToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers$search$items$priceWithTax) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetTopSellers$search$items$priceWithTax
    on Query$GetTopSellers$search$items$priceWithTax {
  CopyWith$Query$GetTopSellers$search$items$priceWithTax<
          Query$GetTopSellers$search$items$priceWithTax>
      get copyWith => CopyWith$Query$GetTopSellers$search$items$priceWithTax(
          this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes> {
  factory CopyWith$Query$GetTopSellers$search$items$priceWithTax(
          Query$GetTopSellers$search$items$priceWithTax instance,
          TRes Function(Query$GetTopSellers$search$items$priceWithTax) then) =
      _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax;

  factory CopyWith$Query$GetTopSellers$search$items$priceWithTax.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax<TRes>
    implements CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes> {
  _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax(
      this._instance, this._then);

  final Query$GetTopSellers$search$items$priceWithTax _instance;

  final TRes Function(Query$GetTopSellers$search$items$priceWithTax) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetTopSellers$search$items$priceWithTax(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax<TRes>
    implements CopyWith$Query$GetTopSellers$search$items$priceWithTax<TRes> {
  _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetTopSellers$search$items$priceWithTax$$PriceRange
    implements Query$GetTopSellers$search$items$priceWithTax {
  Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
      {required this.$__typename, required this.min, required this.max});

  @override
  factory Query$GetTopSellers$search$items$priceWithTax$$PriceRange.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetTopSellers$search$items$priceWithTax$$PriceRangeFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final int min;

  final int max;

  Map<String, dynamic> toJson() =>
      _$Query$GetTopSellers$search$items$priceWithTax$$PriceRangeToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$min = min;
    final l$max = max;
    return Object.hashAll([l$$__typename, l$min, l$max]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetTopSellers$search$items$priceWithTax$$PriceRange) ||
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

extension UtilityExtension$Query$GetTopSellers$search$items$priceWithTax$$PriceRange
    on Query$GetTopSellers$search$items$priceWithTax$$PriceRange {
  CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
          Query$GetTopSellers$search$items$priceWithTax$$PriceRange>
      get copyWith =>
          CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
              this, (i) => i);
}

abstract class CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
    TRes> {
  factory CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
          Query$GetTopSellers$search$items$priceWithTax$$PriceRange instance,
          TRes Function(
                  Query$GetTopSellers$search$items$priceWithTax$$PriceRange)
              then) =
      _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange;

  factory CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange;

  TRes call({String? $__typename, int? min, int? max});
}

class _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
        TRes>
    implements
        CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
            TRes> {
  _CopyWithImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
      this._instance, this._then);

  final Query$GetTopSellers$search$items$priceWithTax$$PriceRange _instance;

  final TRes Function(Query$GetTopSellers$search$items$priceWithTax$$PriceRange)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? min = _undefined,
          Object? max = _undefined}) =>
      _then(Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          min: min == _undefined || min == null ? _instance.min : (min as int),
          max:
              max == _undefined || max == null ? _instance.max : (max as int)));
}

class _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
        TRes>
    implements
        CopyWith$Query$GetTopSellers$search$items$priceWithTax$$PriceRange<
            TRes> {
  _CopyWithStubImpl$Query$GetTopSellers$search$items$priceWithTax$$PriceRange(
      this._res);

  TRes _res;

  call({String? $__typename, int? min, int? max}) => _res;
}
