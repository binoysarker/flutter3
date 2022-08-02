import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'channels.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Query$GetActiveChannel {
  Query$GetActiveChannel(
      {required this.activeChannel, required this.$__typename});

  @override
  factory Query$GetActiveChannel.fromJson(Map<String, dynamic> json) =>
      _$Query$GetActiveChannelFromJson(json);

  final Query$GetActiveChannel$activeChannel activeChannel;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetActiveChannelToJson(this);
  int get hashCode {
    final l$activeChannel = activeChannel;
    final l$$__typename = $__typename;
    return Object.hashAll([l$activeChannel, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveChannel) || runtimeType != other.runtimeType)
      return false;
    final l$activeChannel = activeChannel;
    final lOther$activeChannel = other.activeChannel;
    if (l$activeChannel != lOther$activeChannel) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveChannel on Query$GetActiveChannel {
  CopyWith$Query$GetActiveChannel<Query$GetActiveChannel> get copyWith =>
      CopyWith$Query$GetActiveChannel(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveChannel<TRes> {
  factory CopyWith$Query$GetActiveChannel(Query$GetActiveChannel instance,
          TRes Function(Query$GetActiveChannel) then) =
      _CopyWithImpl$Query$GetActiveChannel;

  factory CopyWith$Query$GetActiveChannel.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveChannel;

  TRes call(
      {Query$GetActiveChannel$activeChannel? activeChannel,
      String? $__typename});
  CopyWith$Query$GetActiveChannel$activeChannel<TRes> get activeChannel;
}

class _CopyWithImpl$Query$GetActiveChannel<TRes>
    implements CopyWith$Query$GetActiveChannel<TRes> {
  _CopyWithImpl$Query$GetActiveChannel(this._instance, this._then);

  final Query$GetActiveChannel _instance;

  final TRes Function(Query$GetActiveChannel) _then;

  static const _undefined = {};

  TRes call(
          {Object? activeChannel = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveChannel(
          activeChannel: activeChannel == _undefined || activeChannel == null
              ? _instance.activeChannel
              : (activeChannel as Query$GetActiveChannel$activeChannel),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveChannel$activeChannel<TRes> get activeChannel {
    final local$activeChannel = _instance.activeChannel;
    return CopyWith$Query$GetActiveChannel$activeChannel(
        local$activeChannel, (e) => call(activeChannel: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveChannel<TRes>
    implements CopyWith$Query$GetActiveChannel<TRes> {
  _CopyWithStubImpl$Query$GetActiveChannel(this._res);

  TRes _res;

  call(
          {Query$GetActiveChannel$activeChannel? activeChannel,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveChannel$activeChannel<TRes> get activeChannel =>
      CopyWith$Query$GetActiveChannel$activeChannel.stub(_res);
}

const documentNodeQueryGetActiveChannel = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetActiveChannel'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'activeChannel'),
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
                  name: NameNode(value: 'code'),
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
                  name: NameNode(value: 'defaultLanguageCode'),
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
]);
Query$GetActiveChannel _parserFn$Query$GetActiveChannel(
        Map<String, dynamic> data) =>
    Query$GetActiveChannel.fromJson(data);

class Options$Query$GetActiveChannel
    extends graphql.QueryOptions<Query$GetActiveChannel> {
  Options$Query$GetActiveChannel(
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
            document: documentNodeQueryGetActiveChannel,
            parserFn: _parserFn$Query$GetActiveChannel);
}

class WatchOptions$Query$GetActiveChannel
    extends graphql.WatchQueryOptions<Query$GetActiveChannel> {
  WatchOptions$Query$GetActiveChannel(
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
            document: documentNodeQueryGetActiveChannel,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetActiveChannel);
}

class FetchMoreOptions$Query$GetActiveChannel extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveChannel(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetActiveChannel);
}

extension ClientExtension$Query$GetActiveChannel on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveChannel>> query$GetActiveChannel(
          [Options$Query$GetActiveChannel? options]) async =>
      await this.query(options ?? Options$Query$GetActiveChannel());
  graphql.ObservableQuery<Query$GetActiveChannel> watchQuery$GetActiveChannel(
          [WatchOptions$Query$GetActiveChannel? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActiveChannel());
  void writeQuery$GetActiveChannel(
          {required Query$GetActiveChannel data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetActiveChannel)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetActiveChannel? readQuery$GetActiveChannel({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetActiveChannel)),
        optimistic: optimistic);
    return result == null ? null : Query$GetActiveChannel.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActiveChannel>
    useQuery$GetActiveChannel([Options$Query$GetActiveChannel? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetActiveChannel());
graphql.ObservableQuery<Query$GetActiveChannel> useWatchQuery$GetActiveChannel(
        [WatchOptions$Query$GetActiveChannel? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetActiveChannel());

class Query$GetActiveChannel$Widget
    extends graphql_flutter.Query<Query$GetActiveChannel> {
  Query$GetActiveChannel$Widget(
      {widgets.Key? key,
      Options$Query$GetActiveChannel? options,
      required graphql_flutter.QueryBuilder<Query$GetActiveChannel> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetActiveChannel(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveChannel$activeChannel {
  Query$GetActiveChannel$activeChannel(
      {required this.id,
      required this.code,
      required this.currencyCode,
      required this.defaultLanguageCode,
      required this.$__typename});

  @override
  factory Query$GetActiveChannel$activeChannel.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveChannel$activeChannelFromJson(json);

  final String id;

  final String code;

  @JsonKey(unknownEnumValue: Enum$CurrencyCode.$unknown)
  final Enum$CurrencyCode currencyCode;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode defaultLanguageCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveChannel$activeChannelToJson(this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$currencyCode = currencyCode;
    final l$defaultLanguageCode = defaultLanguageCode;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$code, l$currencyCode, l$defaultLanguageCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveChannel$activeChannel) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$defaultLanguageCode = defaultLanguageCode;
    final lOther$defaultLanguageCode = other.defaultLanguageCode;
    if (l$defaultLanguageCode != lOther$defaultLanguageCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveChannel$activeChannel
    on Query$GetActiveChannel$activeChannel {
  CopyWith$Query$GetActiveChannel$activeChannel<
          Query$GetActiveChannel$activeChannel>
      get copyWith =>
          CopyWith$Query$GetActiveChannel$activeChannel(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveChannel$activeChannel<TRes> {
  factory CopyWith$Query$GetActiveChannel$activeChannel(
          Query$GetActiveChannel$activeChannel instance,
          TRes Function(Query$GetActiveChannel$activeChannel) then) =
      _CopyWithImpl$Query$GetActiveChannel$activeChannel;

  factory CopyWith$Query$GetActiveChannel$activeChannel.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveChannel$activeChannel;

  TRes call(
      {String? id,
      String? code,
      Enum$CurrencyCode? currencyCode,
      Enum$LanguageCode? defaultLanguageCode,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveChannel$activeChannel<TRes>
    implements CopyWith$Query$GetActiveChannel$activeChannel<TRes> {
  _CopyWithImpl$Query$GetActiveChannel$activeChannel(
      this._instance, this._then);

  final Query$GetActiveChannel$activeChannel _instance;

  final TRes Function(Query$GetActiveChannel$activeChannel) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? currencyCode = _undefined,
          Object? defaultLanguageCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveChannel$activeChannel(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          currencyCode: currencyCode == _undefined || currencyCode == null
              ? _instance.currencyCode
              : (currencyCode as Enum$CurrencyCode),
          defaultLanguageCode:
              defaultLanguageCode == _undefined || defaultLanguageCode == null
                  ? _instance.defaultLanguageCode
                  : (defaultLanguageCode as Enum$LanguageCode),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveChannel$activeChannel<TRes>
    implements CopyWith$Query$GetActiveChannel$activeChannel<TRes> {
  _CopyWithStubImpl$Query$GetActiveChannel$activeChannel(this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          Enum$CurrencyCode? currencyCode,
          Enum$LanguageCode? defaultLanguageCode,
          String? $__typename}) =>
      _res;
}
