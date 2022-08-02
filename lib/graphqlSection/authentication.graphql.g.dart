// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$ErrorResult _$Fragment$ErrorResultFromJson(
        Map<String, dynamic> json) =>
    Fragment$ErrorResult(
      errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
          unknownValue: Enum$ErrorCode.$unknown),
      message: json['message'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$ErrorResultToJson(
        Fragment$ErrorResult instance) =>
    <String, dynamic>{
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
      '__typename': instance.$__typename,
    };

const _$Enum$ErrorCodeEnumMap = {
  Enum$ErrorCode.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
  Enum$ErrorCode.NATIVE_AUTH_STRATEGY_ERROR: 'NATIVE_AUTH_STRATEGY_ERROR',
  Enum$ErrorCode.INVALID_CREDENTIALS_ERROR: 'INVALID_CREDENTIALS_ERROR',
  Enum$ErrorCode.ORDER_STATE_TRANSITION_ERROR: 'ORDER_STATE_TRANSITION_ERROR',
  Enum$ErrorCode.EMAIL_ADDRESS_CONFLICT_ERROR: 'EMAIL_ADDRESS_CONFLICT_ERROR',
  Enum$ErrorCode.ORDER_LIMIT_ERROR: 'ORDER_LIMIT_ERROR',
  Enum$ErrorCode.NEGATIVE_QUANTITY_ERROR: 'NEGATIVE_QUANTITY_ERROR',
  Enum$ErrorCode.INSUFFICIENT_STOCK_ERROR: 'INSUFFICIENT_STOCK_ERROR',
  Enum$ErrorCode.COUPON_CODE_INVALID_ERROR: 'COUPON_CODE_INVALID_ERROR',
  Enum$ErrorCode.COUPON_CODE_EXPIRED_ERROR: 'COUPON_CODE_EXPIRED_ERROR',
  Enum$ErrorCode.COUPON_CODE_LIMIT_ERROR: 'COUPON_CODE_LIMIT_ERROR',
  Enum$ErrorCode.ORDER_MODIFICATION_ERROR: 'ORDER_MODIFICATION_ERROR',
  Enum$ErrorCode.INELIGIBLE_SHIPPING_METHOD_ERROR:
      'INELIGIBLE_SHIPPING_METHOD_ERROR',
  Enum$ErrorCode.ORDER_PAYMENT_STATE_ERROR: 'ORDER_PAYMENT_STATE_ERROR',
  Enum$ErrorCode.INELIGIBLE_PAYMENT_METHOD_ERROR:
      'INELIGIBLE_PAYMENT_METHOD_ERROR',
  Enum$ErrorCode.PAYMENT_FAILED_ERROR: 'PAYMENT_FAILED_ERROR',
  Enum$ErrorCode.PAYMENT_DECLINED_ERROR: 'PAYMENT_DECLINED_ERROR',
  Enum$ErrorCode.ALREADY_LOGGED_IN_ERROR: 'ALREADY_LOGGED_IN_ERROR',
  Enum$ErrorCode.MISSING_PASSWORD_ERROR: 'MISSING_PASSWORD_ERROR',
  Enum$ErrorCode.PASSWORD_VALIDATION_ERROR: 'PASSWORD_VALIDATION_ERROR',
  Enum$ErrorCode.PASSWORD_ALREADY_SET_ERROR: 'PASSWORD_ALREADY_SET_ERROR',
  Enum$ErrorCode.VERIFICATION_TOKEN_INVALID_ERROR:
      'VERIFICATION_TOKEN_INVALID_ERROR',
  Enum$ErrorCode.VERIFICATION_TOKEN_EXPIRED_ERROR:
      'VERIFICATION_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR:
      'IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR',
  Enum$ErrorCode.IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR:
      'IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.PASSWORD_RESET_TOKEN_INVALID_ERROR:
      'PASSWORD_RESET_TOKEN_INVALID_ERROR',
  Enum$ErrorCode.PASSWORD_RESET_TOKEN_EXPIRED_ERROR:
      'PASSWORD_RESET_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.NOT_VERIFIED_ERROR: 'NOT_VERIFIED_ERROR',
  Enum$ErrorCode.NO_ACTIVE_ORDER_ERROR: 'NO_ACTIVE_ORDER_ERROR',
  Enum$ErrorCode.$unknown: r'$unknown',
};

Variables$Mutation$SignIn _$Variables$Mutation$SignInFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$SignIn(
      emailAddress: json['emailAddress'] as String,
      password: json['password'] as String,
      rememberMe: json['rememberMe'] as bool,
    );

Map<String, dynamic> _$Variables$Mutation$SignInToJson(
        Variables$Mutation$SignIn instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'rememberMe': instance.rememberMe,
    };

Mutation$SignIn _$Mutation$SignInFromJson(Map<String, dynamic> json) =>
    Mutation$SignIn(
      login:
          Mutation$SignIn$login.fromJson(json['login'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$SignInToJson(Mutation$SignIn instance) =>
    <String, dynamic>{
      'login': instance.login.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$SignIn$login _$Mutation$SignIn$loginFromJson(
        Map<String, dynamic> json) =>
    Mutation$SignIn$login(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$SignIn$loginToJson(
        Mutation$SignIn$login instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$SignIn$login$$CurrentUser _$Mutation$SignIn$login$$CurrentUserFromJson(
        Map<String, dynamic> json) =>
    Mutation$SignIn$login$$CurrentUser(
      $__typename: json['__typename'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$Mutation$SignIn$login$$CurrentUserToJson(
        Mutation$SignIn$login$$CurrentUser instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
    };

Mutation$SignIn$login$$NativeAuthStrategyError
    _$Mutation$SignIn$login$$NativeAuthStrategyErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SignIn$login$$NativeAuthStrategyError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic> _$Mutation$SignIn$login$$NativeAuthStrategyErrorToJson(
        Mutation$SignIn$login$$NativeAuthStrategyError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Mutation$SignIn$login$$InvalidCredentialsError
    _$Mutation$SignIn$login$$InvalidCredentialsErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SignIn$login$$InvalidCredentialsError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic> _$Mutation$SignIn$login$$InvalidCredentialsErrorToJson(
        Mutation$SignIn$login$$InvalidCredentialsError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Mutation$SignIn$login$$NotVerifiedError
    _$Mutation$SignIn$login$$NotVerifiedErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SignIn$login$$NotVerifiedError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic> _$Mutation$SignIn$login$$NotVerifiedErrorToJson(
        Mutation$SignIn$login$$NotVerifiedError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Variables$Mutation$Register _$Variables$Mutation$RegisterFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$Register(
      input: Input$RegisterCustomerInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$RegisterToJson(
        Variables$Mutation$Register instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Mutation$Register _$Mutation$RegisterFromJson(Map<String, dynamic> json) =>
    Mutation$Register(
      registerCustomerAccount:
          Mutation$Register$registerCustomerAccount.fromJson(
              json['registerCustomerAccount'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$RegisterToJson(Mutation$Register instance) =>
    <String, dynamic>{
      'registerCustomerAccount': instance.registerCustomerAccount.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$Register$registerCustomerAccount
    _$Mutation$Register$registerCustomerAccountFromJson(
            Map<String, dynamic> json) =>
        Mutation$Register$registerCustomerAccount(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$Register$registerCustomerAccountToJson(
        Mutation$Register$registerCustomerAccount instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$Register$registerCustomerAccount$$Success
    _$Mutation$Register$registerCustomerAccount$$SuccessFromJson(
            Map<String, dynamic> json) =>
        Mutation$Register$registerCustomerAccount$$Success(
          $__typename: json['__typename'] as String,
          success: json['success'] as bool,
        );

Map<String, dynamic> _$Mutation$Register$registerCustomerAccount$$SuccessToJson(
        Mutation$Register$registerCustomerAccount$$Success instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'success': instance.success,
    };

Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
    _$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$Register$registerCustomerAccount$$NativeAuthStrategyErrorToJson(
            Mutation$Register$registerCustomerAccount$$NativeAuthStrategyError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$Register$registerCustomerAccount$$MissingPasswordError
    _$Mutation$Register$registerCustomerAccount$$MissingPasswordErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$Register$registerCustomerAccount$$MissingPasswordError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$Register$registerCustomerAccount$$MissingPasswordErrorToJson(
            Mutation$Register$registerCustomerAccount$$MissingPasswordError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$Register$registerCustomerAccount$$PasswordValidationError
    _$Mutation$Register$registerCustomerAccount$$PasswordValidationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$Register$registerCustomerAccount$$PasswordValidationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$Register$registerCustomerAccount$$PasswordValidationErrorToJson(
            Mutation$Register$registerCustomerAccount$$PasswordValidationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };
