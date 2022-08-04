import 'cart_data.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
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
      case "NativeAuthStrategyError":
        return Mutation$SignIn$login$$NativeAuthStrategyError.fromJson(json);
      case "InvalidCredentialsError":
        return Mutation$SignIn$login$$InvalidCredentialsError.fromJson(json);
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
      {required this.$__typename, required this.id});

  @override
  factory Mutation$SignIn$login$$CurrentUser.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SignIn$login$$CurrentUserFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  Map<String, dynamic> toJson() =>
      _$Mutation$SignIn$login$$CurrentUserToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    return Object.hashAll([l$$__typename, l$id]);
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

  TRes call({String? $__typename, String? id});
}

class _CopyWithImpl$Mutation$SignIn$login$$CurrentUser<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser<TRes> {
  _CopyWithImpl$Mutation$SignIn$login$$CurrentUser(this._instance, this._then);

  final Mutation$SignIn$login$$CurrentUser _instance;

  final TRes Function(Mutation$SignIn$login$$CurrentUser) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined, Object? id = _undefined}) =>
      _then(Mutation$SignIn$login$$CurrentUser(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser<TRes>
    implements CopyWith$Mutation$SignIn$login$$CurrentUser<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$login$$CurrentUser(this._res);

  TRes _res;

  call({String? $__typename, String? id}) => _res;
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
      case "NativeAuthStrategyError":
        return Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
            .fromJson(json);
      case "MissingPasswordError":
        return Mutation$Register$registerCustomerAccount$$MissingPasswordError
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
      case "NativeAuthStrategyError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
            .fromJson(json);
      case "MissingPasswordError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
            .fromJson(json);
      case "PasswordValidationError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
            .fromJson(json);
      case "PasswordAlreadySetError":
        return Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
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
