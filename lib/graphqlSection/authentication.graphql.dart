import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'vendureSchema.graphql.dart';
part 'authentication.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$ErrorResult {
  Fragment$ErrorResult(
      {required this.errorCode,
      required this.message,
      required this.$__typename});

  @override
  factory Fragment$ErrorResult.fromJson(Map<String, dynamic> json) =>
      _$Fragment$ErrorResultFromJson(json);

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$ErrorResultToJson(this);
  int get hashCode {
    final l$errorCode = errorCode;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$errorCode, l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$ErrorResult) || runtimeType != other.runtimeType)
      return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$ErrorResult on Fragment$ErrorResult {
  CopyWith$Fragment$ErrorResult<Fragment$ErrorResult> get copyWith =>
      CopyWith$Fragment$ErrorResult(this, (i) => i);
}

abstract class CopyWith$Fragment$ErrorResult<TRes> {
  factory CopyWith$Fragment$ErrorResult(Fragment$ErrorResult instance,
          TRes Function(Fragment$ErrorResult) then) =
      _CopyWithImpl$Fragment$ErrorResult;

  factory CopyWith$Fragment$ErrorResult.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ErrorResult;

  TRes call({Enum$ErrorCode? errorCode, String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$ErrorResult<TRes>
    implements CopyWith$Fragment$ErrorResult<TRes> {
  _CopyWithImpl$Fragment$ErrorResult(this._instance, this._then);

  final Fragment$ErrorResult _instance;

  final TRes Function(Fragment$ErrorResult) _then;

  static const _undefined = {};

  TRes call(
          {Object? errorCode = _undefined,
          Object? message = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$ErrorResult(
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$ErrorResult<TRes>
    implements CopyWith$Fragment$ErrorResult<TRes> {
  _CopyWithStubImpl$Fragment$ErrorResult(this._res);

  TRes _res;

  call({Enum$ErrorCode? errorCode, String? message, String? $__typename}) =>
      _res;
}

const fragmentDefinitionErrorResult = FragmentDefinitionNode(
    name: NameNode(value: 'ErrorResult'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'ErrorResult'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'errorCode'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'message'),
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
    ]));
const documentNodeFragmentErrorResult = DocumentNode(definitions: [
  fragmentDefinitionErrorResult,
]);

extension ClientExtension$Fragment$ErrorResult on graphql.GraphQLClient {
  void writeFragment$ErrorResult(
          {required Fragment$ErrorResult data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'ErrorResult',
                  document: documentNodeFragmentErrorResult)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$ErrorResult? readFragment$ErrorResult(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'ErrorResult',
                document: documentNodeFragmentErrorResult)),
        optimistic: optimistic);
    return result == null ? null : Fragment$ErrorResult.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$SignIn {
  Variables$Mutation$SignIn(
      {required this.emailAddress,
      required this.password,
      required this.rememberMe});

  @override
  factory Variables$Mutation$SignIn.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$SignInFromJson(json);

  final String emailAddress;

  final String password;

  final bool rememberMe;

  Map<String, dynamic> toJson() => _$Variables$Mutation$SignInToJson(this);
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$password = password;
    final l$rememberMe = rememberMe;
    return Object.hashAll([l$emailAddress, l$password, l$rememberMe]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$SignIn) ||
        runtimeType != other.runtimeType) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$rememberMe = rememberMe;
    final lOther$rememberMe = other.rememberMe;
    if (l$rememberMe != lOther$rememberMe) return false;
    return true;
  }

  CopyWith$Variables$Mutation$SignIn<Variables$Mutation$SignIn> get copyWith =>
      CopyWith$Variables$Mutation$SignIn(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$SignIn<TRes> {
  factory CopyWith$Variables$Mutation$SignIn(Variables$Mutation$SignIn instance,
          TRes Function(Variables$Mutation$SignIn) then) =
      _CopyWithImpl$Variables$Mutation$SignIn;

  factory CopyWith$Variables$Mutation$SignIn.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignIn;

  TRes call({String? emailAddress, String? password, bool? rememberMe});
}

class _CopyWithImpl$Variables$Mutation$SignIn<TRes>
    implements CopyWith$Variables$Mutation$SignIn<TRes> {
  _CopyWithImpl$Variables$Mutation$SignIn(this._instance, this._then);

  final Variables$Mutation$SignIn _instance;

  final TRes Function(Variables$Mutation$SignIn) _then;

  static const _undefined = {};

  TRes call(
          {Object? emailAddress = _undefined,
          Object? password = _undefined,
          Object? rememberMe = _undefined}) =>
      _then(Variables$Mutation$SignIn(
          emailAddress: emailAddress == _undefined || emailAddress == null
              ? _instance.emailAddress
              : (emailAddress as String),
          password: password == _undefined || password == null
              ? _instance.password
              : (password as String),
          rememberMe: rememberMe == _undefined || rememberMe == null
              ? _instance.rememberMe
              : (rememberMe as bool)));
}

class _CopyWithStubImpl$Variables$Mutation$SignIn<TRes>
    implements CopyWith$Variables$Mutation$SignIn<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignIn(this._res);

  TRes _res;

  call({String? emailAddress, String? password, bool? rememberMe}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn {
  Mutation$SignIn({required this.login, required this.$__typename});

  @override
  factory Mutation$SignIn.fromJson(Map<String, dynamic> json) =>
      _$Mutation$SignInFromJson(json);

  final Mutation$SignIn$login login;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$SignInToJson(this);
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([l$login, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn) || runtimeType != other.runtimeType)
      return false;
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn on Mutation$SignIn {
  CopyWith$Mutation$SignIn<Mutation$SignIn> get copyWith =>
      CopyWith$Mutation$SignIn(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn<TRes> {
  factory CopyWith$Mutation$SignIn(
          Mutation$SignIn instance, TRes Function(Mutation$SignIn) then) =
      _CopyWithImpl$Mutation$SignIn;

  factory CopyWith$Mutation$SignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn;

  TRes call({Mutation$SignIn$login? login, String? $__typename});
  CopyWith$Mutation$SignIn$login<TRes> get login;
}

class _CopyWithImpl$Mutation$SignIn<TRes>
    implements CopyWith$Mutation$SignIn<TRes> {
  _CopyWithImpl$Mutation$SignIn(this._instance, this._then);

  final Mutation$SignIn _instance;

  final TRes Function(Mutation$SignIn) _then;

  static const _undefined = {};

  TRes call({Object? login = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$SignIn(
          login: login == _undefined || login == null
              ? _instance.login
              : (login as Mutation$SignIn$login),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$SignIn$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$SignIn$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$SignIn<TRes>
    implements CopyWith$Mutation$SignIn<TRes> {
  _CopyWithStubImpl$Mutation$SignIn(this._res);

  TRes _res;

  call({Mutation$SignIn$login? login, String? $__typename}) => _res;
  CopyWith$Mutation$SignIn$login<TRes> get login =>
      CopyWith$Mutation$SignIn$login.stub(_res);
}

const documentNodeMutationSignIn = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SignIn'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'emailAddress')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'rememberMe')),
            type: NamedTypeNode(
                name: NameNode(value: 'Boolean'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'login'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'username'),
                  value: VariableNode(name: NameNode(value: 'emailAddress'))),
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'rememberMe'),
                  value: VariableNode(name: NameNode(value: 'rememberMe')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CurrentUser'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'channels'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'token'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'permissions'),
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
                              name: NameNode(value: 'id'),
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
                        ]))
                  ])),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
  fragmentDefinitionErrorResult,
]);
Mutation$SignIn _parserFn$Mutation$SignIn(Map<String, dynamic> data) =>
    Mutation$SignIn.fromJson(data);
typedef OnMutationCompleted$Mutation$SignIn = FutureOr<void> Function(
    dynamic, Mutation$SignIn?);

class Options$Mutation$SignIn extends graphql.MutationOptions<Mutation$SignIn> {
  Options$Mutation$SignIn(
      {String? operationName,
      required Variables$Mutation$SignIn variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SignIn? onCompleted,
      graphql.OnMutationUpdate<Mutation$SignIn>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$SignIn(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSignIn,
            parserFn: _parserFn$Mutation$SignIn);

  final OnMutationCompleted$Mutation$SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$SignIn
    extends graphql.WatchQueryOptions<Mutation$SignIn> {
  WatchOptions$Mutation$SignIn(
      {String? operationName,
      required Variables$Mutation$SignIn variables,
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
            document: documentNodeMutationSignIn,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$SignIn);
}

extension ClientExtension$Mutation$SignIn on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignIn>> mutate$SignIn(
          Options$Mutation$SignIn options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignIn> watchMutation$SignIn(
          WatchOptions$Mutation$SignIn options) =>
      this.watchMutation(options);
}

class Mutation$SignIn$HookResult {
  Mutation$SignIn$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SignIn runMutation;

  final graphql.QueryResult<Mutation$SignIn> result;
}

Mutation$SignIn$HookResult useMutation$SignIn(
    [WidgetOptions$Mutation$SignIn? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$SignIn());
  return Mutation$SignIn$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignIn> useWatchMutation$SignIn(
        WatchOptions$Mutation$SignIn options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignIn
    extends graphql.MutationOptions<Mutation$SignIn> {
  WidgetOptions$Mutation$SignIn(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SignIn? onCompleted,
      graphql.OnMutationUpdate<Mutation$SignIn>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$SignIn(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSignIn,
            parserFn: _parserFn$Mutation$SignIn);

  final OnMutationCompleted$Mutation$SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$SignIn = graphql.MultiSourceResult<Mutation$SignIn>
    Function(Variables$Mutation$SignIn, {Object? optimisticResult});
typedef Builder$Mutation$SignIn = widgets.Widget Function(
    RunMutation$Mutation$SignIn, graphql.QueryResult<Mutation$SignIn>?);

class Mutation$SignIn$Widget extends graphql_flutter.Mutation<Mutation$SignIn> {
  Mutation$SignIn$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$SignIn? options,
      required Builder$Mutation$SignIn builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$SignIn(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login {
  Mutation$SignIn$login({required this.$__typename});

  @override
  factory Mutation$SignIn$login.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CurrentUser":
        return Mutation$SignIn$login$$CurrentUser.fromJson(json);
      case "InvalidCredentialsError":
        return Mutation$SignIn$login$$InvalidCredentialsError.fromJson(json);
      case "NativeAuthStrategyError":
        return Mutation$SignIn$login$$NativeAuthStrategyError.fromJson(json);
      case "NotVerifiedError":
        return Mutation$SignIn$login$$NotVerifiedError.fromJson(json);
      default:
        return _$Mutation$SignIn$loginFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$SignIn$loginToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login) || runtimeType != other.runtimeType)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login on Mutation$SignIn$login {
  CopyWith$Mutation$SignIn$login<Mutation$SignIn$login> get copyWith =>
      CopyWith$Mutation$SignIn$login(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login<TRes> {
  factory CopyWith$Mutation$SignIn$login(Mutation$SignIn$login instance,
          TRes Function(Mutation$SignIn$login) then) =
      _CopyWithImpl$Mutation$SignIn$login;

  factory CopyWith$Mutation$SignIn$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SignIn$login<TRes>
    implements CopyWith$Mutation$SignIn$login<TRes> {
  _CopyWithImpl$Mutation$SignIn$login(this._instance, this._then);

  final Mutation$SignIn$login _instance;

  final TRes Function(Mutation$SignIn$login) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) => _then(Mutation$SignIn$login(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login<TRes>
    implements CopyWith$Mutation$SignIn$login<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login$$CurrentUser implements Mutation$SignIn$login {
  Mutation$SignIn$login$$CurrentUser(
      {required this.$__typename, required this.id, required this.channels});

  @override
  factory Mutation$SignIn$login$$CurrentUser.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$CurrentUserFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final List<Mutation$SignIn$login$$CurrentUser$channels> channels;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$CurrentUserToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$channels = channels;
    return Object.hashAll(
        [l$$__typename, l$id, Object.hashAll(l$channels.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login$$CurrentUser) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$channels = channels;
    final lOther$channels = other.channels;
    if (l$channels.length != lOther$channels.length) return false;
    for (int i = 0; i < l$channels.length; i++) {
      final l$channels$entry = l$channels[i];
      final lOther$channels$entry = lOther$channels[i];
      if (l$channels$entry != lOther$channels$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login$$CurrentUser
    on Mutation$SignIn$login$$CurrentUser {
  CopyWith$Mutation$SignIn$login$$CurrentUser<
          Mutation$SignIn$login$$CurrentUser>
      get copyWith =>
          CopyWith$Mutation$SignIn$login$$CurrentUser(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login$$CurrentUser<TRes> {
  factory CopyWith$Mutation$SignIn$login$$CurrentUser(
          Mutation$SignIn$login$$CurrentUser instance,
          TRes Function(Mutation$SignIn$login$$CurrentUser) then) =
      _CopyWithImpl$Mutation$SignIn$login$$CurrentUser;

  factory CopyWith$Mutation$SignIn$login$$CurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser;

  TRes call(
      {String? $__typename,
      String? id,
      List<Mutation$SignIn$login$$CurrentUser$channels>? channels});
  TRes channels(
      Iterable<Mutation$SignIn$login$$CurrentUser$channels> Function(
              Iterable<
                  CopyWith$Mutation$SignIn$login$$CurrentUser$channels<
                      Mutation$SignIn$login$$CurrentUser$channels>>)
          _fn);
}

class _CopyWithImpl$Mutation$SignIn$login$$CurrentUser<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$CurrentUser(this._instance, this._then);

  final Mutation$SignIn$login$$CurrentUser _instance;

  final TRes Function(Mutation$SignIn$login$$CurrentUser) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? channels = _undefined}) =>
      _then(Mutation$SignIn$login$$CurrentUser(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          channels: channels == _undefined || channels == null
              ? _instance.channels
              : (channels
                  as List<Mutation$SignIn$login$$CurrentUser$channels>)));
  TRes channels(
          Iterable<Mutation$SignIn$login$$CurrentUser$channels> Function(
                  Iterable<
                      CopyWith$Mutation$SignIn$login$$CurrentUser$channels<
                          Mutation$SignIn$login$$CurrentUser$channels>>)
              _fn) =>
      call(
          channels: _fn(_instance.channels.map((e) =>
              CopyWith$Mutation$SignIn$login$$CurrentUser$channels(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          List<Mutation$SignIn$login$$CurrentUser$channels>? channels}) =>
      _res;
  channels(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login$$CurrentUser$channels {
  Mutation$SignIn$login$$CurrentUser$channels(
      {required this.token,
      required this.permissions,
      required this.code,
      required this.id,
      required this.$__typename});

  @override
  factory Mutation$SignIn$login$$CurrentUser$channels.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$CurrentUser$channelsFromJson(json);

  final String token;

  @JsonKey(unknownEnumValue: Enum$Permission.$unknown)
  final List<Enum$Permission> permissions;

  final String code;

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$CurrentUser$channelsToJson(this);
  int get hashCode {
    final l$token = token;
    final l$permissions = permissions;
    final l$code = code;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$permissions.map((v) => v)),
      l$code,
      l$id,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login$$CurrentUser$channels) ||
        runtimeType != other.runtimeType) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) return false;
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) return false;
    }

    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login$$CurrentUser$channels
    on Mutation$SignIn$login$$CurrentUser$channels {
  CopyWith$Mutation$SignIn$login$$CurrentUser$channels<
          Mutation$SignIn$login$$CurrentUser$channels>
      get copyWith =>
          CopyWith$Mutation$SignIn$login$$CurrentUser$channels(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login$$CurrentUser$channels<TRes> {
  factory CopyWith$Mutation$SignIn$login$$CurrentUser$channels(
          Mutation$SignIn$login$$CurrentUser$channels instance,
          TRes Function(Mutation$SignIn$login$$CurrentUser$channels) then) =
      _CopyWithImpl$Mutation$SignIn$login$$CurrentUser$channels;

  factory CopyWith$Mutation$SignIn$login$$CurrentUser$channels.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser$channels;

  TRes call(
      {String? token,
      List<Enum$Permission>? permissions,
      String? code,
      String? id,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SignIn$login$$CurrentUser$channels<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser$channels<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$CurrentUser$channels(
      this._instance, this._then);

  final Mutation$SignIn$login$$CurrentUser$channels _instance;

  final TRes Function(Mutation$SignIn$login$$CurrentUser$channels) _then;

  static const _undefined = {};

  TRes call(
          {Object? token = _undefined,
          Object? permissions = _undefined,
          Object? code = _undefined,
          Object? id = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SignIn$login$$CurrentUser$channels(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          permissions: permissions == _undefined || permissions == null
              ? _instance.permissions
              : (permissions as List<Enum$Permission>),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser$channels<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser$channels<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser$channels(this._res);

  TRes _res;

  call(
          {String? token,
          List<Enum$Permission>? permissions,
          String? code,
          String? id,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login$$InvalidCredentialsError
    implements Fragment$ErrorResult, Mutation$SignIn$login {
  Mutation$SignIn$login$$InvalidCredentialsError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SignIn$login$$InvalidCredentialsError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$InvalidCredentialsErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$InvalidCredentialsErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login$$InvalidCredentialsError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login$$InvalidCredentialsError
    on Mutation$SignIn$login$$InvalidCredentialsError {
  CopyWith$Mutation$SignIn$login$$InvalidCredentialsError<
          Mutation$SignIn$login$$InvalidCredentialsError>
      get copyWith => CopyWith$Mutation$SignIn$login$$InvalidCredentialsError(
          this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login$$InvalidCredentialsError<TRes> {
  factory CopyWith$Mutation$SignIn$login$$InvalidCredentialsError(
          Mutation$SignIn$login$$InvalidCredentialsError instance,
          TRes Function(Mutation$SignIn$login$$InvalidCredentialsError) then) =
      _CopyWithImpl$Mutation$SignIn$login$$InvalidCredentialsError;

  factory CopyWith$Mutation$SignIn$login$$InvalidCredentialsError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login$$InvalidCredentialsError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SignIn$login$$InvalidCredentialsError<TRes>
    implements CopyWith$Mutation$SignIn$login$$InvalidCredentialsError<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$InvalidCredentialsError(
      this._instance, this._then);

  final Mutation$SignIn$login$$InvalidCredentialsError _instance;

  final TRes Function(Mutation$SignIn$login$$InvalidCredentialsError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$SignIn$login$$InvalidCredentialsError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login$$InvalidCredentialsError<TRes>
    implements CopyWith$Mutation$SignIn$login$$InvalidCredentialsError<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$InvalidCredentialsError(this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login$$NativeAuthStrategyError
    implements Fragment$ErrorResult, Mutation$SignIn$login {
  Mutation$SignIn$login$$NativeAuthStrategyError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SignIn$login$$NativeAuthStrategyError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$NativeAuthStrategyErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$NativeAuthStrategyErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login$$NativeAuthStrategyError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login$$NativeAuthStrategyError
    on Mutation$SignIn$login$$NativeAuthStrategyError {
  CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError<
          Mutation$SignIn$login$$NativeAuthStrategyError>
      get copyWith => CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError(
          this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError<TRes> {
  factory CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError(
          Mutation$SignIn$login$$NativeAuthStrategyError instance,
          TRes Function(Mutation$SignIn$login$$NativeAuthStrategyError) then) =
      _CopyWithImpl$Mutation$SignIn$login$$NativeAuthStrategyError;

  factory CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login$$NativeAuthStrategyError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SignIn$login$$NativeAuthStrategyError<TRes>
    implements CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$NativeAuthStrategyError(
      this._instance, this._then);

  final Mutation$SignIn$login$$NativeAuthStrategyError _instance;

  final TRes Function(Mutation$SignIn$login$$NativeAuthStrategyError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$SignIn$login$$NativeAuthStrategyError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login$$NativeAuthStrategyError<TRes>
    implements CopyWith$Mutation$SignIn$login$$NativeAuthStrategyError<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$NativeAuthStrategyError(this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SignIn$login$$NotVerifiedError
    implements Fragment$ErrorResult, Mutation$SignIn$login {
  Mutation$SignIn$login$$NotVerifiedError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SignIn$login$$NotVerifiedError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$NotVerifiedErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$NotVerifiedErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SignIn$login$$NotVerifiedError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$login$$NotVerifiedError
    on Mutation$SignIn$login$$NotVerifiedError {
  CopyWith$Mutation$SignIn$login$$NotVerifiedError<
          Mutation$SignIn$login$$NotVerifiedError>
      get copyWith =>
          CopyWith$Mutation$SignIn$login$$NotVerifiedError(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$login$$NotVerifiedError<TRes> {
  factory CopyWith$Mutation$SignIn$login$$NotVerifiedError(
          Mutation$SignIn$login$$NotVerifiedError instance,
          TRes Function(Mutation$SignIn$login$$NotVerifiedError) then) =
      _CopyWithImpl$Mutation$SignIn$login$$NotVerifiedError;

  factory CopyWith$Mutation$SignIn$login$$NotVerifiedError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$login$$NotVerifiedError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SignIn$login$$NotVerifiedError<TRes>
    implements CopyWith$Mutation$SignIn$login$$NotVerifiedError<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$NotVerifiedError(
      this._instance, this._then);

  final Mutation$SignIn$login$$NotVerifiedError _instance;

  final TRes Function(Mutation$SignIn$login$$NotVerifiedError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$SignIn$login$$NotVerifiedError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login$$NotVerifiedError<TRes>
    implements CopyWith$Mutation$SignIn$login$$NotVerifiedError<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$NotVerifiedError(this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$Register {
  Variables$Mutation$Register({required this.input});

  @override
  factory Variables$Mutation$Register.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$RegisterFromJson(json);

  final Input$RegisterCustomerInput input;

  Map<String, dynamic> toJson() => _$Variables$Mutation$RegisterToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$Register) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$Register<Variables$Mutation$Register>
      get copyWith => CopyWith$Variables$Mutation$Register(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$Register<TRes> {
  factory CopyWith$Variables$Mutation$Register(
          Variables$Mutation$Register instance,
          TRes Function(Variables$Mutation$Register) then) =
      _CopyWithImpl$Variables$Mutation$Register;

  factory CopyWith$Variables$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Register;

  TRes call({Input$RegisterCustomerInput? input});
}

class _CopyWithImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithImpl$Variables$Mutation$Register(this._instance, this._then);

  final Variables$Mutation$Register _instance;

  final TRes Function(Variables$Mutation$Register) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$Register(
      input: input == _undefined || input == null
          ? _instance.input
          : (input as Input$RegisterCustomerInput)));
}

class _CopyWithStubImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Register(this._res);

  TRes _res;

  call({Input$RegisterCustomerInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register {
  Mutation$Register(
      {required this.registerCustomerAccount, required this.$__typename});

  @override
  factory Mutation$Register.fromJson(Map<String, dynamic> json) =>
      _$Mutation$RegisterFromJson(json);

  final Mutation$Register$registerCustomerAccount registerCustomerAccount;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$RegisterToJson(this);
  int get hashCode {
    final l$registerCustomerAccount = registerCustomerAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$registerCustomerAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$Register) || runtimeType != other.runtimeType)
      return false;
    final l$registerCustomerAccount = registerCustomerAccount;
    final lOther$registerCustomerAccount = other.registerCustomerAccount;
    if (l$registerCustomerAccount != lOther$registerCustomerAccount)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register on Mutation$Register {
  CopyWith$Mutation$Register<Mutation$Register> get copyWith =>
      CopyWith$Mutation$Register(this, (i) => i);
}

abstract class CopyWith$Mutation$Register<TRes> {
  factory CopyWith$Mutation$Register(
          Mutation$Register instance, TRes Function(Mutation$Register) then) =
      _CopyWithImpl$Mutation$Register;

  factory CopyWith$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register;

  TRes call(
      {Mutation$Register$registerCustomerAccount? registerCustomerAccount,
      String? $__typename});
  CopyWith$Mutation$Register$registerCustomerAccount<TRes>
      get registerCustomerAccount;
}

class _CopyWithImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithImpl$Mutation$Register(this._instance, this._then);

  final Mutation$Register _instance;

  final TRes Function(Mutation$Register) _then;

  static const _undefined = {};

  TRes call(
          {Object? registerCustomerAccount = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$Register(
          registerCustomerAccount: registerCustomerAccount == _undefined ||
                  registerCustomerAccount == null
              ? _instance.registerCustomerAccount
              : (registerCustomerAccount
                  as Mutation$Register$registerCustomerAccount),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$Register$registerCustomerAccount<TRes>
      get registerCustomerAccount {
    final local$registerCustomerAccount = _instance.registerCustomerAccount;
    return CopyWith$Mutation$Register$registerCustomerAccount(
        local$registerCustomerAccount, (e) => call(registerCustomerAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithStubImpl$Mutation$Register(this._res);

  TRes _res;

  call(
          {Mutation$Register$registerCustomerAccount? registerCustomerAccount,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$Register$registerCustomerAccount<TRes>
      get registerCustomerAccount =>
          CopyWith$Mutation$Register$registerCustomerAccount.stub(_res);
}

const documentNodeMutationRegister = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Register'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'RegisterCustomerInput'),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'registerCustomerAccount'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Success'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'success'),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
  fragmentDefinitionErrorResult,
]);
Mutation$Register _parserFn$Mutation$Register(Map<String, dynamic> data) =>
    Mutation$Register.fromJson(data);
typedef OnMutationCompleted$Mutation$Register = FutureOr<void> Function(
    dynamic, Mutation$Register?);

class Options$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  Options$Mutation$Register(
      {String? operationName,
      required Variables$Mutation$Register variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$Register? onCompleted,
      graphql.OnMutationUpdate<Mutation$Register>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$Register(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRegister,
            parserFn: _parserFn$Mutation$Register);

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$Register
    extends graphql.WatchQueryOptions<Mutation$Register> {
  WatchOptions$Mutation$Register(
      {String? operationName,
      required Variables$Mutation$Register variables,
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
            document: documentNodeMutationRegister,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$Register);
}

extension ClientExtension$Mutation$Register on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Register>> mutate$Register(
          Options$Mutation$Register options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Register> watchMutation$Register(
          WatchOptions$Mutation$Register options) =>
      this.watchMutation(options);
}

class Mutation$Register$HookResult {
  Mutation$Register$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$Register runMutation;

  final graphql.QueryResult<Mutation$Register> result;
}

Mutation$Register$HookResult useMutation$Register(
    [WidgetOptions$Mutation$Register? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Register());
  return Mutation$Register$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Register> useWatchMutation$Register(
        WatchOptions$Mutation$Register options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  WidgetOptions$Mutation$Register(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$Register? onCompleted,
      graphql.OnMutationUpdate<Mutation$Register>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$Register(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRegister,
            parserFn: _parserFn$Mutation$Register);

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$Register
    = graphql.MultiSourceResult<Mutation$Register>
        Function(Variables$Mutation$Register, {Object? optimisticResult});
typedef Builder$Mutation$Register = widgets.Widget Function(
    RunMutation$Mutation$Register, graphql.QueryResult<Mutation$Register>?);

class Mutation$Register$Widget
    extends graphql_flutter.Mutation<Mutation$Register> {
  Mutation$Register$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$Register? options,
      required Builder$Mutation$Register builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$Register(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register$registerCustomerAccount {
  Mutation$Register$registerCustomerAccount({required this.$__typename});

  @override
  factory Mutation$Register$registerCustomerAccount.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Success":
        return Mutation$Register$registerCustomerAccount$$Success.fromJson(
            json);
      case "MissingPasswordError":
        return Mutation$Register$registerCustomerAccount$$MissingPasswordError
            .fromJson(json);
      case "NativeAuthStrategyError":
        return Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
            .fromJson(json);
      case "PasswordValidationError":
        return Mutation$Register$registerCustomerAccount$$PasswordValidationError
            .fromJson(json);
      default:
        return _$Mutation$Register$registerCustomerAccountFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$Register$registerCustomerAccountToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$Register$registerCustomerAccount) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register$registerCustomerAccount
    on Mutation$Register$registerCustomerAccount {
  CopyWith$Mutation$Register$registerCustomerAccount<
          Mutation$Register$registerCustomerAccount>
      get copyWith =>
          CopyWith$Mutation$Register$registerCustomerAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$Register$registerCustomerAccount<TRes> {
  factory CopyWith$Mutation$Register$registerCustomerAccount(
          Mutation$Register$registerCustomerAccount instance,
          TRes Function(Mutation$Register$registerCustomerAccount) then) =
      _CopyWithImpl$Mutation$Register$registerCustomerAccount;

  factory CopyWith$Mutation$Register$registerCustomerAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register$registerCustomerAccount;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$Register$registerCustomerAccount<TRes>
    implements CopyWith$Mutation$Register$registerCustomerAccount<TRes> {
  _CopyWithImpl$Mutation$Register$registerCustomerAccount(
      this._instance, this._then);

  final Mutation$Register$registerCustomerAccount _instance;

  final TRes Function(Mutation$Register$registerCustomerAccount) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$Register$registerCustomerAccount(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Register$registerCustomerAccount<TRes>
    implements CopyWith$Mutation$Register$registerCustomerAccount<TRes> {
  _CopyWithStubImpl$Mutation$Register$registerCustomerAccount(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register$registerCustomerAccount$$Success
    implements Mutation$Register$registerCustomerAccount {
  Mutation$Register$registerCustomerAccount$$Success(
      {required this.$__typename, required this.success});

  @override
  factory Mutation$Register$registerCustomerAccount$$Success.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$Register$registerCustomerAccount$$SuccessFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final bool success;

  Map<String, dynamic> toJson() =>
      _$Mutation$Register$registerCustomerAccount$$SuccessToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$success = success;
    return Object.hashAll([l$$__typename, l$success]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$Register$registerCustomerAccount$$Success) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register$registerCustomerAccount$$Success
    on Mutation$Register$registerCustomerAccount$$Success {
  CopyWith$Mutation$Register$registerCustomerAccount$$Success<
          Mutation$Register$registerCustomerAccount$$Success>
      get copyWith =>
          CopyWith$Mutation$Register$registerCustomerAccount$$Success(
              this, (i) => i);
}

abstract class CopyWith$Mutation$Register$registerCustomerAccount$$Success<
    TRes> {
  factory CopyWith$Mutation$Register$registerCustomerAccount$$Success(
          Mutation$Register$registerCustomerAccount$$Success instance,
          TRes Function(Mutation$Register$registerCustomerAccount$$Success)
              then) =
      _CopyWithImpl$Mutation$Register$registerCustomerAccount$$Success;

  factory CopyWith$Mutation$Register$registerCustomerAccount$$Success.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$Success;

  TRes call({String? $__typename, bool? success});
}

class _CopyWithImpl$Mutation$Register$registerCustomerAccount$$Success<TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$Success<TRes> {
  _CopyWithImpl$Mutation$Register$registerCustomerAccount$$Success(
      this._instance, this._then);

  final Mutation$Register$registerCustomerAccount$$Success _instance;

  final TRes Function(Mutation$Register$registerCustomerAccount$$Success) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? success = _undefined}) =>
      _then(Mutation$Register$registerCustomerAccount$$Success(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          success: success == _undefined || success == null
              ? _instance.success
              : (success as bool)));
}

class _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$Success<TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$Success<TRes> {
  _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$Success(
      this._res);

  TRes _res;

  call({String? $__typename, bool? success}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register$registerCustomerAccount$$MissingPasswordError
    implements Fragment$ErrorResult, Mutation$Register$registerCustomerAccount {
  Mutation$Register$registerCustomerAccount$$MissingPasswordError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$Register$registerCustomerAccount$$MissingPasswordError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$Register$registerCustomerAccount$$MissingPasswordErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$Register$registerCustomerAccount$$MissingPasswordErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$Register$registerCustomerAccount$$MissingPasswordError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register$registerCustomerAccount$$MissingPasswordError
    on Mutation$Register$registerCustomerAccount$$MissingPasswordError {
  CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
          Mutation$Register$registerCustomerAccount$$MissingPasswordError>
      get copyWith =>
          CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
    TRes> {
  factory CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError(
          Mutation$Register$registerCustomerAccount$$MissingPasswordError instance,
          TRes Function(
                  Mutation$Register$registerCustomerAccount$$MissingPasswordError)
              then) =
      _CopyWithImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError;

  factory CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
            TRes> {
  _CopyWithImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError(
      this._instance, this._then);

  final Mutation$Register$registerCustomerAccount$$MissingPasswordError
      _instance;

  final TRes Function(
      Mutation$Register$registerCustomerAccount$$MissingPasswordError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$Register$registerCustomerAccount$$MissingPasswordError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$MissingPasswordError<
            TRes> {
  _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$MissingPasswordError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
    implements Fragment$ErrorResult, Mutation$Register$registerCustomerAccount {
  Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
    on Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError {
  CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
          Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError>
      get copyWith =>
          CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
    TRes> {
  factory CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
          Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
              instance,
          TRes Function(
                  Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError)
              then) =
      _CopyWithImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError;

  factory CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
            TRes> {
  _CopyWithImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
      this._instance, this._then);

  final Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
      _instance;

  final TRes Function(
      Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError<
            TRes> {
  _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Register$registerCustomerAccount$$PasswordValidationError
    implements Fragment$ErrorResult, Mutation$Register$registerCustomerAccount {
  Mutation$Register$registerCustomerAccount$$PasswordValidationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$Register$registerCustomerAccount$$PasswordValidationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$Register$registerCustomerAccount$$PasswordValidationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$Register$registerCustomerAccount$$PasswordValidationErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$Register$registerCustomerAccount$$PasswordValidationError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Register$registerCustomerAccount$$PasswordValidationError
    on Mutation$Register$registerCustomerAccount$$PasswordValidationError {
  CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
          Mutation$Register$registerCustomerAccount$$PasswordValidationError>
      get copyWith =>
          CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
    TRes> {
  factory CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError(
          Mutation$Register$registerCustomerAccount$$PasswordValidationError
              instance,
          TRes Function(
                  Mutation$Register$registerCustomerAccount$$PasswordValidationError)
              then) =
      _CopyWithImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError;

  factory CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
            TRes> {
  _CopyWithImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError(
      this._instance, this._then);

  final Mutation$Register$registerCustomerAccount$$PasswordValidationError
      _instance;

  final TRes Function(
      Mutation$Register$registerCustomerAccount$$PasswordValidationError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$Register$registerCustomerAccount$$PasswordValidationError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$Register$registerCustomerAccount$$PasswordValidationError<
            TRes> {
  _CopyWithStubImpl$Mutation$Register$registerCustomerAccount$$PasswordValidationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$CheckUniquePhone {
  Variables$Query$CheckUniquePhone({required this.phone});

  @override
  factory Variables$Query$CheckUniquePhone.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Query$CheckUniquePhoneFromJson(json);

  final String phone;

  Map<String, dynamic> toJson() =>
      _$Variables$Query$CheckUniquePhoneToJson(this);
  int get hashCode {
    final l$phone = phone;
    return Object.hashAll([l$phone]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$CheckUniquePhone) ||
        runtimeType != other.runtimeType) return false;
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) return false;
    return true;
  }

  CopyWith$Variables$Query$CheckUniquePhone<Variables$Query$CheckUniquePhone>
      get copyWith => CopyWith$Variables$Query$CheckUniquePhone(this, (i) => i);
}

abstract class CopyWith$Variables$Query$CheckUniquePhone<TRes> {
  factory CopyWith$Variables$Query$CheckUniquePhone(
          Variables$Query$CheckUniquePhone instance,
          TRes Function(Variables$Query$CheckUniquePhone) then) =
      _CopyWithImpl$Variables$Query$CheckUniquePhone;

  factory CopyWith$Variables$Query$CheckUniquePhone.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CheckUniquePhone;

  TRes call({String? phone});
}

class _CopyWithImpl$Variables$Query$CheckUniquePhone<TRes>
    implements CopyWith$Variables$Query$CheckUniquePhone<TRes> {
  _CopyWithImpl$Variables$Query$CheckUniquePhone(this._instance, this._then);

  final Variables$Query$CheckUniquePhone _instance;

  final TRes Function(Variables$Query$CheckUniquePhone) _then;

  static const _undefined = {};

  TRes call({Object? phone = _undefined}) => _then(
      Variables$Query$CheckUniquePhone(
          phone: phone == _undefined || phone == null
              ? _instance.phone
              : (phone as String)));
}

class _CopyWithStubImpl$Variables$Query$CheckUniquePhone<TRes>
    implements CopyWith$Variables$Query$CheckUniquePhone<TRes> {
  _CopyWithStubImpl$Variables$Query$CheckUniquePhone(this._res);

  TRes _res;

  call({String? phone}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$CheckUniquePhone {
  Query$CheckUniquePhone(
      {required this.checkUniquePhone, required this.$__typename});

  @override
  factory Query$CheckUniquePhone.fromJson(Map<String, dynamic> json) =>
      _$Query$CheckUniquePhoneFromJson(json);

  final bool checkUniquePhone;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$CheckUniquePhoneToJson(this);
  int get hashCode {
    final l$checkUniquePhone = checkUniquePhone;
    final l$$__typename = $__typename;
    return Object.hashAll([l$checkUniquePhone, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$CheckUniquePhone) || runtimeType != other.runtimeType)
      return false;
    final l$checkUniquePhone = checkUniquePhone;
    final lOther$checkUniquePhone = other.checkUniquePhone;
    if (l$checkUniquePhone != lOther$checkUniquePhone) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$CheckUniquePhone on Query$CheckUniquePhone {
  CopyWith$Query$CheckUniquePhone<Query$CheckUniquePhone> get copyWith =>
      CopyWith$Query$CheckUniquePhone(this, (i) => i);
}

abstract class CopyWith$Query$CheckUniquePhone<TRes> {
  factory CopyWith$Query$CheckUniquePhone(Query$CheckUniquePhone instance,
          TRes Function(Query$CheckUniquePhone) then) =
      _CopyWithImpl$Query$CheckUniquePhone;

  factory CopyWith$Query$CheckUniquePhone.stub(TRes res) =
      _CopyWithStubImpl$Query$CheckUniquePhone;

  TRes call({bool? checkUniquePhone, String? $__typename});
}

class _CopyWithImpl$Query$CheckUniquePhone<TRes>
    implements CopyWith$Query$CheckUniquePhone<TRes> {
  _CopyWithImpl$Query$CheckUniquePhone(this._instance, this._then);

  final Query$CheckUniquePhone _instance;

  final TRes Function(Query$CheckUniquePhone) _then;

  static const _undefined = {};

  TRes call(
          {Object? checkUniquePhone = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$CheckUniquePhone(
          checkUniquePhone:
              checkUniquePhone == _undefined || checkUniquePhone == null
                  ? _instance.checkUniquePhone
                  : (checkUniquePhone as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$CheckUniquePhone<TRes>
    implements CopyWith$Query$CheckUniquePhone<TRes> {
  _CopyWithStubImpl$Query$CheckUniquePhone(this._res);

  TRes _res;

  call({bool? checkUniquePhone, String? $__typename}) => _res;
}

const documentNodeQueryCheckUniquePhone = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'CheckUniquePhone'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'phone')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'checkUniquePhone'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'phone'),
                  value: VariableNode(name: NameNode(value: 'phone')))
            ],
            directives: [],
            selectionSet: null),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Query$CheckUniquePhone _parserFn$Query$CheckUniquePhone(
        Map<String, dynamic> data) =>
    Query$CheckUniquePhone.fromJson(data);

class Options$Query$CheckUniquePhone
    extends graphql.QueryOptions<Query$CheckUniquePhone> {
  Options$Query$CheckUniquePhone(
      {String? operationName,
      required Variables$Query$CheckUniquePhone variables,
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
            document: documentNodeQueryCheckUniquePhone,
            parserFn: _parserFn$Query$CheckUniquePhone);
}

class WatchOptions$Query$CheckUniquePhone
    extends graphql.WatchQueryOptions<Query$CheckUniquePhone> {
  WatchOptions$Query$CheckUniquePhone(
      {String? operationName,
      required Variables$Query$CheckUniquePhone variables,
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
            document: documentNodeQueryCheckUniquePhone,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$CheckUniquePhone);
}

class FetchMoreOptions$Query$CheckUniquePhone extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CheckUniquePhone(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$CheckUniquePhone variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryCheckUniquePhone);
}

extension ClientExtension$Query$CheckUniquePhone on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CheckUniquePhone>> query$CheckUniquePhone(
          Options$Query$CheckUniquePhone options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$CheckUniquePhone> watchQuery$CheckUniquePhone(
          WatchOptions$Query$CheckUniquePhone options) =>
      this.watchQuery(options);
  void writeQuery$CheckUniquePhone(
          {required Query$CheckUniquePhone data,
          required Variables$Query$CheckUniquePhone variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryCheckUniquePhone),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$CheckUniquePhone? readQuery$CheckUniquePhone(
      {required Variables$Query$CheckUniquePhone variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCheckUniquePhone),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$CheckUniquePhone.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CheckUniquePhone>
    useQuery$CheckUniquePhone(Options$Query$CheckUniquePhone options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$CheckUniquePhone> useWatchQuery$CheckUniquePhone(
        WatchOptions$Query$CheckUniquePhone options) =>
    graphql_flutter.useWatchQuery(options);

class Query$CheckUniquePhone$Widget
    extends graphql_flutter.Query<Query$CheckUniquePhone> {
  Query$CheckUniquePhone$Widget(
      {widgets.Key? key,
      required Options$Query$CheckUniquePhone options,
      required graphql_flutter.QueryBuilder<Query$CheckUniquePhone> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetPasswordResetToken {
  Query$GetPasswordResetToken(
      {required this.getPasswordResetToken, required this.$__typename});

  @override
  factory Query$GetPasswordResetToken.fromJson(Map<String, dynamic> json) =>
      _$Query$GetPasswordResetTokenFromJson(json);

  final String getPasswordResetToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetPasswordResetTokenToJson(this);
  int get hashCode {
    final l$getPasswordResetToken = getPasswordResetToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$getPasswordResetToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetPasswordResetToken) ||
        runtimeType != other.runtimeType) return false;
    final l$getPasswordResetToken = getPasswordResetToken;
    final lOther$getPasswordResetToken = other.getPasswordResetToken;
    if (l$getPasswordResetToken != lOther$getPasswordResetToken) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetPasswordResetToken
    on Query$GetPasswordResetToken {
  CopyWith$Query$GetPasswordResetToken<Query$GetPasswordResetToken>
      get copyWith => CopyWith$Query$GetPasswordResetToken(this, (i) => i);
}

abstract class CopyWith$Query$GetPasswordResetToken<TRes> {
  factory CopyWith$Query$GetPasswordResetToken(
          Query$GetPasswordResetToken instance,
          TRes Function(Query$GetPasswordResetToken) then) =
      _CopyWithImpl$Query$GetPasswordResetToken;

  factory CopyWith$Query$GetPasswordResetToken.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPasswordResetToken;

  TRes call({String? getPasswordResetToken, String? $__typename});
}

class _CopyWithImpl$Query$GetPasswordResetToken<TRes>
    implements CopyWith$Query$GetPasswordResetToken<TRes> {
  _CopyWithImpl$Query$GetPasswordResetToken(this._instance, this._then);

  final Query$GetPasswordResetToken _instance;

  final TRes Function(Query$GetPasswordResetToken) _then;

  static const _undefined = {};

  TRes call(
          {Object? getPasswordResetToken = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetPasswordResetToken(
          getPasswordResetToken: getPasswordResetToken == _undefined ||
                  getPasswordResetToken == null
              ? _instance.getPasswordResetToken
              : (getPasswordResetToken as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetPasswordResetToken<TRes>
    implements CopyWith$Query$GetPasswordResetToken<TRes> {
  _CopyWithStubImpl$Query$GetPasswordResetToken(this._res);

  TRes _res;

  call({String? getPasswordResetToken, String? $__typename}) => _res;
}

const documentNodeQueryGetPasswordResetToken = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPasswordResetToken'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'getPasswordResetToken'),
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
]);
Query$GetPasswordResetToken _parserFn$Query$GetPasswordResetToken(
        Map<String, dynamic> data) =>
    Query$GetPasswordResetToken.fromJson(data);

class Options$Query$GetPasswordResetToken
    extends graphql.QueryOptions<Query$GetPasswordResetToken> {
  Options$Query$GetPasswordResetToken(
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
            document: documentNodeQueryGetPasswordResetToken,
            parserFn: _parserFn$Query$GetPasswordResetToken);
}

class WatchOptions$Query$GetPasswordResetToken
    extends graphql.WatchQueryOptions<Query$GetPasswordResetToken> {
  WatchOptions$Query$GetPasswordResetToken(
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
            document: documentNodeQueryGetPasswordResetToken,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetPasswordResetToken);
}

class FetchMoreOptions$Query$GetPasswordResetToken
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPasswordResetToken(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetPasswordResetToken);
}

extension ClientExtension$Query$GetPasswordResetToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPasswordResetToken>>
      query$GetPasswordResetToken(
              [Options$Query$GetPasswordResetToken? options]) async =>
          await this.query(options ?? Options$Query$GetPasswordResetToken());
  graphql.ObservableQuery<
      Query$GetPasswordResetToken> watchQuery$GetPasswordResetToken(
          [WatchOptions$Query$GetPasswordResetToken? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetPasswordResetToken());
  void writeQuery$GetPasswordResetToken(
          {required Query$GetPasswordResetToken data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetPasswordResetToken)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetPasswordResetToken? readQuery$GetPasswordResetToken(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetPasswordResetToken)),
        optimistic: optimistic);
    return result == null ? null : Query$GetPasswordResetToken.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPasswordResetToken>
    useQuery$GetPasswordResetToken(
            [Options$Query$GetPasswordResetToken? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetPasswordResetToken());
graphql.ObservableQuery<Query$GetPasswordResetToken>
    useWatchQuery$GetPasswordResetToken(
            [WatchOptions$Query$GetPasswordResetToken? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetPasswordResetToken());

class Query$GetPasswordResetToken$Widget
    extends graphql_flutter.Query<Query$GetPasswordResetToken> {
  Query$GetPasswordResetToken$Widget(
      {widgets.Key? key,
      Options$Query$GetPasswordResetToken? options,
      required graphql_flutter.QueryBuilder<Query$GetPasswordResetToken>
          builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetPasswordResetToken(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$VerifyCustomerAccount {
  Variables$Mutation$VerifyCustomerAccount(
      {required this.token, this.password});

  @override
  factory Variables$Mutation$VerifyCustomerAccount.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$VerifyCustomerAccountFromJson(json);

  final String token;

  final String? password;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$VerifyCustomerAccountToJson(this);
  int get hashCode {
    final l$token = token;
    final l$password = password;
    return Object.hashAll([l$token, l$password]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$VerifyCustomerAccount) ||
        runtimeType != other.runtimeType) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    return true;
  }

  CopyWith$Variables$Mutation$VerifyCustomerAccount<
          Variables$Mutation$VerifyCustomerAccount>
      get copyWith =>
          CopyWith$Variables$Mutation$VerifyCustomerAccount(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$VerifyCustomerAccount<TRes> {
  factory CopyWith$Variables$Mutation$VerifyCustomerAccount(
          Variables$Mutation$VerifyCustomerAccount instance,
          TRes Function(Variables$Mutation$VerifyCustomerAccount) then) =
      _CopyWithImpl$Variables$Mutation$VerifyCustomerAccount;

  factory CopyWith$Variables$Mutation$VerifyCustomerAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyCustomerAccount;

  TRes call({String? token, String? password});
}

class _CopyWithImpl$Variables$Mutation$VerifyCustomerAccount<TRes>
    implements CopyWith$Variables$Mutation$VerifyCustomerAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyCustomerAccount(
      this._instance, this._then);

  final Variables$Mutation$VerifyCustomerAccount _instance;

  final TRes Function(Variables$Mutation$VerifyCustomerAccount) _then;

  static const _undefined = {};

  TRes call({Object? token = _undefined, Object? password = _undefined}) =>
      _then(Variables$Mutation$VerifyCustomerAccount(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          password: password == _undefined
              ? _instance.password
              : (password as String?)));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyCustomerAccount<TRes>
    implements CopyWith$Variables$Mutation$VerifyCustomerAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyCustomerAccount(this._res);

  TRes _res;

  call({String? token, String? password}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount {
  Mutation$VerifyCustomerAccount(
      {required this.verifyCustomerAccount, required this.$__typename});

  @override
  factory Mutation$VerifyCustomerAccount.fromJson(Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccountFromJson(json);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount
      verifyCustomerAccount;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$VerifyCustomerAccountToJson(this);
  int get hashCode {
    final l$verifyCustomerAccount = verifyCustomerAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$verifyCustomerAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$VerifyCustomerAccount) ||
        runtimeType != other.runtimeType) return false;
    final l$verifyCustomerAccount = verifyCustomerAccount;
    final lOther$verifyCustomerAccount = other.verifyCustomerAccount;
    if (l$verifyCustomerAccount != lOther$verifyCustomerAccount) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount
    on Mutation$VerifyCustomerAccount {
  CopyWith$Mutation$VerifyCustomerAccount<Mutation$VerifyCustomerAccount>
      get copyWith => CopyWith$Mutation$VerifyCustomerAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount<TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount(
          Mutation$VerifyCustomerAccount instance,
          TRes Function(Mutation$VerifyCustomerAccount) then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount;

  factory CopyWith$Mutation$VerifyCustomerAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount;

  TRes call(
      {Mutation$VerifyCustomerAccount$verifyCustomerAccount?
          verifyCustomerAccount,
      String? $__typename});
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes>
      get verifyCustomerAccount;
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount<TRes>
    implements CopyWith$Mutation$VerifyCustomerAccount<TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount(this._instance, this._then);

  final Mutation$VerifyCustomerAccount _instance;

  final TRes Function(Mutation$VerifyCustomerAccount) _then;

  static const _undefined = {};

  TRes call(
          {Object? verifyCustomerAccount = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$VerifyCustomerAccount(
          verifyCustomerAccount: verifyCustomerAccount == _undefined ||
                  verifyCustomerAccount == null
              ? _instance.verifyCustomerAccount
              : (verifyCustomerAccount
                  as Mutation$VerifyCustomerAccount$verifyCustomerAccount),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes>
      get verifyCustomerAccount {
    final local$verifyCustomerAccount = _instance.verifyCustomerAccount;
    return CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount(
        local$verifyCustomerAccount, (e) => call(verifyCustomerAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount<TRes>
    implements CopyWith$Mutation$VerifyCustomerAccount<TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount(this._res);

  TRes _res;

  call(
          {Mutation$VerifyCustomerAccount$verifyCustomerAccount?
              verifyCustomerAccount,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes>
      get verifyCustomerAccount =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount.stub(
              _res);
}

const documentNodeMutationVerifyCustomerAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'VerifyCustomerAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'token')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'verifyCustomerAccount'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'token'),
                  value: VariableNode(name: NameNode(value: 'token')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CurrentUser'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
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
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name:
                              NameNode(value: 'VerificationTokenInvalidError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'errorCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
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
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name:
                              NameNode(value: 'VerificationTokenExpiredError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'errorCode'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'message'),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
  fragmentDefinitionErrorResult,
]);
Mutation$VerifyCustomerAccount _parserFn$Mutation$VerifyCustomerAccount(
        Map<String, dynamic> data) =>
    Mutation$VerifyCustomerAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyCustomerAccount = FutureOr<void>
    Function(dynamic, Mutation$VerifyCustomerAccount?);

class Options$Mutation$VerifyCustomerAccount
    extends graphql.MutationOptions<Mutation$VerifyCustomerAccount> {
  Options$Mutation$VerifyCustomerAccount(
      {String? operationName,
      required Variables$Mutation$VerifyCustomerAccount variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$VerifyCustomerAccount? onCompleted,
      graphql.OnMutationUpdate<Mutation$VerifyCustomerAccount>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$VerifyCustomerAccount(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationVerifyCustomerAccount,
            parserFn: _parserFn$Mutation$VerifyCustomerAccount);

  final OnMutationCompleted$Mutation$VerifyCustomerAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$VerifyCustomerAccount
    extends graphql.WatchQueryOptions<Mutation$VerifyCustomerAccount> {
  WatchOptions$Mutation$VerifyCustomerAccount(
      {String? operationName,
      required Variables$Mutation$VerifyCustomerAccount variables,
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
            document: documentNodeMutationVerifyCustomerAccount,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$VerifyCustomerAccount);
}

extension ClientExtension$Mutation$VerifyCustomerAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyCustomerAccount>>
      mutate$VerifyCustomerAccount(
              Options$Mutation$VerifyCustomerAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyCustomerAccount>
      watchMutation$VerifyCustomerAccount(
              WatchOptions$Mutation$VerifyCustomerAccount options) =>
          this.watchMutation(options);
}

class Mutation$VerifyCustomerAccount$HookResult {
  Mutation$VerifyCustomerAccount$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$VerifyCustomerAccount runMutation;

  final graphql.QueryResult<Mutation$VerifyCustomerAccount> result;
}

Mutation$VerifyCustomerAccount$HookResult useMutation$VerifyCustomerAccount(
    [WidgetOptions$Mutation$VerifyCustomerAccount? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$VerifyCustomerAccount());
  return Mutation$VerifyCustomerAccount$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$VerifyCustomerAccount>
    useWatchMutation$VerifyCustomerAccount(
            WatchOptions$Mutation$VerifyCustomerAccount options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$VerifyCustomerAccount
    extends graphql.MutationOptions<Mutation$VerifyCustomerAccount> {
  WidgetOptions$Mutation$VerifyCustomerAccount(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$VerifyCustomerAccount? onCompleted,
      graphql.OnMutationUpdate<Mutation$VerifyCustomerAccount>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$VerifyCustomerAccount(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationVerifyCustomerAccount,
            parserFn: _parserFn$Mutation$VerifyCustomerAccount);

  final OnMutationCompleted$Mutation$VerifyCustomerAccount?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$VerifyCustomerAccount
    = graphql.MultiSourceResult<Mutation$VerifyCustomerAccount> Function(
        Variables$Mutation$VerifyCustomerAccount,
        {Object? optimisticResult});
typedef Builder$Mutation$VerifyCustomerAccount = widgets.Widget Function(
    RunMutation$Mutation$VerifyCustomerAccount,
    graphql.QueryResult<Mutation$VerifyCustomerAccount>?);

class Mutation$VerifyCustomerAccount$Widget
    extends graphql_flutter.Mutation<Mutation$VerifyCustomerAccount> {
  Mutation$VerifyCustomerAccount$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$VerifyCustomerAccount? options,
      required Builder$Mutation$VerifyCustomerAccount builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$VerifyCustomerAccount(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount(
      {required this.$__typename});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CurrentUser":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
            .fromJson(json);
      case "VerificationTokenInvalidError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
            .fromJson(json);
      case "VerificationTokenExpiredError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
            .fromJson(json);
      case "MissingPasswordError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
            .fromJson(json);
      case "NativeAuthStrategyError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
            .fromJson(json);
      case "PasswordAlreadySetError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
            .fromJson(json);
      case "PasswordValidationError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
            .fromJson(json);
      default:
        return _$Mutation$VerifyCustomerAccount$verifyCustomerAccountFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccountToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$VerifyCustomerAccount$verifyCustomerAccount) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount instance,
          TRes Function(Mutation$VerifyCustomerAccount$verifyCustomerAccount)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount _instance;

  final TRes Function(Mutation$VerifyCustomerAccount$verifyCustomerAccount)
      _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$VerifyCustomerAccount$verifyCustomerAccount(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount<TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
    implements Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
      {required this.$__typename, required this.id});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUserFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUserToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    return Object.hashAll([l$$__typename, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser;

  TRes call({String? $__typename, String? id});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
      _instance;

  final TRes Function(
      Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? id = _undefined}) =>
      _then(Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
      this._res);

  TRes _res;

  call({String? $__typename, String? id}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
    implements
        Fragment$ErrorResult,
        Mutation$VerifyCustomerAccount$verifyCustomerAccount {
  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
    on Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError {
  CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError>
      get copyWith =>
          CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
    TRes> {
  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
              instance,
          TRes Function(
                  Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError)
              then) =
      _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError;

  factory CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
            TRes> {
  _CopyWithImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
      this._instance, this._then);

  final Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
      _instance;

  final TRes Function(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError<
            TRes> {
  _CopyWithStubImpl$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdateCustomer {
  Variables$Mutation$UpdateCustomer({required this.input});

  @override
  factory Variables$Mutation$UpdateCustomer.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdateCustomerFromJson(json);

  final Input$UpdateCustomerInput input;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$UpdateCustomerToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdateCustomer) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$UpdateCustomer<Variables$Mutation$UpdateCustomer>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdateCustomer(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCustomer(
          Variables$Mutation$UpdateCustomer instance,
          TRes Function(Variables$Mutation$UpdateCustomer) then) =
      _CopyWithImpl$Variables$Mutation$UpdateCustomer;

  factory CopyWith$Variables$Mutation$UpdateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCustomer;

  TRes call({Input$UpdateCustomerInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCustomer(this._instance, this._then);

  final Variables$Mutation$UpdateCustomer _instance;

  final TRes Function(Variables$Mutation$UpdateCustomer) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateCustomer(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$UpdateCustomerInput)));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomer<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCustomer(this._res);

  TRes _res;

  call({Input$UpdateCustomerInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomer {
  Mutation$UpdateCustomer(
      {required this.updateCustomer, required this.$__typename});

  @override
  factory Mutation$UpdateCustomer.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomerFromJson(json);

  final Mutation$UpdateCustomer$updateCustomer updateCustomer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$UpdateCustomerToJson(this);
  int get hashCode {
    final l$updateCustomer = updateCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateCustomer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomer) || runtimeType != other.runtimeType)
      return false;
    final l$updateCustomer = updateCustomer;
    final lOther$updateCustomer = other.updateCustomer;
    if (l$updateCustomer != lOther$updateCustomer) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomer on Mutation$UpdateCustomer {
  CopyWith$Mutation$UpdateCustomer<Mutation$UpdateCustomer> get copyWith =>
      CopyWith$Mutation$UpdateCustomer(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomer<TRes> {
  factory CopyWith$Mutation$UpdateCustomer(Mutation$UpdateCustomer instance,
          TRes Function(Mutation$UpdateCustomer) then) =
      _CopyWithImpl$Mutation$UpdateCustomer;

  factory CopyWith$Mutation$UpdateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer;

  TRes call(
      {Mutation$UpdateCustomer$updateCustomer? updateCustomer,
      String? $__typename});
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer;
}

class _CopyWithImpl$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer(this._instance, this._then);

  final Mutation$UpdateCustomer _instance;

  final TRes Function(Mutation$UpdateCustomer) _then;

  static const _undefined = {};

  TRes call(
          {Object? updateCustomer = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomer(
          updateCustomer: updateCustomer == _undefined || updateCustomer == null
              ? _instance.updateCustomer
              : (updateCustomer as Mutation$UpdateCustomer$updateCustomer),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer {
    final local$updateCustomer = _instance.updateCustomer;
    return CopyWith$Mutation$UpdateCustomer$updateCustomer(
        local$updateCustomer, (e) => call(updateCustomer: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer(this._res);

  TRes _res;

  call(
          {Mutation$UpdateCustomer$updateCustomer? updateCustomer,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> get updateCustomer =>
      CopyWith$Mutation$UpdateCustomer$updateCustomer.stub(_res);
}

const documentNodeMutationUpdateCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCustomer'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'UpdateCustomerInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateCustomer'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Customer'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'addresses'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'city'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'company'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'country'),
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
                                    name: NameNode(value: 'languageCode'),
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
                              name: NameNode(value: 'fullName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'phoneNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'streetLine1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'streetLine2'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'postalCode'),
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
Mutation$UpdateCustomer _parserFn$Mutation$UpdateCustomer(
        Map<String, dynamic> data) =>
    Mutation$UpdateCustomer.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCustomer = FutureOr<void> Function(
    dynamic, Mutation$UpdateCustomer?);

class Options$Mutation$UpdateCustomer
    extends graphql.MutationOptions<Mutation$UpdateCustomer> {
  Options$Mutation$UpdateCustomer(
      {String? operationName,
      required Variables$Mutation$UpdateCustomer variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateCustomer? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateCustomer>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomer(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateCustomer,
            parserFn: _parserFn$Mutation$UpdateCustomer);

  final OnMutationCompleted$Mutation$UpdateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateCustomer
    extends graphql.WatchQueryOptions<Mutation$UpdateCustomer> {
  WatchOptions$Mutation$UpdateCustomer(
      {String? operationName,
      required Variables$Mutation$UpdateCustomer variables,
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
            document: documentNodeMutationUpdateCustomer,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateCustomer);
}

extension ClientExtension$Mutation$UpdateCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCustomer>> mutate$UpdateCustomer(
          Options$Mutation$UpdateCustomer options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateCustomer> watchMutation$UpdateCustomer(
          WatchOptions$Mutation$UpdateCustomer options) =>
      this.watchMutation(options);
}

class Mutation$UpdateCustomer$HookResult {
  Mutation$UpdateCustomer$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateCustomer runMutation;

  final graphql.QueryResult<Mutation$UpdateCustomer> result;
}

Mutation$UpdateCustomer$HookResult useMutation$UpdateCustomer(
    [WidgetOptions$Mutation$UpdateCustomer? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateCustomer());
  return Mutation$UpdateCustomer$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateCustomer>
    useWatchMutation$UpdateCustomer(
            WatchOptions$Mutation$UpdateCustomer options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateCustomer
    extends graphql.MutationOptions<Mutation$UpdateCustomer> {
  WidgetOptions$Mutation$UpdateCustomer(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateCustomer? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateCustomer>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomer(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateCustomer,
            parserFn: _parserFn$Mutation$UpdateCustomer);

  final OnMutationCompleted$Mutation$UpdateCustomer? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UpdateCustomer
    = graphql.MultiSourceResult<Mutation$UpdateCustomer>
        Function(Variables$Mutation$UpdateCustomer, {Object? optimisticResult});
typedef Builder$Mutation$UpdateCustomer = widgets.Widget Function(
    RunMutation$Mutation$UpdateCustomer,
    graphql.QueryResult<Mutation$UpdateCustomer>?);

class Mutation$UpdateCustomer$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateCustomer> {
  Mutation$UpdateCustomer$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UpdateCustomer? options,
      required Builder$Mutation$UpdateCustomer builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UpdateCustomer(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomer$updateCustomer {
  Mutation$UpdateCustomer$updateCustomer(
      {this.addresses, required this.$__typename});

  @override
  factory Mutation$UpdateCustomer$updateCustomer.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomer$updateCustomerFromJson(json);

  final List<Mutation$UpdateCustomer$updateCustomer$addresses>? addresses;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdateCustomer$updateCustomerToJson(this);
  int get hashCode {
    final l$addresses = addresses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addresses == null ? null : Object.hashAll(l$addresses.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomer$updateCustomer) ||
        runtimeType != other.runtimeType) return false;
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses != null && lOther$addresses != null) {
      if (l$addresses.length != lOther$addresses.length) return false;
      for (int i = 0; i < l$addresses.length; i++) {
        final l$addresses$entry = l$addresses[i];
        final lOther$addresses$entry = lOther$addresses[i];
        if (l$addresses$entry != lOther$addresses$entry) return false;
      }
    } else if (l$addresses != lOther$addresses) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomer$updateCustomer
    on Mutation$UpdateCustomer$updateCustomer {
  CopyWith$Mutation$UpdateCustomer$updateCustomer<
          Mutation$UpdateCustomer$updateCustomer>
      get copyWith =>
          CopyWith$Mutation$UpdateCustomer$updateCustomer(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  factory CopyWith$Mutation$UpdateCustomer$updateCustomer(
          Mutation$UpdateCustomer$updateCustomer instance,
          TRes Function(Mutation$UpdateCustomer$updateCustomer) then) =
      _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer;

  factory CopyWith$Mutation$UpdateCustomer$updateCustomer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer;

  TRes call(
      {List<Mutation$UpdateCustomer$updateCustomer$addresses>? addresses,
      String? $__typename});
  TRes addresses(
      Iterable<Mutation$UpdateCustomer$updateCustomer$addresses>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<
                      Mutation$UpdateCustomer$updateCustomer$addresses>>?)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer(
      this._instance, this._then);

  final Mutation$UpdateCustomer$updateCustomer _instance;

  final TRes Function(Mutation$UpdateCustomer$updateCustomer) _then;

  static const _undefined = {};

  TRes call(
          {Object? addresses = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomer$updateCustomer(
          addresses: addresses == _undefined
              ? _instance.addresses
              : (addresses
                  as List<Mutation$UpdateCustomer$updateCustomer$addresses>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes addresses(
          Iterable<Mutation$UpdateCustomer$updateCustomer$addresses>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<
                          Mutation$UpdateCustomer$updateCustomer$addresses>>?)
              _fn) =>
      call(
          addresses: _fn(_instance.addresses?.map((e) =>
              CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer(this._res);

  TRes _res;

  call(
          {List<Mutation$UpdateCustomer$updateCustomer$addresses>? addresses,
          String? $__typename}) =>
      _res;
  addresses(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomer$updateCustomer$addresses {
  Mutation$UpdateCustomer$updateCustomer$addresses(
      {this.city,
      this.company,
      required this.country,
      this.fullName,
      this.phoneNumber,
      required this.streetLine1,
      this.streetLine2,
      this.postalCode,
      required this.$__typename});

  @override
  factory Mutation$UpdateCustomer$updateCustomer$addresses.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomer$updateCustomer$addressesFromJson(json);

  final String? city;

  final String? company;

  final Mutation$UpdateCustomer$updateCustomer$addresses$country country;

  final String? fullName;

  final String? phoneNumber;

  final String streetLine1;

  final String? streetLine2;

  final String? postalCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdateCustomer$updateCustomer$addressesToJson(this);
  int get hashCode {
    final l$city = city;
    final l$company = company;
    final l$country = country;
    final l$fullName = fullName;
    final l$phoneNumber = phoneNumber;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$postalCode = postalCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$city,
      l$company,
      l$country,
      l$fullName,
      l$phoneNumber,
      l$streetLine1,
      l$streetLine2,
      l$postalCode,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomer$updateCustomer$addresses) ||
        runtimeType != other.runtimeType) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$streetLine1 = streetLine1;
    final lOther$streetLine1 = other.streetLine1;
    if (l$streetLine1 != lOther$streetLine1) return false;
    final l$streetLine2 = streetLine2;
    final lOther$streetLine2 = other.streetLine2;
    if (l$streetLine2 != lOther$streetLine2) return false;
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (l$postalCode != lOther$postalCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomer$updateCustomer$addresses
    on Mutation$UpdateCustomer$updateCustomer$addresses {
  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<
          Mutation$UpdateCustomer$updateCustomer$addresses>
      get copyWith => CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses(
          this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<TRes> {
  factory CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses(
          Mutation$UpdateCustomer$updateCustomer$addresses instance,
          TRes Function(Mutation$UpdateCustomer$updateCustomer$addresses)
              then) =
      _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses;

  factory CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses;

  TRes call(
      {String? city,
      String? company,
      Mutation$UpdateCustomer$updateCustomer$addresses$country? country,
      String? fullName,
      String? phoneNumber,
      String? streetLine1,
      String? streetLine2,
      String? postalCode,
      String? $__typename});
  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<TRes>
      get country;
}

class _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses(
      this._instance, this._then);

  final Mutation$UpdateCustomer$updateCustomer$addresses _instance;

  final TRes Function(Mutation$UpdateCustomer$updateCustomer$addresses) _then;

  static const _undefined = {};

  TRes call(
          {Object? city = _undefined,
          Object? company = _undefined,
          Object? country = _undefined,
          Object? fullName = _undefined,
          Object? phoneNumber = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? postalCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomer$updateCustomer$addresses(
          city: city == _undefined ? _instance.city : (city as String?),
          company:
              company == _undefined ? _instance.company : (company as String?),
          country: country == _undefined || country == null
              ? _instance.country
              : (country
                  as Mutation$UpdateCustomer$updateCustomer$addresses$country),
          fullName: fullName == _undefined
              ? _instance.fullName
              : (fullName as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          streetLine1: streetLine1 == _undefined || streetLine1 == null
              ? _instance.streetLine1
              : (streetLine1 as String),
          streetLine2: streetLine2 == _undefined
              ? _instance.streetLine2
              : (streetLine2 as String?),
          postalCode: postalCode == _undefined
              ? _instance.postalCode
              : (postalCode as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<TRes>
      get country {
    final local$country = _instance.country;
    return CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country(
        local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses<TRes>
    implements CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses(this._res);

  TRes _res;

  call(
          {String? city,
          String? company,
          Mutation$UpdateCustomer$updateCustomer$addresses$country? country,
          String? fullName,
          String? phoneNumber,
          String? streetLine1,
          String? streetLine2,
          String? postalCode,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<TRes>
      get country =>
          CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomer$updateCustomer$addresses$country {
  Mutation$UpdateCustomer$updateCustomer$addresses$country(
      {required this.code,
      required this.id,
      required this.name,
      required this.languageCode,
      required this.$__typename});

  @override
  factory Mutation$UpdateCustomer$updateCustomer$addresses$country.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomer$updateCustomer$addresses$countryFromJson(json);

  final String code;

  final String id;

  final String name;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdateCustomer$updateCustomer$addresses$countryToJson(this);
  int get hashCode {
    final l$code = code;
    final l$id = id;
    final l$name = name;
    final l$languageCode = languageCode;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$code, l$id, l$name, l$languageCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomer$updateCustomer$addresses$country) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomer$updateCustomer$addresses$country
    on Mutation$UpdateCustomer$updateCustomer$addresses$country {
  CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<
          Mutation$UpdateCustomer$updateCustomer$addresses$country>
      get copyWith =>
          CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country(
              this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<
    TRes> {
  factory CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country(
          Mutation$UpdateCustomer$updateCustomer$addresses$country instance,
          TRes Function(
                  Mutation$UpdateCustomer$updateCustomer$addresses$country)
              then) =
      _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country;

  factory CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country;

  TRes call(
      {String? code,
      String? id,
      String? name,
      Enum$LanguageCode? languageCode,
      String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country<
        TRes>
    implements
        CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<
            TRes> {
  _CopyWithImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country(
      this._instance, this._then);

  final Mutation$UpdateCustomer$updateCustomer$addresses$country _instance;

  final TRes Function(Mutation$UpdateCustomer$updateCustomer$addresses$country)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? code = _undefined,
          Object? id = _undefined,
          Object? name = _undefined,
          Object? languageCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomer$updateCustomer$addresses$country(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country<
        TRes>
    implements
        CopyWith$Mutation$UpdateCustomer$updateCustomer$addresses$country<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomer$updateCustomer$addresses$country(
      this._res);

  TRes _res;

  call(
          {String? code,
          String? id,
          String? name,
          Enum$LanguageCode? languageCode,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$UpdateCustomerAddress {
  Variables$Mutation$UpdateCustomerAddress({required this.input});

  @override
  factory Variables$Mutation$UpdateCustomerAddress.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$UpdateCustomerAddressFromJson(json);

  final Input$UpdateAddressInput input;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$UpdateCustomerAddressToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$UpdateCustomerAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$UpdateCustomerAddress<
          Variables$Mutation$UpdateCustomerAddress>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdateCustomerAddress(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$UpdateCustomerAddress<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCustomerAddress(
          Variables$Mutation$UpdateCustomerAddress instance,
          TRes Function(Variables$Mutation$UpdateCustomerAddress) then) =
      _CopyWithImpl$Variables$Mutation$UpdateCustomerAddress;

  factory CopyWith$Variables$Mutation$UpdateCustomerAddress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCustomerAddress;

  TRes call({Input$UpdateAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateCustomerAddress<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomerAddress<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCustomerAddress(
      this._instance, this._then);

  final Variables$Mutation$UpdateCustomerAddress _instance;

  final TRes Function(Variables$Mutation$UpdateCustomerAddress) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateCustomerAddress(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$UpdateAddressInput)));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCustomerAddress<TRes>
    implements CopyWith$Variables$Mutation$UpdateCustomerAddress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCustomerAddress(this._res);

  TRes _res;

  call({Input$UpdateAddressInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomerAddress {
  Mutation$UpdateCustomerAddress(
      {required this.updateCustomerAddress, required this.$__typename});

  @override
  factory Mutation$UpdateCustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomerAddressFromJson(json);

  final Mutation$UpdateCustomerAddress$updateCustomerAddress
      updateCustomerAddress;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$UpdateCustomerAddressToJson(this);
  int get hashCode {
    final l$updateCustomerAddress = updateCustomerAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateCustomerAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomerAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$updateCustomerAddress = updateCustomerAddress;
    final lOther$updateCustomerAddress = other.updateCustomerAddress;
    if (l$updateCustomerAddress != lOther$updateCustomerAddress) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomerAddress
    on Mutation$UpdateCustomerAddress {
  CopyWith$Mutation$UpdateCustomerAddress<Mutation$UpdateCustomerAddress>
      get copyWith => CopyWith$Mutation$UpdateCustomerAddress(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomerAddress<TRes> {
  factory CopyWith$Mutation$UpdateCustomerAddress(
          Mutation$UpdateCustomerAddress instance,
          TRes Function(Mutation$UpdateCustomerAddress) then) =
      _CopyWithImpl$Mutation$UpdateCustomerAddress;

  factory CopyWith$Mutation$UpdateCustomerAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomerAddress;

  TRes call(
      {Mutation$UpdateCustomerAddress$updateCustomerAddress?
          updateCustomerAddress,
      String? $__typename});
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes>
      get updateCustomerAddress;
}

class _CopyWithImpl$Mutation$UpdateCustomerAddress<TRes>
    implements CopyWith$Mutation$UpdateCustomerAddress<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomerAddress(this._instance, this._then);

  final Mutation$UpdateCustomerAddress _instance;

  final TRes Function(Mutation$UpdateCustomerAddress) _then;

  static const _undefined = {};

  TRes call(
          {Object? updateCustomerAddress = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomerAddress(
          updateCustomerAddress: updateCustomerAddress == _undefined ||
                  updateCustomerAddress == null
              ? _instance.updateCustomerAddress
              : (updateCustomerAddress
                  as Mutation$UpdateCustomerAddress$updateCustomerAddress),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes>
      get updateCustomerAddress {
    final local$updateCustomerAddress = _instance.updateCustomerAddress;
    return CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress(
        local$updateCustomerAddress, (e) => call(updateCustomerAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCustomerAddress<TRes>
    implements CopyWith$Mutation$UpdateCustomerAddress<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomerAddress(this._res);

  TRes _res;

  call(
          {Mutation$UpdateCustomerAddress$updateCustomerAddress?
              updateCustomerAddress,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes>
      get updateCustomerAddress =>
          CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress.stub(
              _res);
}

const documentNodeMutationUpdateCustomerAddress = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCustomerAddress'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'UpdateAddressInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'updateCustomerAddress'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'createdAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'city'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'country'),
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
                        name: NameNode(value: 'code'),
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
                        name: NameNode(value: 'languageCode'),
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
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'company'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'defaultBillingAddress'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'defaultShippingAddress'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'fullName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'phoneNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'streetLine1'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'streetLine2'),
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
Mutation$UpdateCustomerAddress _parserFn$Mutation$UpdateCustomerAddress(
        Map<String, dynamic> data) =>
    Mutation$UpdateCustomerAddress.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCustomerAddress = FutureOr<void>
    Function(dynamic, Mutation$UpdateCustomerAddress?);

class Options$Mutation$UpdateCustomerAddress
    extends graphql.MutationOptions<Mutation$UpdateCustomerAddress> {
  Options$Mutation$UpdateCustomerAddress(
      {String? operationName,
      required Variables$Mutation$UpdateCustomerAddress variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateCustomerAddress? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateCustomerAddress>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomerAddress(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateCustomerAddress,
            parserFn: _parserFn$Mutation$UpdateCustomerAddress);

  final OnMutationCompleted$Mutation$UpdateCustomerAddress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$UpdateCustomerAddress
    extends graphql.WatchQueryOptions<Mutation$UpdateCustomerAddress> {
  WatchOptions$Mutation$UpdateCustomerAddress(
      {String? operationName,
      required Variables$Mutation$UpdateCustomerAddress variables,
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
            document: documentNodeMutationUpdateCustomerAddress,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$UpdateCustomerAddress);
}

extension ClientExtension$Mutation$UpdateCustomerAddress
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCustomerAddress>>
      mutate$UpdateCustomerAddress(
              Options$Mutation$UpdateCustomerAddress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateCustomerAddress>
      watchMutation$UpdateCustomerAddress(
              WatchOptions$Mutation$UpdateCustomerAddress options) =>
          this.watchMutation(options);
}

class Mutation$UpdateCustomerAddress$HookResult {
  Mutation$UpdateCustomerAddress$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateCustomerAddress runMutation;

  final graphql.QueryResult<Mutation$UpdateCustomerAddress> result;
}

Mutation$UpdateCustomerAddress$HookResult useMutation$UpdateCustomerAddress(
    [WidgetOptions$Mutation$UpdateCustomerAddress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateCustomerAddress());
  return Mutation$UpdateCustomerAddress$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateCustomerAddress>
    useWatchMutation$UpdateCustomerAddress(
            WatchOptions$Mutation$UpdateCustomerAddress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateCustomerAddress
    extends graphql.MutationOptions<Mutation$UpdateCustomerAddress> {
  WidgetOptions$Mutation$UpdateCustomerAddress(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$UpdateCustomerAddress? onCompleted,
      graphql.OnMutationUpdate<Mutation$UpdateCustomerAddress>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateCustomerAddress(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationUpdateCustomerAddress,
            parserFn: _parserFn$Mutation$UpdateCustomerAddress);

  final OnMutationCompleted$Mutation$UpdateCustomerAddress?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$UpdateCustomerAddress
    = graphql.MultiSourceResult<Mutation$UpdateCustomerAddress> Function(
        Variables$Mutation$UpdateCustomerAddress,
        {Object? optimisticResult});
typedef Builder$Mutation$UpdateCustomerAddress = widgets.Widget Function(
    RunMutation$Mutation$UpdateCustomerAddress,
    graphql.QueryResult<Mutation$UpdateCustomerAddress>?);

class Mutation$UpdateCustomerAddress$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateCustomerAddress> {
  Mutation$UpdateCustomerAddress$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$UpdateCustomerAddress? options,
      required Builder$Mutation$UpdateCustomerAddress builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$UpdateCustomerAddress(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomerAddress$updateCustomerAddress {
  Mutation$UpdateCustomerAddress$updateCustomerAddress(
      {required this.createdAt,
      this.city,
      required this.country,
      required this.id,
      this.company,
      this.defaultBillingAddress,
      this.defaultShippingAddress,
      this.fullName,
      this.phoneNumber,
      required this.streetLine1,
      this.streetLine2,
      required this.$__typename});

  @override
  factory Mutation$UpdateCustomerAddress$updateCustomerAddress.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomerAddress$updateCustomerAddressFromJson(json);

  final String createdAt;

  final String? city;

  final Mutation$UpdateCustomerAddress$updateCustomerAddress$country country;

  final String id;

  final String? company;

  final bool? defaultBillingAddress;

  final bool? defaultShippingAddress;

  final String? fullName;

  final String? phoneNumber;

  final String streetLine1;

  final String? streetLine2;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdateCustomerAddress$updateCustomerAddressToJson(this);
  int get hashCode {
    final l$createdAt = createdAt;
    final l$city = city;
    final l$country = country;
    final l$id = id;
    final l$company = company;
    final l$defaultBillingAddress = defaultBillingAddress;
    final l$defaultShippingAddress = defaultShippingAddress;
    final l$fullName = fullName;
    final l$phoneNumber = phoneNumber;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createdAt,
      l$city,
      l$country,
      l$id,
      l$company,
      l$defaultBillingAddress,
      l$defaultShippingAddress,
      l$fullName,
      l$phoneNumber,
      l$streetLine1,
      l$streetLine2,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$UpdateCustomerAddress$updateCustomerAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) return false;
    final l$defaultBillingAddress = defaultBillingAddress;
    final lOther$defaultBillingAddress = other.defaultBillingAddress;
    if (l$defaultBillingAddress != lOther$defaultBillingAddress) return false;
    final l$defaultShippingAddress = defaultShippingAddress;
    final lOther$defaultShippingAddress = other.defaultShippingAddress;
    if (l$defaultShippingAddress != lOther$defaultShippingAddress) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$streetLine1 = streetLine1;
    final lOther$streetLine1 = other.streetLine1;
    if (l$streetLine1 != lOther$streetLine1) return false;
    final l$streetLine2 = streetLine2;
    final lOther$streetLine2 = other.streetLine2;
    if (l$streetLine2 != lOther$streetLine2) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomerAddress$updateCustomerAddress
    on Mutation$UpdateCustomerAddress$updateCustomerAddress {
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<
          Mutation$UpdateCustomerAddress$updateCustomerAddress>
      get copyWith =>
          CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress(
              this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<
    TRes> {
  factory CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress(
          Mutation$UpdateCustomerAddress$updateCustomerAddress instance,
          TRes Function(Mutation$UpdateCustomerAddress$updateCustomerAddress)
              then) =
      _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress;

  factory CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress;

  TRes call(
      {String? createdAt,
      String? city,
      Mutation$UpdateCustomerAddress$updateCustomerAddress$country? country,
      String? id,
      String? company,
      bool? defaultBillingAddress,
      bool? defaultShippingAddress,
      String? fullName,
      String? phoneNumber,
      String? streetLine1,
      String? streetLine2,
      String? $__typename});
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<TRes>
      get country;
}

class _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes>
    implements
        CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes> {
  _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress(
      this._instance, this._then);

  final Mutation$UpdateCustomerAddress$updateCustomerAddress _instance;

  final TRes Function(Mutation$UpdateCustomerAddress$updateCustomerAddress)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? createdAt = _undefined,
          Object? city = _undefined,
          Object? country = _undefined,
          Object? id = _undefined,
          Object? company = _undefined,
          Object? defaultBillingAddress = _undefined,
          Object? defaultShippingAddress = _undefined,
          Object? fullName = _undefined,
          Object? phoneNumber = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomerAddress$updateCustomerAddress(
          createdAt: createdAt == _undefined || createdAt == null
              ? _instance.createdAt
              : (createdAt as String),
          city: city == _undefined ? _instance.city : (city as String?),
          country: country == _undefined || country == null
              ? _instance.country
              : (country
                  as Mutation$UpdateCustomerAddress$updateCustomerAddress$country),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          company:
              company == _undefined ? _instance.company : (company as String?),
          defaultBillingAddress: defaultBillingAddress == _undefined
              ? _instance.defaultBillingAddress
              : (defaultBillingAddress as bool?),
          defaultShippingAddress: defaultShippingAddress == _undefined
              ? _instance.defaultShippingAddress
              : (defaultShippingAddress as bool?),
          fullName: fullName == _undefined
              ? _instance.fullName
              : (fullName as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          streetLine1: streetLine1 == _undefined || streetLine1 == null
              ? _instance.streetLine1
              : (streetLine1 as String),
          streetLine2: streetLine2 == _undefined
              ? _instance.streetLine2
              : (streetLine2 as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<TRes>
      get country {
    final local$country = _instance.country;
    return CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
        local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress<
        TRes>
    implements
        CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress(
      this._res);

  TRes _res;

  call(
          {String? createdAt,
          String? city,
          Mutation$UpdateCustomerAddress$updateCustomerAddress$country? country,
          String? id,
          String? company,
          bool? defaultBillingAddress,
          bool? defaultShippingAddress,
          String? fullName,
          String? phoneNumber,
          String? streetLine1,
          String? streetLine2,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<TRes>
      get country =>
          CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$UpdateCustomerAddress$updateCustomerAddress$country {
  Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
      {required this.name,
      required this.code,
      required this.id,
      required this.languageCode,
      required this.$__typename});

  @override
  factory Mutation$UpdateCustomerAddress$updateCustomerAddress$country.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$UpdateCustomerAddress$updateCustomerAddress$countryFromJson(
          json);

  final String name;

  final String code;

  final String id;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$UpdateCustomerAddress$updateCustomerAddress$countryToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$code = code;
    final l$id = id;
    final l$languageCode = languageCode;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$name, l$code, l$id, l$languageCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$UpdateCustomerAddress$updateCustomerAddress$country) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCustomerAddress$updateCustomerAddress$country
    on Mutation$UpdateCustomerAddress$updateCustomerAddress$country {
  CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
          Mutation$UpdateCustomerAddress$updateCustomerAddress$country>
      get copyWith =>
          CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
              this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
    TRes> {
  factory CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
          Mutation$UpdateCustomerAddress$updateCustomerAddress$country instance,
          TRes Function(
                  Mutation$UpdateCustomerAddress$updateCustomerAddress$country)
              then) =
      _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country;

  factory CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country;

  TRes call(
      {String? name,
      String? code,
      String? id,
      Enum$LanguageCode? languageCode,
      String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
        TRes>
    implements
        CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
            TRes> {
  _CopyWithImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
      this._instance, this._then);

  final Mutation$UpdateCustomerAddress$updateCustomerAddress$country _instance;

  final TRes Function(
      Mutation$UpdateCustomerAddress$updateCustomerAddress$country) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? code = _undefined,
          Object? id = _undefined,
          Object? languageCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
        TRes>
    implements
        CopyWith$Mutation$UpdateCustomerAddress$updateCustomerAddress$country<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
      this._res);

  TRes _res;

  call(
          {String? name,
          String? code,
          String? id,
          Enum$LanguageCode? languageCode,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer {
  Query$GetActiveCustomer({this.activeCustomer, required this.$__typename});

  @override
  factory Query$GetActiveCustomer.fromJson(Map<String, dynamic> json) =>
      _$Query$GetActiveCustomerFromJson(json);

  final Query$GetActiveCustomer$activeCustomer? activeCustomer;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetActiveCustomerToJson(this);
  int get hashCode {
    final l$activeCustomer = activeCustomer;
    final l$$__typename = $__typename;
    return Object.hashAll([l$activeCustomer, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer) || runtimeType != other.runtimeType)
      return false;
    final l$activeCustomer = activeCustomer;
    final lOther$activeCustomer = other.activeCustomer;
    if (l$activeCustomer != lOther$activeCustomer) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer on Query$GetActiveCustomer {
  CopyWith$Query$GetActiveCustomer<Query$GetActiveCustomer> get copyWith =>
      CopyWith$Query$GetActiveCustomer(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer<TRes> {
  factory CopyWith$Query$GetActiveCustomer(Query$GetActiveCustomer instance,
          TRes Function(Query$GetActiveCustomer) then) =
      _CopyWithImpl$Query$GetActiveCustomer;

  factory CopyWith$Query$GetActiveCustomer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer;

  TRes call(
      {Query$GetActiveCustomer$activeCustomer? activeCustomer,
      String? $__typename});
  CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> get activeCustomer;
}

class _CopyWithImpl$Query$GetActiveCustomer<TRes>
    implements CopyWith$Query$GetActiveCustomer<TRes> {
  _CopyWithImpl$Query$GetActiveCustomer(this._instance, this._then);

  final Query$GetActiveCustomer _instance;

  final TRes Function(Query$GetActiveCustomer) _then;

  static const _undefined = {};

  TRes call(
          {Object? activeCustomer = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer(
          activeCustomer: activeCustomer == _undefined
              ? _instance.activeCustomer
              : (activeCustomer as Query$GetActiveCustomer$activeCustomer?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> get activeCustomer {
    final local$activeCustomer = _instance.activeCustomer;
    return local$activeCustomer == null
        ? CopyWith$Query$GetActiveCustomer$activeCustomer.stub(_then(_instance))
        : CopyWith$Query$GetActiveCustomer$activeCustomer(
            local$activeCustomer, (e) => call(activeCustomer: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveCustomer<TRes>
    implements CopyWith$Query$GetActiveCustomer<TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer(this._res);

  TRes _res;

  call(
          {Query$GetActiveCustomer$activeCustomer? activeCustomer,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> get activeCustomer =>
      CopyWith$Query$GetActiveCustomer$activeCustomer.stub(_res);
}

const documentNodeQueryGetActiveCustomer = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetActiveCustomer'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'activeCustomer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Customer'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'emailAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'addresses'),
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
                              name: NameNode(value: 'postalCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'streetLine1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'streetLine2'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'fullName'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'country'),
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
                                    name: NameNode(value: 'code'),
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
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: 'phoneNumber'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'company'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'city'),
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
                        name: NameNode(value: 'firstName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'phoneNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'orders'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'totalItems'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
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
                                    name: NameNode(value: 'currencyCode'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'orderPlacedAt'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'lines'),
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
                                          name:
                                              NameNode(value: 'productVariant'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'name'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'priceWithTax'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: '__typename'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name:
                                              NameNode(value: 'featuredAsset'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'name'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name:
                                                    NameNode(value: 'preview'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: '__typename'),
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
                                    name: NameNode(value: 'active'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'discounts'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'amount'),
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
                                    name: NameNode(value: 'code'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'state'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'customer'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'firstName'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'lastName'),
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
                                    name: NameNode(value: 'shippingAddress'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'country'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'city'),
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
                                    name: NameNode(value: 'surcharges'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
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
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'couponCodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'payments'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'state'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'createdAt'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'method'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'amount'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name:
                                              NameNode(value: 'transactionId'),
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
                                    name: NameNode(value: 'totalQuantity'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'totalWithTax'),
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
Query$GetActiveCustomer _parserFn$Query$GetActiveCustomer(
        Map<String, dynamic> data) =>
    Query$GetActiveCustomer.fromJson(data);

class Options$Query$GetActiveCustomer
    extends graphql.QueryOptions<Query$GetActiveCustomer> {
  Options$Query$GetActiveCustomer(
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
            document: documentNodeQueryGetActiveCustomer,
            parserFn: _parserFn$Query$GetActiveCustomer);
}

class WatchOptions$Query$GetActiveCustomer
    extends graphql.WatchQueryOptions<Query$GetActiveCustomer> {
  WatchOptions$Query$GetActiveCustomer(
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
            document: documentNodeQueryGetActiveCustomer,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetActiveCustomer);
}

class FetchMoreOptions$Query$GetActiveCustomer
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveCustomer(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetActiveCustomer);
}

extension ClientExtension$Query$GetActiveCustomer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveCustomer>> query$GetActiveCustomer(
          [Options$Query$GetActiveCustomer? options]) async =>
      await this.query(options ?? Options$Query$GetActiveCustomer());
  graphql.ObservableQuery<Query$GetActiveCustomer> watchQuery$GetActiveCustomer(
          [WatchOptions$Query$GetActiveCustomer? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActiveCustomer());
  void writeQuery$GetActiveCustomer(
          {required Query$GetActiveCustomer data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetActiveCustomer)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetActiveCustomer? readQuery$GetActiveCustomer(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetActiveCustomer)),
        optimistic: optimistic);
    return result == null ? null : Query$GetActiveCustomer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActiveCustomer>
    useQuery$GetActiveCustomer([Options$Query$GetActiveCustomer? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetActiveCustomer());
graphql.ObservableQuery<Query$GetActiveCustomer>
    useWatchQuery$GetActiveCustomer(
            [WatchOptions$Query$GetActiveCustomer? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetActiveCustomer());

class Query$GetActiveCustomer$Widget
    extends graphql_flutter.Query<Query$GetActiveCustomer> {
  Query$GetActiveCustomer$Widget(
      {widgets.Key? key,
      Options$Query$GetActiveCustomer? options,
      required graphql_flutter.QueryBuilder<Query$GetActiveCustomer> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetActiveCustomer(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer {
  Query$GetActiveCustomer$activeCustomer(
      {required this.emailAddress,
      this.addresses,
      required this.firstName,
      required this.lastName,
      this.phoneNumber,
      required this.orders,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomerFromJson(json);

  final String emailAddress;

  final List<Query$GetActiveCustomer$activeCustomer$addresses>? addresses;

  final String firstName;

  final String lastName;

  final String? phoneNumber;

  final Query$GetActiveCustomer$activeCustomer$orders orders;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomerToJson(this);
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$addresses = addresses;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$emailAddress,
      l$addresses == null ? null : Object.hashAll(l$addresses.map((v) => v)),
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$orders,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer) ||
        runtimeType != other.runtimeType) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses != null && lOther$addresses != null) {
      if (l$addresses.length != lOther$addresses.length) return false;
      for (int i = 0; i < l$addresses.length; i++) {
        final l$addresses$entry = l$addresses[i];
        final lOther$addresses$entry = lOther$addresses[i];
        if (l$addresses$entry != lOther$addresses$entry) return false;
      }
    } else if (l$addresses != lOther$addresses) {
      return false;
    }

    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer
    on Query$GetActiveCustomer$activeCustomer {
  CopyWith$Query$GetActiveCustomer$activeCustomer<
          Query$GetActiveCustomer$activeCustomer>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer(
          Query$GetActiveCustomer$activeCustomer instance,
          TRes Function(Query$GetActiveCustomer$activeCustomer) then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer;

  TRes call(
      {String? emailAddress,
      List<Query$GetActiveCustomer$activeCustomer$addresses>? addresses,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      Query$GetActiveCustomer$activeCustomer$orders? orders,
      String? $__typename});
  TRes addresses(
      Iterable<Query$GetActiveCustomer$activeCustomer$addresses>? Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<
                      Query$GetActiveCustomer$activeCustomer$addresses>>?)
          _fn);
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> get orders;
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer) _then;

  static const _undefined = {};

  TRes call(
          {Object? emailAddress = _undefined,
          Object? addresses = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? orders = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer(
          emailAddress: emailAddress == _undefined || emailAddress == null
              ? _instance.emailAddress
              : (emailAddress as String),
          addresses: addresses == _undefined
              ? _instance.addresses
              : (addresses
                  as List<Query$GetActiveCustomer$activeCustomer$addresses>?),
          firstName: firstName == _undefined || firstName == null
              ? _instance.firstName
              : (firstName as String),
          lastName: lastName == _undefined || lastName == null
              ? _instance.lastName
              : (lastName as String),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          orders: orders == _undefined || orders == null
              ? _instance.orders
              : (orders as Query$GetActiveCustomer$activeCustomer$orders),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes addresses(
          Iterable<Query$GetActiveCustomer$activeCustomer$addresses>? Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<
                          Query$GetActiveCustomer$activeCustomer$addresses>>?)
              _fn) =>
      call(
          addresses: _fn(_instance.addresses?.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$addresses(
                  e, (i) => i)))?.toList());
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$GetActiveCustomer$activeCustomer$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer<TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer(this._res);

  TRes _res;

  call(
          {String? emailAddress,
          List<Query$GetActiveCustomer$activeCustomer$addresses>? addresses,
          String? firstName,
          String? lastName,
          String? phoneNumber,
          Query$GetActiveCustomer$activeCustomer$orders? orders,
          String? $__typename}) =>
      _res;
  addresses(_fn) => _res;
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> get orders =>
      CopyWith$Query$GetActiveCustomer$activeCustomer$orders.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$addresses {
  Query$GetActiveCustomer$activeCustomer$addresses(
      {required this.id,
      this.postalCode,
      required this.streetLine1,
      this.streetLine2,
      this.fullName,
      required this.country,
      this.phoneNumber,
      this.company,
      this.city,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$addresses.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$addressesFromJson(json);

  final String id;

  final String? postalCode;

  final String streetLine1;

  final String? streetLine2;

  final String? fullName;

  final Query$GetActiveCustomer$activeCustomer$addresses$country country;

  final String? phoneNumber;

  final String? company;

  final String? city;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$addressesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$postalCode = postalCode;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$fullName = fullName;
    final l$country = country;
    final l$phoneNumber = phoneNumber;
    final l$company = company;
    final l$city = city;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$postalCode,
      l$streetLine1,
      l$streetLine2,
      l$fullName,
      l$country,
      l$phoneNumber,
      l$company,
      l$city,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer$addresses) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (l$postalCode != lOther$postalCode) return false;
    final l$streetLine1 = streetLine1;
    final lOther$streetLine1 = other.streetLine1;
    if (l$streetLine1 != lOther$streetLine1) return false;
    final l$streetLine2 = streetLine2;
    final lOther$streetLine2 = other.streetLine2;
    if (l$streetLine2 != lOther$streetLine2) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$addresses
    on Query$GetActiveCustomer$activeCustomer$addresses {
  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<
          Query$GetActiveCustomer$activeCustomer$addresses>
      get copyWith => CopyWith$Query$GetActiveCustomer$activeCustomer$addresses(
          this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$addresses(
          Query$GetActiveCustomer$activeCustomer$addresses instance,
          TRes Function(Query$GetActiveCustomer$activeCustomer$addresses)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$addresses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses;

  TRes call(
      {String? id,
      String? postalCode,
      String? streetLine1,
      String? streetLine2,
      String? fullName,
      Query$GetActiveCustomer$activeCustomer$addresses$country? country,
      String? phoneNumber,
      String? company,
      String? city,
      String? $__typename});
  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<TRes>
      get country;
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$addresses _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer$addresses) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? postalCode = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? fullName = _undefined,
          Object? country = _undefined,
          Object? phoneNumber = _undefined,
          Object? company = _undefined,
          Object? city = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$addresses(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          postalCode: postalCode == _undefined
              ? _instance.postalCode
              : (postalCode as String?),
          streetLine1: streetLine1 == _undefined || streetLine1 == null
              ? _instance.streetLine1
              : (streetLine1 as String),
          streetLine2: streetLine2 == _undefined
              ? _instance.streetLine2
              : (streetLine2 as String?),
          fullName: fullName == _undefined
              ? _instance.fullName
              : (fullName as String?),
          country: country == _undefined || country == null
              ? _instance.country
              : (country
                  as Query$GetActiveCustomer$activeCustomer$addresses$country),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          company:
              company == _undefined ? _instance.company : (company as String?),
          city: city == _undefined ? _instance.city : (city as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<TRes>
      get country {
    final local$country = _instance.country;
    return CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country(
        local$country, (e) => call(country: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer$addresses<TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses(this._res);

  TRes _res;

  call(
          {String? id,
          String? postalCode,
          String? streetLine1,
          String? streetLine2,
          String? fullName,
          Query$GetActiveCustomer$activeCustomer$addresses$country? country,
          String? phoneNumber,
          String? company,
          String? city,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<TRes>
      get country =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$addresses$country {
  Query$GetActiveCustomer$activeCustomer$addresses$country(
      {required this.id,
      required this.name,
      required this.code,
      required this.languageCode,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$addresses$country.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$addresses$countryFromJson(json);

  final String id;

  final String name;

  final String code;

  @JsonKey(unknownEnumValue: Enum$LanguageCode.$unknown)
  final Enum$LanguageCode languageCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$addresses$countryToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$languageCode = languageCode;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$name, l$code, l$languageCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer$addresses$country) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$addresses$country
    on Query$GetActiveCustomer$activeCustomer$addresses$country {
  CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<
          Query$GetActiveCustomer$activeCustomer$addresses$country>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country(
          Query$GetActiveCustomer$activeCustomer$addresses$country instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$addresses$country)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses$country;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses$country;

  TRes call(
      {String? id,
      String? name,
      String? code,
      Enum$LanguageCode? languageCode,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses$country<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$addresses$country(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$addresses$country _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer$addresses$country)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? code = _undefined,
          Object? languageCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$addresses$country(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          languageCode: languageCode == _undefined || languageCode == null
              ? _instance.languageCode
              : (languageCode as Enum$LanguageCode),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses$country<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$addresses$country<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$addresses$country(
      this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? code,
          Enum$LanguageCode? languageCode,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders {
  Query$GetActiveCustomer$activeCustomer$orders(
      {required this.totalItems,
      required this.items,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$ordersFromJson(json);

  final int totalItems;

  final List<Query$GetActiveCustomer$activeCustomer$orders$items> items;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$ordersToJson(this);
  int get hashCode {
    final l$totalItems = totalItems;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$totalItems, Object.hashAll(l$items.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer$orders) ||
        runtimeType != other.runtimeType) return false;
    final l$totalItems = totalItems;
    final lOther$totalItems = other.totalItems;
    if (l$totalItems != lOther$totalItems) return false;
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

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders
    on Query$GetActiveCustomer$activeCustomer$orders {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders<
          Query$GetActiveCustomer$activeCustomer$orders>
      get copyWith => CopyWith$Query$GetActiveCustomer$activeCustomer$orders(
          this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders(
          Query$GetActiveCustomer$activeCustomer$orders instance,
          TRes Function(Query$GetActiveCustomer$activeCustomer$orders) then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders;

  TRes call(
      {int? totalItems,
      List<Query$GetActiveCustomer$activeCustomer$orders$items>? items,
      String? $__typename});
  TRes items(
      Iterable<Query$GetActiveCustomer$activeCustomer$orders$items> Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<
                      Query$GetActiveCustomer$activeCustomer$orders$items>>)
          _fn);
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer$orders) _then;

  static const _undefined = {};

  TRes call(
          {Object? totalItems = _undefined,
          Object? items = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders(
          totalItems: totalItems == _undefined || totalItems == null
              ? _instance.totalItems
              : (totalItems as int),
          items: items == _undefined || items == null
              ? _instance.items
              : (items
                  as List<Query$GetActiveCustomer$activeCustomer$orders$items>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes items(
          Iterable<Query$GetActiveCustomer$activeCustomer$orders$items> Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<
                          Query$GetActiveCustomer$activeCustomer$orders$items>>)
              _fn) =>
      call(
          items: _fn(_instance.items.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders<TRes>
    implements CopyWith$Query$GetActiveCustomer$activeCustomer$orders<TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders(this._res);

  TRes _res;

  call(
          {int? totalItems,
          List<Query$GetActiveCustomer$activeCustomer$orders$items>? items,
          String? $__typename}) =>
      _res;
  items(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items {
  Query$GetActiveCustomer$activeCustomer$orders$items(
      {required this.id,
      required this.currencyCode,
      this.orderPlacedAt,
      required this.lines,
      required this.active,
      required this.discounts,
      required this.code,
      required this.state,
      this.customer,
      this.shippingAddress,
      required this.surcharges,
      required this.couponCodes,
      this.payments,
      required this.totalQuantity,
      required this.totalWithTax,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$itemsFromJson(json);

  final String id;

  @JsonKey(unknownEnumValue: Enum$CurrencyCode.$unknown)
  final Enum$CurrencyCode currencyCode;

  final String? orderPlacedAt;

  final List<Query$GetActiveCustomer$activeCustomer$orders$items$lines> lines;

  final bool active;

  final List<Query$GetActiveCustomer$activeCustomer$orders$items$discounts>
      discounts;

  final String code;

  final String state;

  final Query$GetActiveCustomer$activeCustomer$orders$items$customer? customer;

  final Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress?
      shippingAddress;

  final List<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>
      surcharges;

  final List<String> couponCodes;

  final List<Query$GetActiveCustomer$activeCustomer$orders$items$payments>?
      payments;

  final int totalQuantity;

  final String totalWithTax;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$itemsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$currencyCode = currencyCode;
    final l$orderPlacedAt = orderPlacedAt;
    final l$lines = lines;
    final l$active = active;
    final l$discounts = discounts;
    final l$code = code;
    final l$state = state;
    final l$customer = customer;
    final l$shippingAddress = shippingAddress;
    final l$surcharges = surcharges;
    final l$couponCodes = couponCodes;
    final l$payments = payments;
    final l$totalQuantity = totalQuantity;
    final l$totalWithTax = totalWithTax;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$currencyCode,
      l$orderPlacedAt,
      Object.hashAll(l$lines.map((v) => v)),
      l$active,
      Object.hashAll(l$discounts.map((v) => v)),
      l$code,
      l$state,
      l$customer,
      l$shippingAddress,
      Object.hashAll(l$surcharges.map((v) => v)),
      Object.hashAll(l$couponCodes.map((v) => v)),
      l$payments == null ? null : Object.hashAll(l$payments.map((v) => v)),
      l$totalQuantity,
      l$totalWithTax,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer$orders$items) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$orderPlacedAt = orderPlacedAt;
    final lOther$orderPlacedAt = other.orderPlacedAt;
    if (l$orderPlacedAt != lOther$orderPlacedAt) return false;
    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) return false;
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) return false;
    }

    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) return false;
    final l$discounts = discounts;
    final lOther$discounts = other.discounts;
    if (l$discounts.length != lOther$discounts.length) return false;
    for (int i = 0; i < l$discounts.length; i++) {
      final l$discounts$entry = l$discounts[i];
      final lOther$discounts$entry = lOther$discounts[i];
      if (l$discounts$entry != lOther$discounts$entry) return false;
    }

    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) return false;
    final l$shippingAddress = shippingAddress;
    final lOther$shippingAddress = other.shippingAddress;
    if (l$shippingAddress != lOther$shippingAddress) return false;
    final l$surcharges = surcharges;
    final lOther$surcharges = other.surcharges;
    if (l$surcharges.length != lOther$surcharges.length) return false;
    for (int i = 0; i < l$surcharges.length; i++) {
      final l$surcharges$entry = l$surcharges[i];
      final lOther$surcharges$entry = lOther$surcharges[i];
      if (l$surcharges$entry != lOther$surcharges$entry) return false;
    }

    final l$couponCodes = couponCodes;
    final lOther$couponCodes = other.couponCodes;
    if (l$couponCodes.length != lOther$couponCodes.length) return false;
    for (int i = 0; i < l$couponCodes.length; i++) {
      final l$couponCodes$entry = l$couponCodes[i];
      final lOther$couponCodes$entry = lOther$couponCodes[i];
      if (l$couponCodes$entry != lOther$couponCodes$entry) return false;
    }

    final l$payments = payments;
    final lOther$payments = other.payments;
    if (l$payments != null && lOther$payments != null) {
      if (l$payments.length != lOther$payments.length) return false;
      for (int i = 0; i < l$payments.length; i++) {
        final l$payments$entry = l$payments[i];
        final lOther$payments$entry = lOther$payments[i];
        if (l$payments$entry != lOther$payments$entry) return false;
      }
    } else if (l$payments != lOther$payments) {
      return false;
    }

    final l$totalQuantity = totalQuantity;
    final lOther$totalQuantity = other.totalQuantity;
    if (l$totalQuantity != lOther$totalQuantity) return false;
    final l$totalWithTax = totalWithTax;
    final lOther$totalWithTax = other.totalWithTax;
    if (l$totalWithTax != lOther$totalWithTax) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items
    on Query$GetActiveCustomer$activeCustomer$orders$items {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<
          Query$GetActiveCustomer$activeCustomer$orders$items>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items(
          Query$GetActiveCustomer$activeCustomer$orders$items instance,
          TRes Function(Query$GetActiveCustomer$activeCustomer$orders$items)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items;

  TRes call(
      {String? id,
      Enum$CurrencyCode? currencyCode,
      String? orderPlacedAt,
      List<Query$GetActiveCustomer$activeCustomer$orders$items$lines>? lines,
      bool? active,
      List<Query$GetActiveCustomer$activeCustomer$orders$items$discounts>?
          discounts,
      String? code,
      String? state,
      Query$GetActiveCustomer$activeCustomer$orders$items$customer? customer,
      Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress?
          shippingAddress,
      List<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>?
          surcharges,
      List<String>? couponCodes,
      List<Query$GetActiveCustomer$activeCustomer$orders$items$payments>?
          payments,
      int? totalQuantity,
      String? totalWithTax,
      String? $__typename});
  TRes lines(
      Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$lines> Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
                      Query$GetActiveCustomer$activeCustomer$orders$items$lines>>)
          _fn);
  TRes discounts(
      Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$discounts> Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
                      Query$GetActiveCustomer$activeCustomer$orders$items$discounts>>)
          _fn);
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<TRes>
      get customer;
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
      TRes> get shippingAddress;
  TRes surcharges(
      Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges> Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
                      Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>>)
          _fn);
  TRes payments(
      Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$payments>? Function(
              Iterable<
                  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
                      Query$GetActiveCustomer$activeCustomer$orders$items$payments>>?)
          _fn);
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items<TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer$orders$items)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? currencyCode = _undefined,
          Object? orderPlacedAt = _undefined,
          Object? lines = _undefined,
          Object? active = _undefined,
          Object? discounts = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? customer = _undefined,
          Object? shippingAddress = _undefined,
          Object? surcharges = _undefined,
          Object? couponCodes = _undefined,
          Object? payments = _undefined,
          Object? totalQuantity = _undefined,
          Object? totalWithTax = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          currencyCode: currencyCode == _undefined || currencyCode == null
              ? _instance.currencyCode
              : (currencyCode as Enum$CurrencyCode),
          orderPlacedAt: orderPlacedAt == _undefined
              ? _instance.orderPlacedAt
              : (orderPlacedAt as String?),
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<
                  Query$GetActiveCustomer$activeCustomer$orders$items$lines>),
          active: active == _undefined || active == null
              ? _instance.active
              : (active as bool),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<
                  Query$GetActiveCustomer$activeCustomer$orders$items$discounts>),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          state: state == _undefined || state == null
              ? _instance.state
              : (state as String),
          customer: customer == _undefined ? _instance.customer : (customer as Query$GetActiveCustomer$activeCustomer$orders$items$customer?),
          shippingAddress: shippingAddress == _undefined ? _instance.shippingAddress : (shippingAddress as Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress?),
          surcharges: surcharges == _undefined || surcharges == null ? _instance.surcharges : (surcharges as List<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>),
          couponCodes: couponCodes == _undefined || couponCodes == null ? _instance.couponCodes : (couponCodes as List<String>),
          payments: payments == _undefined ? _instance.payments : (payments as List<Query$GetActiveCustomer$activeCustomer$orders$items$payments>?),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null ? _instance.totalQuantity : (totalQuantity as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null ? _instance.totalWithTax : (totalWithTax as String),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  TRes lines(
          Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$lines> Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
                          Query$GetActiveCustomer$activeCustomer$orders$items$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
                          Query$GetActiveCustomer$activeCustomer$orders$items$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
                  e, (i) => i))).toList());
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<TRes>
      get customer {
    final local$customer = _instance.customer;
    return local$customer == null
        ? CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer
            .stub(_then(_instance))
        : CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer(
            local$customer, (e) => call(customer: e));
  }

  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
      TRes> get shippingAddress {
    final local$shippingAddress = _instance.shippingAddress;
    return local$shippingAddress == null
        ? CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
            .stub(_then(_instance))
        : CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
            local$shippingAddress, (e) => call(shippingAddress: e));
  }

  TRes surcharges(
          Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges> Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
                          Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>>)
              _fn) =>
      call(
          surcharges: _fn(_instance.surcharges.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
                  e, (i) => i))).toList());
  TRes payments(
          Iterable<Query$GetActiveCustomer$activeCustomer$orders$items$payments>? Function(
                  Iterable<
                      CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
                          Query$GetActiveCustomer$activeCustomer$orders$items$payments>>?)
              _fn) =>
      call(
          payments: _fn(_instance.payments?.map((e) =>
              CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments(
                  e, (i) => i)))?.toList());
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items<TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items(
      this._res);

  TRes _res;

  call(
          {String? id,
          Enum$CurrencyCode? currencyCode,
          String? orderPlacedAt,
          List<Query$GetActiveCustomer$activeCustomer$orders$items$lines>?
              lines,
          bool? active,
          List<Query$GetActiveCustomer$activeCustomer$orders$items$discounts>?
              discounts,
          String? code,
          String? state,
          Query$GetActiveCustomer$activeCustomer$orders$items$customer?
              customer,
          Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress?
              shippingAddress,
          List<Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>?
              surcharges,
          List<String>? couponCodes,
          List<Query$GetActiveCustomer$activeCustomer$orders$items$payments>?
              payments,
          int? totalQuantity,
          String? totalWithTax,
          String? $__typename}) =>
      _res;
  lines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<TRes>
      get customer =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer
              .stub(_res);
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
          TRes>
      get shippingAddress =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
              .stub(_res);
  surcharges(_fn) => _res;
  payments(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$lines {
  Query$GetActiveCustomer$activeCustomer$orders$items$lines(
      {required this.id,
      required this.productVariant,
      this.featuredAsset,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$linesFromJson(json);

  final String id;

  final Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
      productVariant;

  final Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset?
      featuredAsset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$linesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$productVariant = productVariant;
    final l$featuredAsset = featuredAsset;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$productVariant, l$featuredAsset, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveCustomer$activeCustomer$orders$items$lines) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$productVariant = productVariant;
    final lOther$productVariant = other.productVariant;
    if (l$productVariant != lOther$productVariant) return false;
    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$lines
    on Query$GetActiveCustomer$activeCustomer$orders$items$lines {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
          Query$GetActiveCustomer$activeCustomer$orders$items$lines>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$lines)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines;

  TRes call(
      {String? id,
      Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant?
          productVariant,
      Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset?
          featuredAsset,
      String? $__typename});
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
      TRes> get productVariant;
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
      TRes> get featuredAsset;
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$lines _instance;

  final TRes Function(Query$GetActiveCustomer$activeCustomer$orders$items$lines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? productVariant = _undefined,
          Object? featuredAsset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$lines(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          productVariant: productVariant == _undefined || productVariant == null
              ? _instance.productVariant
              : (productVariant
                  as Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset
                  as Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
      TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
            .stub(_then(_instance))
        : CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines(
      this._res);

  TRes _res;

  call(
          {String? id,
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant?
              productVariant,
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset?
              featuredAsset,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
              .stub(_res);
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
          TRes>
      get featuredAsset =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant {
  Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
      {required this.name,
      required this.priceWithTax,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariantFromJson(
          json);

  final String name;

  final String priceWithTax;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariantToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$priceWithTax = priceWithTax;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$priceWithTax, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
    on Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
              instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant;

  TRes call({String? name, String? priceWithTax, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
      _instance;

  final TRes Function(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? priceWithTax = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              priceWithTax: priceWithTax == _undefined || priceWithTax == null
                  ? _instance.priceWithTax
                  : (priceWithTax as String),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
      this._res);

  TRes _res;

  call({String? name, String? priceWithTax, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset {
  Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
      {required this.name, required this.preview, required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAssetFromJson(
          json);

  final String name;

  final String preview;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAssetToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$preview = preview;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$preview, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset) ||
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

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
    on Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
              instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset;

  TRes call({String? name, String? preview, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
      _instance;

  final TRes Function(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? preview = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
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

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
      this._res);

  TRes _res;

  call({String? name, String? preview, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$discounts {
  Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
      {required this.amount, required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$discountsFromJson(
          json);

  final String amount;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$discountsToJson(
          this);
  int get hashCode {
    final l$amount = amount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$amount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$discounts) ||
        runtimeType != other.runtimeType) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$discounts
    on Query$GetActiveCustomer$activeCustomer$orders$items$discounts {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
          Query$GetActiveCustomer$activeCustomer$orders$items$discounts>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
          Query$GetActiveCustomer$activeCustomer$orders$items$discounts instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$discounts)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts;

  TRes call({String? amount, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$discounts _instance;

  final TRes Function(
      Query$GetActiveCustomer$activeCustomer$orders$items$discounts) _then;

  static const _undefined = {};

  TRes call({Object? amount = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$discounts<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
      this._res);

  TRes _res;

  call({String? amount, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$customer {
  Query$GetActiveCustomer$activeCustomer$orders$items$customer(
      {required this.firstName,
      required this.lastName,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$customer.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$customerFromJson(
          json);

  final String firstName;

  final String lastName;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$customerToJson(
          this);
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$firstName, l$lastName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$customer) ||
        runtimeType != other.runtimeType) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$customer
    on Query$GetActiveCustomer$activeCustomer$orders$items$customer {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
          Query$GetActiveCustomer$activeCustomer$orders$items$customer>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer(
          Query$GetActiveCustomer$activeCustomer$orders$items$customer instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$customer)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer;

  TRes call({String? firstName, String? lastName, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$customer _instance;

  final TRes Function(
      Query$GetActiveCustomer$activeCustomer$orders$items$customer) _then;

  static const _undefined = {};

  TRes call(
          {Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$customer(
          firstName: firstName == _undefined || firstName == null
              ? _instance.firstName
              : (firstName as String),
          lastName: lastName == _undefined || lastName == null
              ? _instance.lastName
              : (lastName as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$customer<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$customer(
      this._res);

  TRes _res;

  call({String? firstName, String? lastName, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress {
  Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
      {this.country, this.city, required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddressFromJson(
          json);

  final String? country;

  final String? city;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddressToJson(
          this);
  int get hashCode {
    final l$country = country;
    final l$city = city;
    final l$$__typename = $__typename;
    return Object.hashAll([l$country, l$city, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
    on Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
          Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
          Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
              instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress;

  TRes call({String? country, String? city, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
      _instance;

  final TRes Function(
          Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? country = _undefined,
          Object? city = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
          country:
              country == _undefined ? _instance.country : (country as String?),
          city: city == _undefined ? _instance.city : (city as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
      this._res);

  TRes _res;

  call({String? country, String? city, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$surcharges {
  Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
      {required this.price,
      required this.priceWithTax,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$surcharges.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$surchargesFromJson(
          json);

  final String price;

  final String priceWithTax;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$surchargesToJson(
          this);
  int get hashCode {
    final l$price = price;
    final l$priceWithTax = priceWithTax;
    final l$$__typename = $__typename;
    return Object.hashAll([l$price, l$priceWithTax, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$surcharges) ||
        runtimeType != other.runtimeType) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges
    on Query$GetActiveCustomer$activeCustomer$orders$items$surcharges {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
          Query$GetActiveCustomer$activeCustomer$orders$items$surcharges>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
          Query$GetActiveCustomer$activeCustomer$orders$items$surcharges instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$surcharges)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges;

  TRes call({String? price, String? priceWithTax, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$surcharges
      _instance;

  final TRes Function(
      Query$GetActiveCustomer$activeCustomer$orders$items$surcharges) _then;

  static const _undefined = {};

  TRes call(
          {Object? price = _undefined,
          Object? priceWithTax = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
          price: price == _undefined || price == null
              ? _instance.price
              : (price as String),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
      this._res);

  TRes _res;

  call({String? price, String? priceWithTax, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveCustomer$activeCustomer$orders$items$payments {
  Query$GetActiveCustomer$activeCustomer$orders$items$payments(
      {required this.state,
      required this.createdAt,
      required this.method,
      required this.amount,
      this.transactionId,
      required this.$__typename});

  @override
  factory Query$GetActiveCustomer$activeCustomer$orders$items$payments.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$paymentsFromJson(
          json);

  final String state;

  final String createdAt;

  final String method;

  final String amount;

  final String? transactionId;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveCustomer$activeCustomer$orders$items$paymentsToJson(
          this);
  int get hashCode {
    final l$state = state;
    final l$createdAt = createdAt;
    final l$method = method;
    final l$amount = amount;
    final l$transactionId = transactionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$state,
      l$createdAt,
      l$method,
      l$amount,
      l$transactionId,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Query$GetActiveCustomer$activeCustomer$orders$items$payments) ||
        runtimeType != other.runtimeType) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$method = method;
    final lOther$method = other.method;
    if (l$method != lOther$method) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$transactionId = transactionId;
    final lOther$transactionId = other.transactionId;
    if (l$transactionId != lOther$transactionId) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetActiveCustomer$activeCustomer$orders$items$payments
    on Query$GetActiveCustomer$activeCustomer$orders$items$payments {
  CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
          Query$GetActiveCustomer$activeCustomer$orders$items$payments>
      get copyWith =>
          CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
    TRes> {
  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments(
          Query$GetActiveCustomer$activeCustomer$orders$items$payments instance,
          TRes Function(
                  Query$GetActiveCustomer$activeCustomer$orders$items$payments)
              then) =
      _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments;

  factory CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments;

  TRes call(
      {String? state,
      String? createdAt,
      String? method,
      String? amount,
      String? transactionId,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
            TRes> {
  _CopyWithImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments(
      this._instance, this._then);

  final Query$GetActiveCustomer$activeCustomer$orders$items$payments _instance;

  final TRes Function(
      Query$GetActiveCustomer$activeCustomer$orders$items$payments) _then;

  static const _undefined = {};

  TRes call(
          {Object? state = _undefined,
          Object? createdAt = _undefined,
          Object? method = _undefined,
          Object? amount = _undefined,
          Object? transactionId = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveCustomer$activeCustomer$orders$items$payments(
          state: state == _undefined || state == null
              ? _instance.state
              : (state as String),
          createdAt: createdAt == _undefined || createdAt == null
              ? _instance.createdAt
              : (createdAt as String),
          method: method == _undefined || method == null
              ? _instance.method
              : (method as String),
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as String),
          transactionId: transactionId == _undefined
              ? _instance.transactionId
              : (transactionId as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
        TRes>
    implements
        CopyWith$Query$GetActiveCustomer$activeCustomer$orders$items$payments<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveCustomer$activeCustomer$orders$items$payments(
      this._res);

  TRes _res;

  call(
          {String? state,
          String? createdAt,
          String? method,
          String? amount,
          String? transactionId,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetCurrentUser {
  Query$GetCurrentUser({this.me, required this.$__typename});

  @override
  factory Query$GetCurrentUser.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCurrentUserFromJson(json);

  final Query$GetCurrentUser$me? me;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetCurrentUserToJson(this);
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([l$me, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCurrentUser) || runtimeType != other.runtimeType)
      return false;
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentUser on Query$GetCurrentUser {
  CopyWith$Query$GetCurrentUser<Query$GetCurrentUser> get copyWith =>
      CopyWith$Query$GetCurrentUser(this, (i) => i);
}

abstract class CopyWith$Query$GetCurrentUser<TRes> {
  factory CopyWith$Query$GetCurrentUser(Query$GetCurrentUser instance,
          TRes Function(Query$GetCurrentUser) then) =
      _CopyWithImpl$Query$GetCurrentUser;

  factory CopyWith$Query$GetCurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentUser;

  TRes call({Query$GetCurrentUser$me? me, String? $__typename});
  CopyWith$Query$GetCurrentUser$me<TRes> get me;
}

class _CopyWithImpl$Query$GetCurrentUser<TRes>
    implements CopyWith$Query$GetCurrentUser<TRes> {
  _CopyWithImpl$Query$GetCurrentUser(this._instance, this._then);

  final Query$GetCurrentUser _instance;

  final TRes Function(Query$GetCurrentUser) _then;

  static const _undefined = {};

  TRes call({Object? me = _undefined, Object? $__typename = _undefined}) =>
      _then(Query$GetCurrentUser(
          me: me == _undefined
              ? _instance.me
              : (me as Query$GetCurrentUser$me?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetCurrentUser$me<TRes> get me {
    final local$me = _instance.me;
    return local$me == null
        ? CopyWith$Query$GetCurrentUser$me.stub(_then(_instance))
        : CopyWith$Query$GetCurrentUser$me(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentUser<TRes>
    implements CopyWith$Query$GetCurrentUser<TRes> {
  _CopyWithStubImpl$Query$GetCurrentUser(this._res);

  TRes _res;

  call({Query$GetCurrentUser$me? me, String? $__typename}) => _res;
  CopyWith$Query$GetCurrentUser$me<TRes> get me =>
      CopyWith$Query$GetCurrentUser$me.stub(_res);
}

const documentNodeQueryGetCurrentUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCurrentUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'me'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CurrentUser'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'identifier'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'channels'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name:
                                          NameNode(value: 'CurrentUserChannel'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'id'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'permissions'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'token'),
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
Query$GetCurrentUser _parserFn$Query$GetCurrentUser(
        Map<String, dynamic> data) =>
    Query$GetCurrentUser.fromJson(data);

class Options$Query$GetCurrentUser
    extends graphql.QueryOptions<Query$GetCurrentUser> {
  Options$Query$GetCurrentUser(
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
            document: documentNodeQueryGetCurrentUser,
            parserFn: _parserFn$Query$GetCurrentUser);
}

class WatchOptions$Query$GetCurrentUser
    extends graphql.WatchQueryOptions<Query$GetCurrentUser> {
  WatchOptions$Query$GetCurrentUser(
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
            document: documentNodeQueryGetCurrentUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetCurrentUser);
}

class FetchMoreOptions$Query$GetCurrentUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCurrentUser(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetCurrentUser);
}

extension ClientExtension$Query$GetCurrentUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCurrentUser>> query$GetCurrentUser(
          [Options$Query$GetCurrentUser? options]) async =>
      await this.query(options ?? Options$Query$GetCurrentUser());
  graphql.ObservableQuery<Query$GetCurrentUser> watchQuery$GetCurrentUser(
          [WatchOptions$Query$GetCurrentUser? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCurrentUser());
  void writeQuery$GetCurrentUser(
          {required Query$GetCurrentUser data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetCurrentUser)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetCurrentUser? readQuery$GetCurrentUser({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetCurrentUser)),
        optimistic: optimistic);
    return result == null ? null : Query$GetCurrentUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCurrentUser> useQuery$GetCurrentUser(
        [Options$Query$GetCurrentUser? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCurrentUser());
graphql.ObservableQuery<Query$GetCurrentUser> useWatchQuery$GetCurrentUser(
        [WatchOptions$Query$GetCurrentUser? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetCurrentUser());

class Query$GetCurrentUser$Widget
    extends graphql_flutter.Query<Query$GetCurrentUser> {
  Query$GetCurrentUser$Widget(
      {widgets.Key? key,
      Options$Query$GetCurrentUser? options,
      required graphql_flutter.QueryBuilder<Query$GetCurrentUser> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetCurrentUser(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetCurrentUser$me {
  Query$GetCurrentUser$me(
      {required this.id,
      required this.identifier,
      required this.channels,
      required this.$__typename});

  @override
  factory Query$GetCurrentUser$me.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCurrentUser$meFromJson(json);

  final String id;

  final String identifier;

  final List<Query$GetCurrentUser$me$channels> channels;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetCurrentUser$meToJson(this);
  int get hashCode {
    final l$id = id;
    final l$identifier = identifier;
    final l$channels = channels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$identifier,
      Object.hashAll(l$channels.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCurrentUser$me) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$identifier = identifier;
    final lOther$identifier = other.identifier;
    if (l$identifier != lOther$identifier) return false;
    final l$channels = channels;
    final lOther$channels = other.channels;
    if (l$channels.length != lOther$channels.length) return false;
    for (int i = 0; i < l$channels.length; i++) {
      final l$channels$entry = l$channels[i];
      final lOther$channels$entry = lOther$channels[i];
      if (l$channels$entry != lOther$channels$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentUser$me on Query$GetCurrentUser$me {
  CopyWith$Query$GetCurrentUser$me<Query$GetCurrentUser$me> get copyWith =>
      CopyWith$Query$GetCurrentUser$me(this, (i) => i);
}

abstract class CopyWith$Query$GetCurrentUser$me<TRes> {
  factory CopyWith$Query$GetCurrentUser$me(Query$GetCurrentUser$me instance,
          TRes Function(Query$GetCurrentUser$me) then) =
      _CopyWithImpl$Query$GetCurrentUser$me;

  factory CopyWith$Query$GetCurrentUser$me.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentUser$me;

  TRes call(
      {String? id,
      String? identifier,
      List<Query$GetCurrentUser$me$channels>? channels,
      String? $__typename});
  TRes channels(
      Iterable<Query$GetCurrentUser$me$channels> Function(
              Iterable<
                  CopyWith$Query$GetCurrentUser$me$channels<
                      Query$GetCurrentUser$me$channels>>)
          _fn);
}

class _CopyWithImpl$Query$GetCurrentUser$me<TRes>
    implements CopyWith$Query$GetCurrentUser$me<TRes> {
  _CopyWithImpl$Query$GetCurrentUser$me(this._instance, this._then);

  final Query$GetCurrentUser$me _instance;

  final TRes Function(Query$GetCurrentUser$me) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? identifier = _undefined,
          Object? channels = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCurrentUser$me(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          identifier: identifier == _undefined || identifier == null
              ? _instance.identifier
              : (identifier as String),
          channels: channels == _undefined || channels == null
              ? _instance.channels
              : (channels as List<Query$GetCurrentUser$me$channels>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes channels(
          Iterable<Query$GetCurrentUser$me$channels> Function(
                  Iterable<
                      CopyWith$Query$GetCurrentUser$me$channels<
                          Query$GetCurrentUser$me$channels>>)
              _fn) =>
      call(
          channels: _fn(_instance.channels.map((e) =>
                  CopyWith$Query$GetCurrentUser$me$channels(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Query$GetCurrentUser$me<TRes>
    implements CopyWith$Query$GetCurrentUser$me<TRes> {
  _CopyWithStubImpl$Query$GetCurrentUser$me(this._res);

  TRes _res;

  call(
          {String? id,
          String? identifier,
          List<Query$GetCurrentUser$me$channels>? channels,
          String? $__typename}) =>
      _res;
  channels(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetCurrentUser$me$channels {
  Query$GetCurrentUser$me$channels(
      {required this.id,
      required this.permissions,
      required this.token,
      required this.$__typename});

  @override
  factory Query$GetCurrentUser$me$channels.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetCurrentUser$me$channelsFromJson(json);

  final String id;

  @JsonKey(unknownEnumValue: Enum$Permission.$unknown)
  final List<Enum$Permission> permissions;

  final String token;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCurrentUser$me$channelsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$permissions = permissions;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$permissions.map((v) => v)),
      l$token,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCurrentUser$me$channels) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) return false;
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) return false;
    }

    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentUser$me$channels
    on Query$GetCurrentUser$me$channels {
  CopyWith$Query$GetCurrentUser$me$channels<Query$GetCurrentUser$me$channels>
      get copyWith => CopyWith$Query$GetCurrentUser$me$channels(this, (i) => i);
}

abstract class CopyWith$Query$GetCurrentUser$me$channels<TRes> {
  factory CopyWith$Query$GetCurrentUser$me$channels(
          Query$GetCurrentUser$me$channels instance,
          TRes Function(Query$GetCurrentUser$me$channels) then) =
      _CopyWithImpl$Query$GetCurrentUser$me$channels;

  factory CopyWith$Query$GetCurrentUser$me$channels.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentUser$me$channels;

  TRes call(
      {String? id,
      List<Enum$Permission>? permissions,
      String? token,
      String? $__typename});
}

class _CopyWithImpl$Query$GetCurrentUser$me$channels<TRes>
    implements CopyWith$Query$GetCurrentUser$me$channels<TRes> {
  _CopyWithImpl$Query$GetCurrentUser$me$channels(this._instance, this._then);

  final Query$GetCurrentUser$me$channels _instance;

  final TRes Function(Query$GetCurrentUser$me$channels) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? permissions = _undefined,
          Object? token = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCurrentUser$me$channels(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          permissions: permissions == _undefined || permissions == null
              ? _instance.permissions
              : (permissions as List<Enum$Permission>),
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetCurrentUser$me$channels<TRes>
    implements CopyWith$Query$GetCurrentUser$me$channels<TRes> {
  _CopyWithStubImpl$Query$GetCurrentUser$me$channels(this._res);

  TRes _res;

  call(
          {String? id,
          List<Enum$Permission>? permissions,
          String? token,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$LogoutUser {
  Mutation$LogoutUser({required this.logout, required this.$__typename});

  @override
  factory Mutation$LogoutUser.fromJson(Map<String, dynamic> json) =>
      _$Mutation$LogoutUserFromJson(json);

  final Mutation$LogoutUser$logout logout;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$LogoutUserToJson(this);
  int get hashCode {
    final l$logout = logout;
    final l$$__typename = $__typename;
    return Object.hashAll([l$logout, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$LogoutUser) || runtimeType != other.runtimeType)
      return false;
    final l$logout = logout;
    final lOther$logout = other.logout;
    if (l$logout != lOther$logout) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$LogoutUser on Mutation$LogoutUser {
  CopyWith$Mutation$LogoutUser<Mutation$LogoutUser> get copyWith =>
      CopyWith$Mutation$LogoutUser(this, (i) => i);
}

abstract class CopyWith$Mutation$LogoutUser<TRes> {
  factory CopyWith$Mutation$LogoutUser(Mutation$LogoutUser instance,
          TRes Function(Mutation$LogoutUser) then) =
      _CopyWithImpl$Mutation$LogoutUser;

  factory CopyWith$Mutation$LogoutUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LogoutUser;

  TRes call({Mutation$LogoutUser$logout? logout, String? $__typename});
  CopyWith$Mutation$LogoutUser$logout<TRes> get logout;
}

class _CopyWithImpl$Mutation$LogoutUser<TRes>
    implements CopyWith$Mutation$LogoutUser<TRes> {
  _CopyWithImpl$Mutation$LogoutUser(this._instance, this._then);

  final Mutation$LogoutUser _instance;

  final TRes Function(Mutation$LogoutUser) _then;

  static const _undefined = {};

  TRes call({Object? logout = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$LogoutUser(
          logout: logout == _undefined || logout == null
              ? _instance.logout
              : (logout as Mutation$LogoutUser$logout),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$LogoutUser$logout<TRes> get logout {
    final local$logout = _instance.logout;
    return CopyWith$Mutation$LogoutUser$logout(
        local$logout, (e) => call(logout: e));
  }
}

class _CopyWithStubImpl$Mutation$LogoutUser<TRes>
    implements CopyWith$Mutation$LogoutUser<TRes> {
  _CopyWithStubImpl$Mutation$LogoutUser(this._res);

  TRes _res;

  call({Mutation$LogoutUser$logout? logout, String? $__typename}) => _res;
  CopyWith$Mutation$LogoutUser$logout<TRes> get logout =>
      CopyWith$Mutation$LogoutUser$logout.stub(_res);
}

const documentNodeMutationLogoutUser = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'LogoutUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'logout'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'success'),
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
Mutation$LogoutUser _parserFn$Mutation$LogoutUser(Map<String, dynamic> data) =>
    Mutation$LogoutUser.fromJson(data);
typedef OnMutationCompleted$Mutation$LogoutUser = FutureOr<void> Function(
    dynamic, Mutation$LogoutUser?);

class Options$Mutation$LogoutUser
    extends graphql.MutationOptions<Mutation$LogoutUser> {
  Options$Mutation$LogoutUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$LogoutUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$LogoutUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$LogoutUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationLogoutUser,
            parserFn: _parserFn$Mutation$LogoutUser);

  final OnMutationCompleted$Mutation$LogoutUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$LogoutUser
    extends graphql.WatchQueryOptions<Mutation$LogoutUser> {
  WatchOptions$Mutation$LogoutUser(
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
            document: documentNodeMutationLogoutUser,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$LogoutUser);
}

extension ClientExtension$Mutation$LogoutUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LogoutUser>> mutate$LogoutUser(
          [Options$Mutation$LogoutUser? options]) async =>
      await this.mutate(options ?? Options$Mutation$LogoutUser());
  graphql.ObservableQuery<Mutation$LogoutUser> watchMutation$LogoutUser(
          [WatchOptions$Mutation$LogoutUser? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$LogoutUser());
}

class Mutation$LogoutUser$HookResult {
  Mutation$LogoutUser$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$LogoutUser runMutation;

  final graphql.QueryResult<Mutation$LogoutUser> result;
}

Mutation$LogoutUser$HookResult useMutation$LogoutUser(
    [WidgetOptions$Mutation$LogoutUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$LogoutUser());
  return Mutation$LogoutUser$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LogoutUser> useWatchMutation$LogoutUser(
        [WatchOptions$Mutation$LogoutUser? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$LogoutUser());

class WidgetOptions$Mutation$LogoutUser
    extends graphql.MutationOptions<Mutation$LogoutUser> {
  WidgetOptions$Mutation$LogoutUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$LogoutUser? onCompleted,
      graphql.OnMutationUpdate<Mutation$LogoutUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFn$Mutation$LogoutUser(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationLogoutUser,
            parserFn: _parserFn$Mutation$LogoutUser);

  final OnMutationCompleted$Mutation$LogoutUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$LogoutUser
    = graphql.MultiSourceResult<Mutation$LogoutUser> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$LogoutUser = widgets.Widget Function(
    RunMutation$Mutation$LogoutUser, graphql.QueryResult<Mutation$LogoutUser>?);

class Mutation$LogoutUser$Widget
    extends graphql_flutter.Mutation<Mutation$LogoutUser> {
  Mutation$LogoutUser$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$LogoutUser? options,
      required Builder$Mutation$LogoutUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$LogoutUser(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$LogoutUser$logout {
  Mutation$LogoutUser$logout(
      {required this.success, required this.$__typename});

  @override
  factory Mutation$LogoutUser$logout.fromJson(Map<String, dynamic> json) =>
      _$Mutation$LogoutUser$logoutFromJson(json);

  final bool success;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$LogoutUser$logoutToJson(this);
  int get hashCode {
    final l$success = success;
    final l$$__typename = $__typename;
    return Object.hashAll([l$success, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$LogoutUser$logout) ||
        runtimeType != other.runtimeType) return false;
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$LogoutUser$logout
    on Mutation$LogoutUser$logout {
  CopyWith$Mutation$LogoutUser$logout<Mutation$LogoutUser$logout>
      get copyWith => CopyWith$Mutation$LogoutUser$logout(this, (i) => i);
}

abstract class CopyWith$Mutation$LogoutUser$logout<TRes> {
  factory CopyWith$Mutation$LogoutUser$logout(
          Mutation$LogoutUser$logout instance,
          TRes Function(Mutation$LogoutUser$logout) then) =
      _CopyWithImpl$Mutation$LogoutUser$logout;

  factory CopyWith$Mutation$LogoutUser$logout.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LogoutUser$logout;

  TRes call({bool? success, String? $__typename});
}

class _CopyWithImpl$Mutation$LogoutUser$logout<TRes>
    implements CopyWith$Mutation$LogoutUser$logout<TRes> {
  _CopyWithImpl$Mutation$LogoutUser$logout(this._instance, this._then);

  final Mutation$LogoutUser$logout _instance;

  final TRes Function(Mutation$LogoutUser$logout) _then;

  static const _undefined = {};

  TRes call({Object? success = _undefined, Object? $__typename = _undefined}) =>
      _then(Mutation$LogoutUser$logout(
          success: success == _undefined || success == null
              ? _instance.success
              : (success as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$LogoutUser$logout<TRes>
    implements CopyWith$Mutation$LogoutUser$logout<TRes> {
  _CopyWithStubImpl$Mutation$LogoutUser$logout(this._res);

  TRes _res;

  call({bool? success, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$RequestPasswordReset {
  Variables$Mutation$RequestPasswordReset({required this.email});

  @override
  factory Variables$Mutation$RequestPasswordReset.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$RequestPasswordResetFromJson(json);

  final String email;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$RequestPasswordResetToJson(this);
  int get hashCode {
    final l$email = email;
    return Object.hashAll([l$email]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$RequestPasswordReset) ||
        runtimeType != other.runtimeType) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    return true;
  }

  CopyWith$Variables$Mutation$RequestPasswordReset<
          Variables$Mutation$RequestPasswordReset>
      get copyWith =>
          CopyWith$Variables$Mutation$RequestPasswordReset(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$RequestPasswordReset<TRes> {
  factory CopyWith$Variables$Mutation$RequestPasswordReset(
          Variables$Mutation$RequestPasswordReset instance,
          TRes Function(Variables$Mutation$RequestPasswordReset) then) =
      _CopyWithImpl$Variables$Mutation$RequestPasswordReset;

  factory CopyWith$Variables$Mutation$RequestPasswordReset.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RequestPasswordReset;

  TRes call({String? email});
}

class _CopyWithImpl$Variables$Mutation$RequestPasswordReset<TRes>
    implements CopyWith$Variables$Mutation$RequestPasswordReset<TRes> {
  _CopyWithImpl$Variables$Mutation$RequestPasswordReset(
      this._instance, this._then);

  final Variables$Mutation$RequestPasswordReset _instance;

  final TRes Function(Variables$Mutation$RequestPasswordReset) _then;

  static const _undefined = {};

  TRes call({Object? email = _undefined}) =>
      _then(Variables$Mutation$RequestPasswordReset(
          email: email == _undefined || email == null
              ? _instance.email
              : (email as String)));
}

class _CopyWithStubImpl$Variables$Mutation$RequestPasswordReset<TRes>
    implements CopyWith$Variables$Mutation$RequestPasswordReset<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RequestPasswordReset(this._res);

  TRes _res;

  call({String? email}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RequestPasswordReset {
  Mutation$RequestPasswordReset(
      {this.requestPasswordReset, required this.$__typename});

  @override
  factory Mutation$RequestPasswordReset.fromJson(Map<String, dynamic> json) =>
      _$Mutation$RequestPasswordResetFromJson(json);

  final Mutation$RequestPasswordReset$requestPasswordReset?
      requestPasswordReset;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$RequestPasswordResetToJson(this);
  int get hashCode {
    final l$requestPasswordReset = requestPasswordReset;
    final l$$__typename = $__typename;
    return Object.hashAll([l$requestPasswordReset, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RequestPasswordReset) ||
        runtimeType != other.runtimeType) return false;
    final l$requestPasswordReset = requestPasswordReset;
    final lOther$requestPasswordReset = other.requestPasswordReset;
    if (l$requestPasswordReset != lOther$requestPasswordReset) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RequestPasswordReset
    on Mutation$RequestPasswordReset {
  CopyWith$Mutation$RequestPasswordReset<Mutation$RequestPasswordReset>
      get copyWith => CopyWith$Mutation$RequestPasswordReset(this, (i) => i);
}

abstract class CopyWith$Mutation$RequestPasswordReset<TRes> {
  factory CopyWith$Mutation$RequestPasswordReset(
          Mutation$RequestPasswordReset instance,
          TRes Function(Mutation$RequestPasswordReset) then) =
      _CopyWithImpl$Mutation$RequestPasswordReset;

  factory CopyWith$Mutation$RequestPasswordReset.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RequestPasswordReset;

  TRes call(
      {Mutation$RequestPasswordReset$requestPasswordReset? requestPasswordReset,
      String? $__typename});
  CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<TRes>
      get requestPasswordReset;
}

class _CopyWithImpl$Mutation$RequestPasswordReset<TRes>
    implements CopyWith$Mutation$RequestPasswordReset<TRes> {
  _CopyWithImpl$Mutation$RequestPasswordReset(this._instance, this._then);

  final Mutation$RequestPasswordReset _instance;

  final TRes Function(Mutation$RequestPasswordReset) _then;

  static const _undefined = {};

  TRes call(
          {Object? requestPasswordReset = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RequestPasswordReset(
          requestPasswordReset: requestPasswordReset == _undefined
              ? _instance.requestPasswordReset
              : (requestPasswordReset
                  as Mutation$RequestPasswordReset$requestPasswordReset?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<TRes>
      get requestPasswordReset {
    final local$requestPasswordReset = _instance.requestPasswordReset;
    return local$requestPasswordReset == null
        ? CopyWith$Mutation$RequestPasswordReset$requestPasswordReset.stub(
            _then(_instance))
        : CopyWith$Mutation$RequestPasswordReset$requestPasswordReset(
            local$requestPasswordReset, (e) => call(requestPasswordReset: e));
  }
}

class _CopyWithStubImpl$Mutation$RequestPasswordReset<TRes>
    implements CopyWith$Mutation$RequestPasswordReset<TRes> {
  _CopyWithStubImpl$Mutation$RequestPasswordReset(this._res);

  TRes _res;

  call(
          {Mutation$RequestPasswordReset$requestPasswordReset?
              requestPasswordReset,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<TRes>
      get requestPasswordReset =>
          CopyWith$Mutation$RequestPasswordReset$requestPasswordReset.stub(
              _res);
}

const documentNodeMutationRequestPasswordReset = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RequestPasswordReset'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'requestPasswordReset'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'emailAddress'),
                  value: VariableNode(name: NameNode(value: 'email')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: [])
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionErrorResult,
]);
Mutation$RequestPasswordReset _parserFn$Mutation$RequestPasswordReset(
        Map<String, dynamic> data) =>
    Mutation$RequestPasswordReset.fromJson(data);
typedef OnMutationCompleted$Mutation$RequestPasswordReset = FutureOr<void>
    Function(dynamic, Mutation$RequestPasswordReset?);

class Options$Mutation$RequestPasswordReset
    extends graphql.MutationOptions<Mutation$RequestPasswordReset> {
  Options$Mutation$RequestPasswordReset(
      {String? operationName,
      required Variables$Mutation$RequestPasswordReset variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RequestPasswordReset? onCompleted,
      graphql.OnMutationUpdate<Mutation$RequestPasswordReset>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$RequestPasswordReset(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRequestPasswordReset,
            parserFn: _parserFn$Mutation$RequestPasswordReset);

  final OnMutationCompleted$Mutation$RequestPasswordReset?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$RequestPasswordReset
    extends graphql.WatchQueryOptions<Mutation$RequestPasswordReset> {
  WatchOptions$Mutation$RequestPasswordReset(
      {String? operationName,
      required Variables$Mutation$RequestPasswordReset variables,
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
            document: documentNodeMutationRequestPasswordReset,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$RequestPasswordReset);
}

extension ClientExtension$Mutation$RequestPasswordReset
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RequestPasswordReset>>
      mutate$RequestPasswordReset(
              Options$Mutation$RequestPasswordReset options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RequestPasswordReset>
      watchMutation$RequestPasswordReset(
              WatchOptions$Mutation$RequestPasswordReset options) =>
          this.watchMutation(options);
}

class Mutation$RequestPasswordReset$HookResult {
  Mutation$RequestPasswordReset$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$RequestPasswordReset runMutation;

  final graphql.QueryResult<Mutation$RequestPasswordReset> result;
}

Mutation$RequestPasswordReset$HookResult useMutation$RequestPasswordReset(
    [WidgetOptions$Mutation$RequestPasswordReset? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RequestPasswordReset());
  return Mutation$RequestPasswordReset$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RequestPasswordReset>
    useWatchMutation$RequestPasswordReset(
            WatchOptions$Mutation$RequestPasswordReset options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RequestPasswordReset
    extends graphql.MutationOptions<Mutation$RequestPasswordReset> {
  WidgetOptions$Mutation$RequestPasswordReset(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RequestPasswordReset? onCompleted,
      graphql.OnMutationUpdate<Mutation$RequestPasswordReset>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$RequestPasswordReset(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRequestPasswordReset,
            parserFn: _parserFn$Mutation$RequestPasswordReset);

  final OnMutationCompleted$Mutation$RequestPasswordReset?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$RequestPasswordReset
    = graphql.MultiSourceResult<Mutation$RequestPasswordReset> Function(
        Variables$Mutation$RequestPasswordReset,
        {Object? optimisticResult});
typedef Builder$Mutation$RequestPasswordReset = widgets.Widget Function(
    RunMutation$Mutation$RequestPasswordReset,
    graphql.QueryResult<Mutation$RequestPasswordReset>?);

class Mutation$RequestPasswordReset$Widget
    extends graphql_flutter.Mutation<Mutation$RequestPasswordReset> {
  Mutation$RequestPasswordReset$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$RequestPasswordReset? options,
      required Builder$Mutation$RequestPasswordReset builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$RequestPasswordReset(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$RequestPasswordReset$requestPasswordReset {
  Mutation$RequestPasswordReset$requestPasswordReset(
      {required this.$__typename});

  @override
  factory Mutation$RequestPasswordReset$requestPasswordReset.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "NativeAuthStrategyError":
        return Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
            .fromJson(json);
      default:
        return _$Mutation$RequestPasswordReset$requestPasswordResetFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RequestPasswordReset$requestPasswordResetToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RequestPasswordReset$requestPasswordReset) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RequestPasswordReset$requestPasswordReset
    on Mutation$RequestPasswordReset$requestPasswordReset {
  CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<
          Mutation$RequestPasswordReset$requestPasswordReset>
      get copyWith =>
          CopyWith$Mutation$RequestPasswordReset$requestPasswordReset(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<
    TRes> {
  factory CopyWith$Mutation$RequestPasswordReset$requestPasswordReset(
          Mutation$RequestPasswordReset$requestPasswordReset instance,
          TRes Function(Mutation$RequestPasswordReset$requestPasswordReset)
              then) =
      _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset;

  factory CopyWith$Mutation$RequestPasswordReset$requestPasswordReset.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset<TRes>
    implements
        CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<TRes> {
  _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset(
      this._instance, this._then);

  final Mutation$RequestPasswordReset$requestPasswordReset _instance;

  final TRes Function(Mutation$RequestPasswordReset$requestPasswordReset) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$RequestPasswordReset$requestPasswordReset(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset<TRes>
    implements
        CopyWith$Mutation$RequestPasswordReset$requestPasswordReset<TRes> {
  _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
    implements
        Fragment$ErrorResult,
        Mutation$RequestPasswordReset$requestPasswordReset {
  Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
    on Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError {
  CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
          Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError>
      get copyWith =>
          CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
    TRes> {
  factory CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
          Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
              instance,
          TRes Function(
                  Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError)
              then) =
      _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError;

  factory CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
            TRes> {
  _CopyWithImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
      this._instance, this._then);

  final Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
      _instance;

  final TRes Function(
          Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError<
            TRes> {
  _CopyWithStubImpl$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$ResetPassword {
  Variables$Mutation$ResetPassword(
      {required this.token, required this.password});

  @override
  factory Variables$Mutation$ResetPassword.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$ResetPasswordFromJson(json);

  final String token;

  final String password;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$ResetPasswordToJson(this);
  int get hashCode {
    final l$token = token;
    final l$password = password;
    return Object.hashAll([l$token, l$password]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$ResetPassword) ||
        runtimeType != other.runtimeType) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    return true;
  }

  CopyWith$Variables$Mutation$ResetPassword<Variables$Mutation$ResetPassword>
      get copyWith => CopyWith$Variables$Mutation$ResetPassword(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$ResetPassword<TRes> {
  factory CopyWith$Variables$Mutation$ResetPassword(
          Variables$Mutation$ResetPassword instance,
          TRes Function(Variables$Mutation$ResetPassword) then) =
      _CopyWithImpl$Variables$Mutation$ResetPassword;

  factory CopyWith$Variables$Mutation$ResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResetPassword;

  TRes call({String? token, String? password});
}

class _CopyWithImpl$Variables$Mutation$ResetPassword<TRes>
    implements CopyWith$Variables$Mutation$ResetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$ResetPassword(this._instance, this._then);

  final Variables$Mutation$ResetPassword _instance;

  final TRes Function(Variables$Mutation$ResetPassword) _then;

  static const _undefined = {};

  TRes call({Object? token = _undefined, Object? password = _undefined}) =>
      _then(Variables$Mutation$ResetPassword(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          password: password == _undefined || password == null
              ? _instance.password
              : (password as String)));
}

class _CopyWithStubImpl$Variables$Mutation$ResetPassword<TRes>
    implements CopyWith$Variables$Mutation$ResetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResetPassword(this._res);

  TRes _res;

  call({String? token, String? password}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword {
  Mutation$ResetPassword(
      {required this.resetPassword, required this.$__typename});

  @override
  factory Mutation$ResetPassword.fromJson(Map<String, dynamic> json) =>
      _$Mutation$ResetPasswordFromJson(json);

  final Mutation$ResetPassword$resetPassword resetPassword;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$ResetPasswordToJson(this);
  int get hashCode {
    final l$resetPassword = resetPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([l$resetPassword, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$ResetPassword) || runtimeType != other.runtimeType)
      return false;
    final l$resetPassword = resetPassword;
    final lOther$resetPassword = other.resetPassword;
    if (l$resetPassword != lOther$resetPassword) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword on Mutation$ResetPassword {
  CopyWith$Mutation$ResetPassword<Mutation$ResetPassword> get copyWith =>
      CopyWith$Mutation$ResetPassword(this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword<TRes> {
  factory CopyWith$Mutation$ResetPassword(Mutation$ResetPassword instance,
          TRes Function(Mutation$ResetPassword) then) =
      _CopyWithImpl$Mutation$ResetPassword;

  factory CopyWith$Mutation$ResetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword;

  TRes call(
      {Mutation$ResetPassword$resetPassword? resetPassword,
      String? $__typename});
  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword;
}

class _CopyWithImpl$Mutation$ResetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword<TRes> {
  _CopyWithImpl$Mutation$ResetPassword(this._instance, this._then);

  final Mutation$ResetPassword _instance;

  final TRes Function(Mutation$ResetPassword) _then;

  static const _undefined = {};

  TRes call(
          {Object? resetPassword = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$ResetPassword(
          resetPassword: resetPassword == _undefined || resetPassword == null
              ? _instance.resetPassword
              : (resetPassword as Mutation$ResetPassword$resetPassword),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword {
    final local$resetPassword = _instance.resetPassword;
    return CopyWith$Mutation$ResetPassword$resetPassword(
        local$resetPassword, (e) => call(resetPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$ResetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword(this._res);

  TRes _res;

  call(
          {Mutation$ResetPassword$resetPassword? resetPassword,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$ResetPassword$resetPassword<TRes> get resetPassword =>
      CopyWith$Mutation$ResetPassword$resetPassword.stub(_res);
}

const documentNodeMutationResetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ResetPassword'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'token')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'resetPassword'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'password'),
                  value: VariableNode(name: NameNode(value: 'password'))),
              ArgumentNode(
                  name: NameNode(value: 'token'),
                  value: VariableNode(name: NameNode(value: 'token')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'CurrentUser'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'channels'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'token'),
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
                              name: NameNode(value: 'permissions'),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
  fragmentDefinitionErrorResult,
]);
Mutation$ResetPassword _parserFn$Mutation$ResetPassword(
        Map<String, dynamic> data) =>
    Mutation$ResetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$ResetPassword = FutureOr<void> Function(
    dynamic, Mutation$ResetPassword?);

class Options$Mutation$ResetPassword
    extends graphql.MutationOptions<Mutation$ResetPassword> {
  Options$Mutation$ResetPassword(
      {String? operationName,
      required Variables$Mutation$ResetPassword variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ResetPassword? onCompleted,
      graphql.OnMutationUpdate<Mutation$ResetPassword>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResetPassword(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationResetPassword,
            parserFn: _parserFn$Mutation$ResetPassword);

  final OnMutationCompleted$Mutation$ResetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$ResetPassword
    extends graphql.WatchQueryOptions<Mutation$ResetPassword> {
  WatchOptions$Mutation$ResetPassword(
      {String? operationName,
      required Variables$Mutation$ResetPassword variables,
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
            document: documentNodeMutationResetPassword,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$ResetPassword);
}

extension ClientExtension$Mutation$ResetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResetPassword>> mutate$ResetPassword(
          Options$Mutation$ResetPassword options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResetPassword> watchMutation$ResetPassword(
          WatchOptions$Mutation$ResetPassword options) =>
      this.watchMutation(options);
}

class Mutation$ResetPassword$HookResult {
  Mutation$ResetPassword$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ResetPassword runMutation;

  final graphql.QueryResult<Mutation$ResetPassword> result;
}

Mutation$ResetPassword$HookResult useMutation$ResetPassword(
    [WidgetOptions$Mutation$ResetPassword? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ResetPassword());
  return Mutation$ResetPassword$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ResetPassword> useWatchMutation$ResetPassword(
        WatchOptions$Mutation$ResetPassword options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ResetPassword
    extends graphql.MutationOptions<Mutation$ResetPassword> {
  WidgetOptions$Mutation$ResetPassword(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$ResetPassword? onCompleted,
      graphql.OnMutationUpdate<Mutation$ResetPassword>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ResetPassword(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationResetPassword,
            parserFn: _parserFn$Mutation$ResetPassword);

  final OnMutationCompleted$Mutation$ResetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$ResetPassword
    = graphql.MultiSourceResult<Mutation$ResetPassword>
        Function(Variables$Mutation$ResetPassword, {Object? optimisticResult});
typedef Builder$Mutation$ResetPassword = widgets.Widget Function(
    RunMutation$Mutation$ResetPassword,
    graphql.QueryResult<Mutation$ResetPassword>?);

class Mutation$ResetPassword$Widget
    extends graphql_flutter.Mutation<Mutation$ResetPassword> {
  Mutation$ResetPassword$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$ResetPassword? options,
      required Builder$Mutation$ResetPassword builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$ResetPassword(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword({required this.$__typename});

  @override
  factory Mutation$ResetPassword$resetPassword.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CurrentUser":
        return Mutation$ResetPassword$resetPassword$$CurrentUser.fromJson(json);
      case "NativeAuthStrategyError":
        return Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError
            .fromJson(json);
      case "NotVerifiedError":
        return Mutation$ResetPassword$resetPassword$$NotVerifiedError.fromJson(
            json);
      case "PasswordResetTokenExpiredError":
        return Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
            .fromJson(json);
      case "PasswordResetTokenInvalidError":
        return Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
            .fromJson(json);
      case "PasswordValidationError":
        return Mutation$ResetPassword$resetPassword$$PasswordValidationError
            .fromJson(json);
      default:
        return _$Mutation$ResetPassword$resetPasswordFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPasswordToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$ResetPassword$resetPassword) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword
    on Mutation$ResetPassword$resetPassword {
  CopyWith$Mutation$ResetPassword$resetPassword<
          Mutation$ResetPassword$resetPassword>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword(this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword(
          Mutation$ResetPassword$resetPassword instance,
          TRes Function(Mutation$ResetPassword$resetPassword) then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword;

  factory CopyWith$Mutation$ResetPassword$resetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword _instance;

  final TRes Function(Mutation$ResetPassword$resetPassword) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword<TRes>
    implements CopyWith$Mutation$ResetPassword$resetPassword<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$CurrentUser
    implements Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$CurrentUser(
      {required this.$__typename, required this.id, required this.channels});

  @override
  factory Mutation$ResetPassword$resetPassword$$CurrentUser.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$CurrentUserFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final List<Mutation$ResetPassword$resetPassword$$CurrentUser$channels>
      channels;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$CurrentUserToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$channels = channels;
    return Object.hashAll(
        [l$$__typename, l$id, Object.hashAll(l$channels.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$ResetPassword$resetPassword$$CurrentUser) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$channels = channels;
    final lOther$channels = other.channels;
    if (l$channels.length != lOther$channels.length) return false;
    for (int i = 0; i < l$channels.length; i++) {
      final l$channels$entry = l$channels[i];
      final lOther$channels$entry = lOther$channels[i];
      if (l$channels$entry != lOther$channels$entry) return false;
    }

    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$CurrentUser
    on Mutation$ResetPassword$resetPassword$$CurrentUser {
  CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser<
          Mutation$ResetPassword$resetPassword$$CurrentUser>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser(
          Mutation$ResetPassword$resetPassword$$CurrentUser instance,
          TRes Function(Mutation$ResetPassword$resetPassword$$CurrentUser)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser;

  TRes call(
      {String? $__typename,
      String? id,
      List<Mutation$ResetPassword$resetPassword$$CurrentUser$channels>?
          channels});
  TRes channels(
      Iterable<Mutation$ResetPassword$resetPassword$$CurrentUser$channels> Function(
              Iterable<
                  CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
                      Mutation$ResetPassword$resetPassword$$CurrentUser$channels>>)
          _fn);
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser<TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser<TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$CurrentUser _instance;

  final TRes Function(Mutation$ResetPassword$resetPassword$$CurrentUser) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? channels = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword$$CurrentUser(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          channels: channels == _undefined || channels == null
              ? _instance.channels
              : (channels as List<
                  Mutation$ResetPassword$resetPassword$$CurrentUser$channels>)));
  TRes channels(
          Iterable<Mutation$ResetPassword$resetPassword$$CurrentUser$channels> Function(
                  Iterable<
                      CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
                          Mutation$ResetPassword$resetPassword$$CurrentUser$channels>>)
              _fn) =>
      call(
          channels: _fn(_instance.channels.map((e) =>
              CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser<TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          List<Mutation$ResetPassword$resetPassword$$CurrentUser$channels>?
              channels}) =>
      _res;
  channels(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$CurrentUser$channels {
  Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
      {required this.token,
      required this.code,
      required this.permissions,
      required this.$__typename});

  @override
  factory Mutation$ResetPassword$resetPassword$$CurrentUser$channels.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$CurrentUser$channelsFromJson(
          json);

  final String token;

  final String code;

  @JsonKey(unknownEnumValue: Enum$Permission.$unknown)
  final List<Enum$Permission> permissions;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$CurrentUser$channelsToJson(this);
  int get hashCode {
    final l$token = token;
    final l$code = code;
    final l$permissions = permissions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$code,
      Object.hashAll(l$permissions.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$ResetPassword$resetPassword$$CurrentUser$channels) ||
        runtimeType != other.runtimeType) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (l$permissions.length != lOther$permissions.length) return false;
    for (int i = 0; i < l$permissions.length; i++) {
      final l$permissions$entry = l$permissions[i];
      final lOther$permissions$entry = lOther$permissions[i];
      if (l$permissions$entry != lOther$permissions$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$CurrentUser$channels
    on Mutation$ResetPassword$resetPassword$$CurrentUser$channels {
  CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
          Mutation$ResetPassword$resetPassword$$CurrentUser$channels>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
          Mutation$ResetPassword$resetPassword$$CurrentUser$channels instance,
          TRes Function(
                  Mutation$ResetPassword$resetPassword$$CurrentUser$channels)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels;

  TRes call(
      {String? token,
      String? code,
      List<Enum$Permission>? permissions,
      String? $__typename});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
            TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$CurrentUser$channels _instance;

  final TRes Function(
      Mutation$ResetPassword$resetPassword$$CurrentUser$channels) _then;

  static const _undefined = {};

  TRes call(
          {Object? token = _undefined,
          Object? code = _undefined,
          Object? permissions = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          permissions: permissions == _undefined || permissions == null
              ? _instance.permissions
              : (permissions as List<Enum$Permission>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$CurrentUser$channels<
            TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
      this._res);

  TRes _res;

  call(
          {String? token,
          String? code,
          List<Enum$Permission>? permissions,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError
    implements Fragment$ErrorResult, Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError
    on Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError {
  CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
          Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
          Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError instance,
          TRes Function(
                  Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
            TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError _instance;

  final TRes Function(
      Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError<
            TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$NotVerifiedError
    implements Fragment$ErrorResult, Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$NotVerifiedError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$ResetPassword$resetPassword$$NotVerifiedError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$NotVerifiedErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$NotVerifiedErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$ResetPassword$resetPassword$$NotVerifiedError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$NotVerifiedError
    on Mutation$ResetPassword$resetPassword$$NotVerifiedError {
  CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError<
          Mutation$ResetPassword$resetPassword$$NotVerifiedError>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError(
          Mutation$ResetPassword$resetPassword$$NotVerifiedError instance,
          TRes Function(Mutation$ResetPassword$resetPassword$$NotVerifiedError)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError<TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError<TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$NotVerifiedError _instance;

  final TRes Function(Mutation$ResetPassword$resetPassword$$NotVerifiedError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword$$NotVerifiedError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$NotVerifiedError<TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$NotVerifiedError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
    implements Fragment$ErrorResult, Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
    on Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError {
  CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
              instance,
          TRes Function(
                  Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
            TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
      _instance;

  final TRes Function(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError<
            TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
    implements Fragment$ErrorResult, Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
    on Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError {
  CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
              instance,
          TRes Function(
                  Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
            TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
      _instance;

  final TRes Function(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String),
              errorCode: errorCode == _undefined || errorCode == null
                  ? _instance.errorCode
                  : (errorCode as Enum$ErrorCode),
              message: message == _undefined || message == null
                  ? _instance.message
                  : (message as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError<
            TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$ResetPassword$resetPassword$$PasswordValidationError
    implements Fragment$ErrorResult, Mutation$ResetPassword$resetPassword {
  Mutation$ResetPassword$resetPassword$$PasswordValidationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$ResetPassword$resetPassword$$PasswordValidationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$ResetPassword$resetPassword$$PasswordValidationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$ResetPassword$resetPassword$$PasswordValidationErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$ResetPassword$resetPassword$$PasswordValidationError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$ResetPassword$resetPassword$$PasswordValidationError
    on Mutation$ResetPassword$resetPassword$$PasswordValidationError {
  CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
          Mutation$ResetPassword$resetPassword$$PasswordValidationError>
      get copyWith =>
          CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
    TRes> {
  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError(
          Mutation$ResetPassword$resetPassword$$PasswordValidationError instance,
          TRes Function(
                  Mutation$ResetPassword$resetPassword$$PasswordValidationError)
              then) =
      _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError;

  factory CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
            TRes> {
  _CopyWithImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError(
      this._instance, this._then);

  final Mutation$ResetPassword$resetPassword$$PasswordValidationError _instance;

  final TRes Function(
      Mutation$ResetPassword$resetPassword$$PasswordValidationError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$ResetPassword$resetPassword$$PasswordValidationError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String)));
}

class _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
        TRes>
    implements
        CopyWith$Mutation$ResetPassword$resetPassword$$PasswordValidationError<
            TRes> {
  _CopyWithStubImpl$Mutation$ResetPassword$resetPassword$$PasswordValidationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}
