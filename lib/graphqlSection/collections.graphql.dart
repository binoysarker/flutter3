import 'cart_data.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'collections.graphql.g.dart';

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

  final Query$GetCollectionsByIdOrSlug$collection? collection;

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

  TRes call(
      {Query$GetCollectionsByIdOrSlug$collection? collection,
      String? $__typename});
  CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> get collection;
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
              : (collection as Query$GetCollectionsByIdOrSlug$collection?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> get collection {
    final local$collection = _instance.collection;
    return local$collection == null
        ? CopyWith$Query$GetCollectionsByIdOrSlug$collection.stub(
            _then(_instance))
        : CopyWith$Query$GetCollectionsByIdOrSlug$collection(
            local$collection, (e) => call(collection: e));
  }
}

class _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug<TRes> {
  _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug(this._res);

  TRes _res;

  call(
          {Query$GetCollectionsByIdOrSlug$collection? collection,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> get collection =>
      CopyWith$Query$GetCollectionsByIdOrSlug$collection.stub(_res);
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
                        name: NameNode(value: 'slug'),
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
                  name: NameNode(value: 'featuredAsset'),
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
class Query$GetCollectionsByIdOrSlug$collection {
  Query$GetCollectionsByIdOrSlug$collection(
      {required this.id,
      required this.name,
      required this.slug,
      this.parent,
      this.featuredAsset,
      required this.$__typename});

  @override
  factory Query$GetCollectionsByIdOrSlug$collection.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetCollectionsByIdOrSlug$collectionFromJson(json);

  final String id;

  final String name;

  final String slug;

  final Query$GetCollectionsByIdOrSlug$collection$parent? parent;

  final Query$GetCollectionsByIdOrSlug$collection$featuredAsset? featuredAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCollectionsByIdOrSlug$collectionToJson(this);
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
    if (!(other is Query$GetCollectionsByIdOrSlug$collection) ||
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

extension UtilityExtension$Query$GetCollectionsByIdOrSlug$collection
    on Query$GetCollectionsByIdOrSlug$collection {
  CopyWith$Query$GetCollectionsByIdOrSlug$collection<
          Query$GetCollectionsByIdOrSlug$collection>
      get copyWith =>
          CopyWith$Query$GetCollectionsByIdOrSlug$collection(this, (i) => i);
}

abstract class CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> {
  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection(
          Query$GetCollectionsByIdOrSlug$collection instance,
          TRes Function(Query$GetCollectionsByIdOrSlug$collection) then) =
      _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection;

  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection;

  TRes call(
      {String? id,
      String? name,
      String? slug,
      Query$GetCollectionsByIdOrSlug$collection$parent? parent,
      Query$GetCollectionsByIdOrSlug$collection$featuredAsset? featuredAsset,
      String? $__typename});
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> get parent;
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<TRes>
      get featuredAsset;
}

class _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> {
  _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection(
      this._instance, this._then);

  final Query$GetCollectionsByIdOrSlug$collection _instance;

  final TRes Function(Query$GetCollectionsByIdOrSlug$collection) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? parent = _undefined,
          Object? featuredAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCollectionsByIdOrSlug$collection(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          parent: parent == _undefined
              ? _instance.parent
              : (parent as Query$GetCollectionsByIdOrSlug$collection$parent?),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset
                  as Query$GetCollectionsByIdOrSlug$collection$featuredAsset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent.stub(
            _then(_instance))
        : CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent(
            local$parent, (e) => call(parent: e));
  }

  CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<TRes>
      get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset.stub(
            _then(_instance))
        : CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }
}

class _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug$collection<TRes> {
  _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? slug,
          Query$GetCollectionsByIdOrSlug$collection$parent? parent,
          Query$GetCollectionsByIdOrSlug$collection$featuredAsset?
              featuredAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> get parent =>
      CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent.stub(_res);
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<TRes>
      get featuredAsset =>
          CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset.stub(
              _res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetCollectionsByIdOrSlug$collection$parent {
  Query$GetCollectionsByIdOrSlug$collection$parent(
      {required this.id,
      required this.slug,
      required this.name,
      required this.$__typename});

  @override
  factory Query$GetCollectionsByIdOrSlug$collection$parent.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetCollectionsByIdOrSlug$collection$parentFromJson(json);

  final String id;

  final String slug;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCollectionsByIdOrSlug$collection$parentToJson(this);
  int get hashCode {
    final l$id = id;
    final l$slug = slug;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$slug, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCollectionsByIdOrSlug$collection$parent) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCollectionsByIdOrSlug$collection$parent
    on Query$GetCollectionsByIdOrSlug$collection$parent {
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<
          Query$GetCollectionsByIdOrSlug$collection$parent>
      get copyWith => CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent(
          this, (i) => i);
}

abstract class CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> {
  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent(
          Query$GetCollectionsByIdOrSlug$collection$parent instance,
          TRes Function(Query$GetCollectionsByIdOrSlug$collection$parent)
              then) =
      _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$parent;

  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$parent;

  TRes call({String? id, String? slug, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$parent<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> {
  _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$parent(
      this._instance, this._then);

  final Query$GetCollectionsByIdOrSlug$collection$parent _instance;

  final TRes Function(Query$GetCollectionsByIdOrSlug$collection$parent) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? slug = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCollectionsByIdOrSlug$collection$parent(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$parent<TRes>
    implements CopyWith$Query$GetCollectionsByIdOrSlug$collection$parent<TRes> {
  _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$parent(this._res);

  TRes _res;

  call({String? id, String? slug, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetCollectionsByIdOrSlug$collection$featuredAsset {
  Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
      {required this.id, required this.preview, required this.$__typename});

  @override
  factory Query$GetCollectionsByIdOrSlug$collection$featuredAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetCollectionsByIdOrSlug$collection$featuredAssetFromJson(json);

  final String id;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCollectionsByIdOrSlug$collection$featuredAssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCollectionsByIdOrSlug$collection$featuredAsset) ||
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

extension UtilityExtension$Query$GetCollectionsByIdOrSlug$collection$featuredAsset
    on Query$GetCollectionsByIdOrSlug$collection$featuredAsset {
  CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<
          Query$GetCollectionsByIdOrSlug$collection$featuredAsset>
      get copyWith =>
          CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
              this, (i) => i);
}

abstract class CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<
    TRes> {
  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
          Query$GetCollectionsByIdOrSlug$collection$featuredAsset instance,
          TRes Function(Query$GetCollectionsByIdOrSlug$collection$featuredAsset)
              then) =
      _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset;

  factory CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset;

  TRes call({String? id, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<TRes> {
  _CopyWithImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
      this._instance, this._then);

  final Query$GetCollectionsByIdOrSlug$collection$featuredAsset _instance;

  final TRes Function(Query$GetCollectionsByIdOrSlug$collection$featuredAsset)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetCollectionsByIdOrSlug$collection$featuredAsset<TRes> {
  _CopyWithStubImpl$Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
      this._res);

  TRes _res;

  call({String? id, String? preview, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$GetAllCollections {
  Variables$Query$GetAllCollections({this.input});

  @override
  factory Variables$Query$GetAllCollections.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$GetAllCollectionsFromJson(json);

  final Input$CollectionListOptions? input;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$GetAllCollectionsToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetAllCollections) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Query$GetAllCollections<Variables$Query$GetAllCollections>
      get copyWith =>
          CopyWith$Variables$Query$GetAllCollections(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetAllCollections<TRes> {
  factory CopyWith$Variables$Query$GetAllCollections(
          Variables$Query$GetAllCollections instance,
          TRes Function(Variables$Query$GetAllCollections) then) =
      _CopyWithImpl$Variables$Query$GetAllCollections;

  factory CopyWith$Variables$Query$GetAllCollections.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllCollections;

  TRes call({Input$CollectionListOptions? input});
}

class _CopyWithImpl$Variables$Query$GetAllCollections<TRes>
    implements CopyWith$Variables$Query$GetAllCollections<TRes> {
  _CopyWithImpl$Variables$Query$GetAllCollections(this._instance, this._then);

  final Variables$Query$GetAllCollections _instance;

  final TRes Function(Variables$Query$GetAllCollections) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$GetAllCollections(
          input: input == _undefined
              ? _instance.input
              : (input as Input$CollectionListOptions?)));
}

class _CopyWithStubImpl$Variables$Query$GetAllCollections<TRes>
    implements CopyWith$Variables$Query$GetAllCollections<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllCollections(this._res);

  TRes _res;

  call({Input$CollectionListOptions? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllCollections {
  Query$GetAllCollections(
      {required this.collections, required this.$__typename});

  @override
  factory Query$GetAllCollections.fromJson(Map<String, dynamic> json) =>
      _$Query$GetAllCollectionsFromJson(json);

  final Query$GetAllCollections$collections collections;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetAllCollectionsToJson(this);
  int get hashCode {
    final l$collections = collections;
    final l$$__typename = $__typename;
    return Object.hashAll([l$collections, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllCollections) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$GetAllCollections on Query$GetAllCollections {
  CopyWith$Query$GetAllCollections<Query$GetAllCollections> get copyWith =>
      CopyWith$Query$GetAllCollections(this, (i) => i);
}

abstract class CopyWith$Query$GetAllCollections<TRes> {
  factory CopyWith$Query$GetAllCollections(Query$GetAllCollections instance,
          TRes Function(Query$GetAllCollections) then) =
      _CopyWithImpl$Query$GetAllCollections;

  factory CopyWith$Query$GetAllCollections.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCollections;

  TRes call(
      {Query$GetAllCollections$collections? collections, String? $__typename});
  CopyWith$Query$GetAllCollections$collections<TRes> get collections;
}

class _CopyWithImpl$Query$GetAllCollections<TRes>
    implements CopyWith$Query$GetAllCollections<TRes> {
  _CopyWithImpl$Query$GetAllCollections(this._instance, this._then);

  final Query$GetAllCollections _instance;

  final TRes Function(Query$GetAllCollections) _then;

  static const _undefined = {};

  TRes call(
          {Object? collections = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllCollections(
          collections: collections == _undefined || collections == null
              ? _instance.collections
              : (collections as Query$GetAllCollections$collections),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetAllCollections$collections<TRes> get collections {
    final local$collections = _instance.collections;
    return CopyWith$Query$GetAllCollections$collections(
        local$collections, (e) => call(collections: e));
  }
}

class _CopyWithStubImpl$Query$GetAllCollections<TRes>
    implements CopyWith$Query$GetAllCollections<TRes> {
  _CopyWithStubImpl$Query$GetAllCollections(this._res);

  TRes _res;

  call(
          {Query$GetAllCollections$collections? collections,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetAllCollections$collections<TRes> get collections =>
      CopyWith$Query$GetAllCollections$collections.stub(_res);
}

const documentNodeQueryGetAllCollections = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllCollections'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
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
                              name: NameNode(value: 'slug'),
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
                        name: NameNode(value: 'featuredAsset'),
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
Query$GetAllCollections _parserFn$Query$GetAllCollections(
        Map<String, dynamic> data) =>
    Query$GetAllCollections.fromJson(data);

class Options$Query$GetAllCollections
    extends graphql.QueryOptions<Query$GetAllCollections> {
  Options$Query$GetAllCollections(
      {String? operationName,
      Variables$Query$GetAllCollections? variables,
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
            document: documentNodeQueryGetAllCollections,
            parserFn: _parserFn$Query$GetAllCollections);
}

class WatchOptions$Query$GetAllCollections
    extends graphql.WatchQueryOptions<Query$GetAllCollections> {
  WatchOptions$Query$GetAllCollections(
      {String? operationName,
      Variables$Query$GetAllCollections? variables,
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
            document: documentNodeQueryGetAllCollections,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetAllCollections);
}

class FetchMoreOptions$Query$GetAllCollections
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllCollections(
      {required graphql.UpdateQuery updateQuery,
      Variables$Query$GetAllCollections? variables})
      : super(
            updateQuery: updateQuery,
            variables: variables?.toJson() ?? {},
            document: documentNodeQueryGetAllCollections);
}

extension ClientExtension$Query$GetAllCollections on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllCollections>> query$GetAllCollections(
          [Options$Query$GetAllCollections? options]) async =>
      await this.query(options ?? Options$Query$GetAllCollections());
  graphql.ObservableQuery<Query$GetAllCollections> watchQuery$GetAllCollections(
          [WatchOptions$Query$GetAllCollections? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllCollections());
  void writeQuery$GetAllCollections(
          {required Query$GetAllCollections data,
          Variables$Query$GetAllCollections? variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetAllCollections),
              variables: variables?.toJson() ?? const {}),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetAllCollections? readQuery$GetAllCollections(
      {Variables$Query$GetAllCollections? variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetAllCollections),
            variables: variables?.toJson() ?? const {}),
        optimistic: optimistic);
    return result == null ? null : Query$GetAllCollections.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllCollections>
    useQuery$GetAllCollections([Options$Query$GetAllCollections? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetAllCollections());
graphql.ObservableQuery<Query$GetAllCollections>
    useWatchQuery$GetAllCollections(
            [WatchOptions$Query$GetAllCollections? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllCollections());

class Query$GetAllCollections$Widget
    extends graphql_flutter.Query<Query$GetAllCollections> {
  Query$GetAllCollections$Widget(
      {widgets.Key? key,
      Options$Query$GetAllCollections? options,
      required graphql_flutter.QueryBuilder<Query$GetAllCollections> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetAllCollections(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllCollections$collections {
  Query$GetAllCollections$collections(
      {required this.items, required this.$__typename});

  @override
  factory Query$GetAllCollections$collections.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllCollections$collectionsFromJson(json);

  final List<Query$GetAllCollections$collections$items> items;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllCollections$collectionsToJson(this);
  int get hashCode {
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$items.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllCollections$collections) ||
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

extension UtilityExtension$Query$GetAllCollections$collections
    on Query$GetAllCollections$collections {
  CopyWith$Query$GetAllCollections$collections<
          Query$GetAllCollections$collections>
      get copyWith =>
          CopyWith$Query$GetAllCollections$collections(this, (i) => i);
}

abstract class CopyWith$Query$GetAllCollections$collections<TRes> {
  factory CopyWith$Query$GetAllCollections$collections(
          Query$GetAllCollections$collections instance,
          TRes Function(Query$GetAllCollections$collections) then) =
      _CopyWithImpl$Query$GetAllCollections$collections;

  factory CopyWith$Query$GetAllCollections$collections.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCollections$collections;

  TRes call(
      {List<Query$GetAllCollections$collections$items>? items,
      String? $__typename});
  TRes items(
      Iterable<Query$GetAllCollections$collections$items> Function(
              Iterable<
                  CopyWith$Query$GetAllCollections$collections$items<
                      Query$GetAllCollections$collections$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllCollections$collections<TRes>
    implements CopyWith$Query$GetAllCollections$collections<TRes> {
  _CopyWithImpl$Query$GetAllCollections$collections(this._instance, this._then);

  final Query$GetAllCollections$collections _instance;

  final TRes Function(Query$GetAllCollections$collections) _then;

  static const _undefined = {};

  TRes call({Object? items = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetAllCollections$collections(
          items: items == _undefined || items == null
              ? _instance.items
              : (items as List<Query$GetAllCollections$collections$items>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Query$GetAllCollections$collections$items> Function(
                  Iterable<
                      CopyWith$Query$GetAllCollections$collections$items<
                          Query$GetAllCollections$collections$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) =>
              CopyWith$Query$GetAllCollections$collections$items(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetAllCollections$collections<TRes>
    implements CopyWith$Query$GetAllCollections$collections<TRes> {
  _CopyWithStubImpl$Query$GetAllCollections$collections(this._res);

  TRes _res;

  call(
          {List<Query$GetAllCollections$collections$items>? items,
          String? $__typename}) =>
      _res;
  items(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllCollections$collections$items {
  Query$GetAllCollections$collections$items(
      {required this.id,
      required this.name,
      required this.slug,
      this.parent,
      this.featuredAsset,
      required this.$__typename});

  @override
  factory Query$GetAllCollections$collections$items.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllCollections$collections$itemsFromJson(json);

  final String id;

  final String name;

  final String slug;

  final Query$GetAllCollections$collections$items$parent? parent;

  final Query$GetAllCollections$collections$items$featuredAsset? featuredAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllCollections$collections$itemsToJson(this);
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
    if (!(other is Query$GetAllCollections$collections$items) ||
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

extension UtilityExtension$Query$GetAllCollections$collections$items
    on Query$GetAllCollections$collections$items {
  CopyWith$Query$GetAllCollections$collections$items<
          Query$GetAllCollections$collections$items>
      get copyWith =>
          CopyWith$Query$GetAllCollections$collections$items(this, (i) => i);
}

abstract class CopyWith$Query$GetAllCollections$collections$items<TRes> {
  factory CopyWith$Query$GetAllCollections$collections$items(
          Query$GetAllCollections$collections$items instance,
          TRes Function(Query$GetAllCollections$collections$items) then) =
      _CopyWithImpl$Query$GetAllCollections$collections$items;

  factory CopyWith$Query$GetAllCollections$collections$items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCollections$collections$items;

  TRes call(
      {String? id,
      String? name,
      String? slug,
      Query$GetAllCollections$collections$items$parent? parent,
      Query$GetAllCollections$collections$items$featuredAsset? featuredAsset,
      String? $__typename});
  CopyWith$Query$GetAllCollections$collections$items$parent<TRes> get parent;
  CopyWith$Query$GetAllCollections$collections$items$featuredAsset<TRes>
      get featuredAsset;
}

class _CopyWithImpl$Query$GetAllCollections$collections$items<TRes>
    implements CopyWith$Query$GetAllCollections$collections$items<TRes> {
  _CopyWithImpl$Query$GetAllCollections$collections$items(
      this._instance, this._then);

  final Query$GetAllCollections$collections$items _instance;

  final TRes Function(Query$GetAllCollections$collections$items) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? parent = _undefined,
          Object? featuredAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllCollections$collections$items(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          parent: parent == _undefined
              ? _instance.parent
              : (parent as Query$GetAllCollections$collections$items$parent?),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset
                  as Query$GetAllCollections$collections$items$featuredAsset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetAllCollections$collections$items$parent<TRes> get parent {
    final local$parent = _instance.parent;
    return local$parent == null
        ? CopyWith$Query$GetAllCollections$collections$items$parent.stub(
            _then(_instance))
        : CopyWith$Query$GetAllCollections$collections$items$parent(
            local$parent, (e) => call(parent: e));
  }

  CopyWith$Query$GetAllCollections$collections$items$featuredAsset<TRes>
      get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Query$GetAllCollections$collections$items$featuredAsset.stub(
            _then(_instance))
        : CopyWith$Query$GetAllCollections$collections$items$featuredAsset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }
}

class _CopyWithStubImpl$Query$GetAllCollections$collections$items<TRes>
    implements CopyWith$Query$GetAllCollections$collections$items<TRes> {
  _CopyWithStubImpl$Query$GetAllCollections$collections$items(this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? slug,
          Query$GetAllCollections$collections$items$parent? parent,
          Query$GetAllCollections$collections$items$featuredAsset?
              featuredAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetAllCollections$collections$items$parent<TRes> get parent =>
      CopyWith$Query$GetAllCollections$collections$items$parent.stub(_res);
  CopyWith$Query$GetAllCollections$collections$items$featuredAsset<TRes>
      get featuredAsset =>
          CopyWith$Query$GetAllCollections$collections$items$featuredAsset.stub(
              _res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllCollections$collections$items$parent {
  Query$GetAllCollections$collections$items$parent(
      {required this.id,
      required this.slug,
      required this.name,
      required this.$__typename});

  @override
  factory Query$GetAllCollections$collections$items$parent.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllCollections$collections$items$parentFromJson(json);

  final String id;

  final String slug;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllCollections$collections$items$parentToJson(this);
  int get hashCode {
    final l$id = id;
    final l$slug = slug;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$slug, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllCollections$collections$items$parent) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetAllCollections$collections$items$parent
    on Query$GetAllCollections$collections$items$parent {
  CopyWith$Query$GetAllCollections$collections$items$parent<
          Query$GetAllCollections$collections$items$parent>
      get copyWith => CopyWith$Query$GetAllCollections$collections$items$parent(
          this, (i) => i);
}

abstract class CopyWith$Query$GetAllCollections$collections$items$parent<TRes> {
  factory CopyWith$Query$GetAllCollections$collections$items$parent(
          Query$GetAllCollections$collections$items$parent instance,
          TRes Function(Query$GetAllCollections$collections$items$parent)
              then) =
      _CopyWithImpl$Query$GetAllCollections$collections$items$parent;

  factory CopyWith$Query$GetAllCollections$collections$items$parent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllCollections$collections$items$parent;

  TRes call({String? id, String? slug, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetAllCollections$collections$items$parent<TRes>
    implements CopyWith$Query$GetAllCollections$collections$items$parent<TRes> {
  _CopyWithImpl$Query$GetAllCollections$collections$items$parent(
      this._instance, this._then);

  final Query$GetAllCollections$collections$items$parent _instance;

  final TRes Function(Query$GetAllCollections$collections$items$parent) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? slug = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllCollections$collections$items$parent(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          slug: slug == _undefined || slug == null
              ? _instance.slug
              : (slug as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllCollections$collections$items$parent<TRes>
    implements CopyWith$Query$GetAllCollections$collections$items$parent<TRes> {
  _CopyWithStubImpl$Query$GetAllCollections$collections$items$parent(this._res);

  TRes _res;

  call({String? id, String? slug, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetAllCollections$collections$items$featuredAsset {
  Query$GetAllCollections$collections$items$featuredAsset(
      {required this.id, required this.preview, required this.$__typename});

  @override
  factory Query$GetAllCollections$collections$items$featuredAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetAllCollections$collections$items$featuredAssetFromJson(json);

  final String id;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetAllCollections$collections$items$featuredAssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetAllCollections$collections$items$featuredAsset) ||
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

extension UtilityExtension$Query$GetAllCollections$collections$items$featuredAsset
    on Query$GetAllCollections$collections$items$featuredAsset {
  CopyWith$Query$GetAllCollections$collections$items$featuredAsset<
          Query$GetAllCollections$collections$items$featuredAsset>
      get copyWith =>
          CopyWith$Query$GetAllCollections$collections$items$featuredAsset(
              this, (i) => i);
}

abstract class CopyWith$Query$GetAllCollections$collections$items$featuredAsset<
    TRes> {
  factory CopyWith$Query$GetAllCollections$collections$items$featuredAsset(
          Query$GetAllCollections$collections$items$featuredAsset instance,
          TRes Function(Query$GetAllCollections$collections$items$featuredAsset)
              then) =
      _CopyWithImpl$Query$GetAllCollections$collections$items$featuredAsset;

  factory CopyWith$Query$GetAllCollections$collections$items$featuredAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllCollections$collections$items$featuredAsset;

  TRes call({String? id, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetAllCollections$collections$items$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetAllCollections$collections$items$featuredAsset<TRes> {
  _CopyWithImpl$Query$GetAllCollections$collections$items$featuredAsset(
      this._instance, this._then);

  final Query$GetAllCollections$collections$items$featuredAsset _instance;

  final TRes Function(Query$GetAllCollections$collections$items$featuredAsset)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetAllCollections$collections$items$featuredAsset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetAllCollections$collections$items$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetAllCollections$collections$items$featuredAsset<TRes> {
  _CopyWithStubImpl$Query$GetAllCollections$collections$items$featuredAsset(
      this._res);

  TRes _res;

  call({String? id, String? preview, String? $__typename}) => _res;
}
