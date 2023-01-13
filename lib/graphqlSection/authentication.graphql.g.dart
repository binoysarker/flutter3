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
  Enum$ErrorCode.ALREADY_LOGGED_IN_ERROR: 'ALREADY_LOGGED_IN_ERROR',
  Enum$ErrorCode.COUPON_CODE_EXPIRED_ERROR: 'COUPON_CODE_EXPIRED_ERROR',
  Enum$ErrorCode.COUPON_CODE_INVALID_ERROR: 'COUPON_CODE_INVALID_ERROR',
  Enum$ErrorCode.COUPON_CODE_LIMIT_ERROR: 'COUPON_CODE_LIMIT_ERROR',
  Enum$ErrorCode.EMAIL_ADDRESS_CONFLICT_ERROR: 'EMAIL_ADDRESS_CONFLICT_ERROR',
  Enum$ErrorCode.IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR:
      'IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR:
      'IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR',
  Enum$ErrorCode.INELIGIBLE_PAYMENT_METHOD_ERROR:
      'INELIGIBLE_PAYMENT_METHOD_ERROR',
  Enum$ErrorCode.INELIGIBLE_SHIPPING_METHOD_ERROR:
      'INELIGIBLE_SHIPPING_METHOD_ERROR',
  Enum$ErrorCode.INSUFFICIENT_STOCK_ERROR: 'INSUFFICIENT_STOCK_ERROR',
  Enum$ErrorCode.INVALID_CREDENTIALS_ERROR: 'INVALID_CREDENTIALS_ERROR',
  Enum$ErrorCode.MISSING_PASSWORD_ERROR: 'MISSING_PASSWORD_ERROR',
  Enum$ErrorCode.NATIVE_AUTH_STRATEGY_ERROR: 'NATIVE_AUTH_STRATEGY_ERROR',
  Enum$ErrorCode.NEGATIVE_QUANTITY_ERROR: 'NEGATIVE_QUANTITY_ERROR',
  Enum$ErrorCode.NOT_VERIFIED_ERROR: 'NOT_VERIFIED_ERROR',
  Enum$ErrorCode.NO_ACTIVE_ORDER_ERROR: 'NO_ACTIVE_ORDER_ERROR',
  Enum$ErrorCode.ORDER_LIMIT_ERROR: 'ORDER_LIMIT_ERROR',
  Enum$ErrorCode.ORDER_MODIFICATION_ERROR: 'ORDER_MODIFICATION_ERROR',
  Enum$ErrorCode.ORDER_PAYMENT_STATE_ERROR: 'ORDER_PAYMENT_STATE_ERROR',
  Enum$ErrorCode.ORDER_STATE_TRANSITION_ERROR: 'ORDER_STATE_TRANSITION_ERROR',
  Enum$ErrorCode.PASSWORD_ALREADY_SET_ERROR: 'PASSWORD_ALREADY_SET_ERROR',
  Enum$ErrorCode.PASSWORD_RESET_TOKEN_EXPIRED_ERROR:
      'PASSWORD_RESET_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.PASSWORD_RESET_TOKEN_INVALID_ERROR:
      'PASSWORD_RESET_TOKEN_INVALID_ERROR',
  Enum$ErrorCode.PASSWORD_VALIDATION_ERROR: 'PASSWORD_VALIDATION_ERROR',
  Enum$ErrorCode.PAYMENT_DECLINED_ERROR: 'PAYMENT_DECLINED_ERROR',
  Enum$ErrorCode.PAYMENT_FAILED_ERROR: 'PAYMENT_FAILED_ERROR',
  Enum$ErrorCode.UNKNOWN_ERROR: 'UNKNOWN_ERROR',
  Enum$ErrorCode.VERIFICATION_TOKEN_EXPIRED_ERROR:
      'VERIFICATION_TOKEN_EXPIRED_ERROR',
  Enum$ErrorCode.VERIFICATION_TOKEN_INVALID_ERROR:
      'VERIFICATION_TOKEN_INVALID_ERROR',
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
      channels: (json['channels'] as List<dynamic>)
          .map((e) => Mutation$SignIn$login$$CurrentUser$channels.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Mutation$SignIn$login$$CurrentUserToJson(
        Mutation$SignIn$login$$CurrentUser instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'channels': instance.channels.map((e) => e.toJson()).toList(),
    };

Mutation$SignIn$login$$CurrentUser$channels
    _$Mutation$SignIn$login$$CurrentUser$channelsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SignIn$login$$CurrentUser$channels(
          token: json['token'] as String,
          permissions: (json['permissions'] as List<dynamic>)
              .map((e) => $enumDecode(_$Enum$PermissionEnumMap, e,
                  unknownValue: Enum$Permission.$unknown))
              .toList(),
          code: json['code'] as String,
          id: json['id'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$SignIn$login$$CurrentUser$channelsToJson(
        Mutation$SignIn$login$$CurrentUser$channels instance) =>
    <String, dynamic>{
      'token': instance.token,
      'permissions': instance.permissions
          .map((e) => _$Enum$PermissionEnumMap[e]!)
          .toList(),
      'code': instance.code,
      'id': instance.id,
      '__typename': instance.$__typename,
    };

const _$Enum$PermissionEnumMap = {
  Enum$Permission.Authenticated: 'Authenticated',
  Enum$Permission.CreateAdministrator: 'CreateAdministrator',
  Enum$Permission.CreateAsset: 'CreateAsset',
  Enum$Permission.CreateCatalog: 'CreateCatalog',
  Enum$Permission.CreateChannel: 'CreateChannel',
  Enum$Permission.CreateCollection: 'CreateCollection',
  Enum$Permission.CreateCountry: 'CreateCountry',
  Enum$Permission.CreateCustomer: 'CreateCustomer',
  Enum$Permission.CreateCustomerGroup: 'CreateCustomerGroup',
  Enum$Permission.CreateFacet: 'CreateFacet',
  Enum$Permission.CreateOrder: 'CreateOrder',
  Enum$Permission.CreatePaymentMethod: 'CreatePaymentMethod',
  Enum$Permission.CreateProduct: 'CreateProduct',
  Enum$Permission.CreatePromotion: 'CreatePromotion',
  Enum$Permission.CreateSettings: 'CreateSettings',
  Enum$Permission.CreateShippingMethod: 'CreateShippingMethod',
  Enum$Permission.CreateSystem: 'CreateSystem',
  Enum$Permission.CreateTag: 'CreateTag',
  Enum$Permission.CreateTaxCategory: 'CreateTaxCategory',
  Enum$Permission.CreateTaxRate: 'CreateTaxRate',
  Enum$Permission.CreateZone: 'CreateZone',
  Enum$Permission.DeleteAdministrator: 'DeleteAdministrator',
  Enum$Permission.DeleteAsset: 'DeleteAsset',
  Enum$Permission.DeleteCatalog: 'DeleteCatalog',
  Enum$Permission.DeleteChannel: 'DeleteChannel',
  Enum$Permission.DeleteCollection: 'DeleteCollection',
  Enum$Permission.DeleteCountry: 'DeleteCountry',
  Enum$Permission.DeleteCustomer: 'DeleteCustomer',
  Enum$Permission.DeleteCustomerGroup: 'DeleteCustomerGroup',
  Enum$Permission.DeleteFacet: 'DeleteFacet',
  Enum$Permission.DeleteOrder: 'DeleteOrder',
  Enum$Permission.DeletePaymentMethod: 'DeletePaymentMethod',
  Enum$Permission.DeleteProduct: 'DeleteProduct',
  Enum$Permission.DeletePromotion: 'DeletePromotion',
  Enum$Permission.DeleteSettings: 'DeleteSettings',
  Enum$Permission.DeleteShippingMethod: 'DeleteShippingMethod',
  Enum$Permission.DeleteSystem: 'DeleteSystem',
  Enum$Permission.DeleteTag: 'DeleteTag',
  Enum$Permission.DeleteTaxCategory: 'DeleteTaxCategory',
  Enum$Permission.DeleteTaxRate: 'DeleteTaxRate',
  Enum$Permission.DeleteZone: 'DeleteZone',
  Enum$Permission.Owner: 'Owner',
  Enum$Permission.Public: 'Public',
  Enum$Permission.ReadAdministrator: 'ReadAdministrator',
  Enum$Permission.ReadAsset: 'ReadAsset',
  Enum$Permission.ReadCatalog: 'ReadCatalog',
  Enum$Permission.ReadChannel: 'ReadChannel',
  Enum$Permission.ReadCollection: 'ReadCollection',
  Enum$Permission.ReadCountry: 'ReadCountry',
  Enum$Permission.ReadCustomer: 'ReadCustomer',
  Enum$Permission.ReadCustomerGroup: 'ReadCustomerGroup',
  Enum$Permission.ReadFacet: 'ReadFacet',
  Enum$Permission.ReadOrder: 'ReadOrder',
  Enum$Permission.ReadPaymentMethod: 'ReadPaymentMethod',
  Enum$Permission.ReadProduct: 'ReadProduct',
  Enum$Permission.ReadPromotion: 'ReadPromotion',
  Enum$Permission.ReadSettings: 'ReadSettings',
  Enum$Permission.ReadShippingMethod: 'ReadShippingMethod',
  Enum$Permission.ReadSystem: 'ReadSystem',
  Enum$Permission.ReadTag: 'ReadTag',
  Enum$Permission.ReadTaxCategory: 'ReadTaxCategory',
  Enum$Permission.ReadTaxRate: 'ReadTaxRate',
  Enum$Permission.ReadZone: 'ReadZone',
  Enum$Permission.SuperAdmin: 'SuperAdmin',
  Enum$Permission.UpdateAdministrator: 'UpdateAdministrator',
  Enum$Permission.UpdateAsset: 'UpdateAsset',
  Enum$Permission.UpdateCatalog: 'UpdateCatalog',
  Enum$Permission.UpdateChannel: 'UpdateChannel',
  Enum$Permission.UpdateCollection: 'UpdateCollection',
  Enum$Permission.UpdateCountry: 'UpdateCountry',
  Enum$Permission.UpdateCustomer: 'UpdateCustomer',
  Enum$Permission.UpdateCustomerGroup: 'UpdateCustomerGroup',
  Enum$Permission.UpdateFacet: 'UpdateFacet',
  Enum$Permission.UpdateGlobalSettings: 'UpdateGlobalSettings',
  Enum$Permission.UpdateOrder: 'UpdateOrder',
  Enum$Permission.UpdatePaymentMethod: 'UpdatePaymentMethod',
  Enum$Permission.UpdateProduct: 'UpdateProduct',
  Enum$Permission.UpdatePromotion: 'UpdatePromotion',
  Enum$Permission.UpdateSettings: 'UpdateSettings',
  Enum$Permission.UpdateShippingMethod: 'UpdateShippingMethod',
  Enum$Permission.UpdateSystem: 'UpdateSystem',
  Enum$Permission.UpdateTag: 'UpdateTag',
  Enum$Permission.UpdateTaxCategory: 'UpdateTaxCategory',
  Enum$Permission.UpdateTaxRate: 'UpdateTaxRate',
  Enum$Permission.UpdateZone: 'UpdateZone',
  Enum$Permission.$unknown: r'$unknown',
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

Variables$Query$CheckUniquePhone _$Variables$Query$CheckUniquePhoneFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$CheckUniquePhone(
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$Variables$Query$CheckUniquePhoneToJson(
        Variables$Query$CheckUniquePhone instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };

Query$CheckUniquePhone _$Query$CheckUniquePhoneFromJson(
        Map<String, dynamic> json) =>
    Query$CheckUniquePhone(
      checkUniquePhone: json['checkUniquePhone'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$CheckUniquePhoneToJson(
        Query$CheckUniquePhone instance) =>
    <String, dynamic>{
      'checkUniquePhone': instance.checkUniquePhone,
      '__typename': instance.$__typename,
    };

Variables$Mutation$VerifyCustomerAccount
    _$Variables$Mutation$VerifyCustomerAccountFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$VerifyCustomerAccount(
          token: json['token'] as String,
          password: json['password'] as String?,
        );

Map<String, dynamic> _$Variables$Mutation$VerifyCustomerAccountToJson(
        Variables$Mutation$VerifyCustomerAccount instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
    };

Mutation$VerifyCustomerAccount _$Mutation$VerifyCustomerAccountFromJson(
        Map<String, dynamic> json) =>
    Mutation$VerifyCustomerAccount(
      verifyCustomerAccount:
          Mutation$VerifyCustomerAccount$verifyCustomerAccount.fromJson(
              json['verifyCustomerAccount'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$VerifyCustomerAccountToJson(
        Mutation$VerifyCustomerAccount instance) =>
    <String, dynamic>{
      'verifyCustomerAccount': instance.verifyCustomerAccount.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$VerifyCustomerAccount$verifyCustomerAccount
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccountFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccountToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUserFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUserToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$CurrentUser
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'id': instance.id,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenInvalidError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$VerificationTokenExpiredError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$MissingPasswordError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$NativeAuthStrategyError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordAlreadySetError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationErrorToJson(
            Mutation$VerifyCustomerAccount$verifyCustomerAccount$$PasswordValidationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Variables$Mutation$UpdateCustomer _$Variables$Mutation$UpdateCustomerFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$UpdateCustomer(
      input: Input$UpdateCustomerInput.fromJson(
          json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$UpdateCustomerToJson(
        Variables$Mutation$UpdateCustomer instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Mutation$UpdateCustomer _$Mutation$UpdateCustomerFromJson(
        Map<String, dynamic> json) =>
    Mutation$UpdateCustomer(
      updateCustomer: Mutation$UpdateCustomer$updateCustomer.fromJson(
          json['updateCustomer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdateCustomerToJson(
        Mutation$UpdateCustomer instance) =>
    <String, dynamic>{
      'updateCustomer': instance.updateCustomer.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$UpdateCustomer$updateCustomer
    _$Mutation$UpdateCustomer$updateCustomerFromJson(
            Map<String, dynamic> json) =>
        Mutation$UpdateCustomer$updateCustomer(
          addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  Mutation$UpdateCustomer$updateCustomer$addresses.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$UpdateCustomer$updateCustomerToJson(
        Mutation$UpdateCustomer$updateCustomer instance) =>
    <String, dynamic>{
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Mutation$UpdateCustomer$updateCustomer$addresses
    _$Mutation$UpdateCustomer$updateCustomer$addressesFromJson(
            Map<String, dynamic> json) =>
        Mutation$UpdateCustomer$updateCustomer$addresses(
          city: json['city'] as String?,
          company: json['company'] as String?,
          country:
              Mutation$UpdateCustomer$updateCustomer$addresses$country.fromJson(
                  json['country'] as Map<String, dynamic>),
          fullName: json['fullName'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          streetLine1: json['streetLine1'] as String,
          streetLine2: json['streetLine2'] as String?,
          postalCode: json['postalCode'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$UpdateCustomer$updateCustomer$addressesToJson(
        Mutation$UpdateCustomer$updateCustomer$addresses instance) =>
    <String, dynamic>{
      'city': instance.city,
      'company': instance.company,
      'country': instance.country.toJson(),
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'postalCode': instance.postalCode,
      '__typename': instance.$__typename,
    };

Mutation$UpdateCustomer$updateCustomer$addresses$country
    _$Mutation$UpdateCustomer$updateCustomer$addresses$countryFromJson(
            Map<String, dynamic> json) =>
        Mutation$UpdateCustomer$updateCustomer$addresses$country(
          code: json['code'] as String,
          id: json['id'] as String,
          name: json['name'] as String,
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$UpdateCustomer$updateCustomer$addresses$countryToJson(
        Mutation$UpdateCustomer$updateCustomer$addresses$country instance) =>
    <String, dynamic>{
      'code': instance.code,
      'id': instance.id,
      'name': instance.name,
      'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
      '__typename': instance.$__typename,
    };

const _$Enum$LanguageCodeEnumMap = {
  Enum$LanguageCode.af: 'af',
  Enum$LanguageCode.ak: 'ak',
  Enum$LanguageCode.am: 'am',
  Enum$LanguageCode.ar: 'ar',
  Enum$LanguageCode.$as: 'as',
  Enum$LanguageCode.az: 'az',
  Enum$LanguageCode.be: 'be',
  Enum$LanguageCode.bg: 'bg',
  Enum$LanguageCode.bm: 'bm',
  Enum$LanguageCode.bn: 'bn',
  Enum$LanguageCode.bo: 'bo',
  Enum$LanguageCode.br: 'br',
  Enum$LanguageCode.bs: 'bs',
  Enum$LanguageCode.ca: 'ca',
  Enum$LanguageCode.ce: 'ce',
  Enum$LanguageCode.co: 'co',
  Enum$LanguageCode.cs: 'cs',
  Enum$LanguageCode.cu: 'cu',
  Enum$LanguageCode.cy: 'cy',
  Enum$LanguageCode.da: 'da',
  Enum$LanguageCode.de: 'de',
  Enum$LanguageCode.de_AT: 'de_AT',
  Enum$LanguageCode.de_CH: 'de_CH',
  Enum$LanguageCode.dz: 'dz',
  Enum$LanguageCode.ee: 'ee',
  Enum$LanguageCode.el: 'el',
  Enum$LanguageCode.en: 'en',
  Enum$LanguageCode.en_AU: 'en_AU',
  Enum$LanguageCode.en_CA: 'en_CA',
  Enum$LanguageCode.en_GB: 'en_GB',
  Enum$LanguageCode.en_US: 'en_US',
  Enum$LanguageCode.eo: 'eo',
  Enum$LanguageCode.es: 'es',
  Enum$LanguageCode.es_ES: 'es_ES',
  Enum$LanguageCode.es_MX: 'es_MX',
  Enum$LanguageCode.et: 'et',
  Enum$LanguageCode.eu: 'eu',
  Enum$LanguageCode.fa: 'fa',
  Enum$LanguageCode.fa_AF: 'fa_AF',
  Enum$LanguageCode.ff: 'ff',
  Enum$LanguageCode.fi: 'fi',
  Enum$LanguageCode.fo: 'fo',
  Enum$LanguageCode.fr: 'fr',
  Enum$LanguageCode.fr_CA: 'fr_CA',
  Enum$LanguageCode.fr_CH: 'fr_CH',
  Enum$LanguageCode.fy: 'fy',
  Enum$LanguageCode.ga: 'ga',
  Enum$LanguageCode.gd: 'gd',
  Enum$LanguageCode.gl: 'gl',
  Enum$LanguageCode.gu: 'gu',
  Enum$LanguageCode.gv: 'gv',
  Enum$LanguageCode.ha: 'ha',
  Enum$LanguageCode.he: 'he',
  Enum$LanguageCode.hi: 'hi',
  Enum$LanguageCode.hr: 'hr',
  Enum$LanguageCode.ht: 'ht',
  Enum$LanguageCode.hu: 'hu',
  Enum$LanguageCode.hy: 'hy',
  Enum$LanguageCode.ia: 'ia',
  Enum$LanguageCode.id: 'id',
  Enum$LanguageCode.ig: 'ig',
  Enum$LanguageCode.ii: 'ii',
  Enum$LanguageCode.$is: 'is',
  Enum$LanguageCode.it: 'it',
  Enum$LanguageCode.ja: 'ja',
  Enum$LanguageCode.jv: 'jv',
  Enum$LanguageCode.ka: 'ka',
  Enum$LanguageCode.ki: 'ki',
  Enum$LanguageCode.kk: 'kk',
  Enum$LanguageCode.kl: 'kl',
  Enum$LanguageCode.km: 'km',
  Enum$LanguageCode.kn: 'kn',
  Enum$LanguageCode.ko: 'ko',
  Enum$LanguageCode.ks: 'ks',
  Enum$LanguageCode.ku: 'ku',
  Enum$LanguageCode.kw: 'kw',
  Enum$LanguageCode.ky: 'ky',
  Enum$LanguageCode.la: 'la',
  Enum$LanguageCode.lb: 'lb',
  Enum$LanguageCode.lg: 'lg',
  Enum$LanguageCode.ln: 'ln',
  Enum$LanguageCode.lo: 'lo',
  Enum$LanguageCode.lt: 'lt',
  Enum$LanguageCode.lu: 'lu',
  Enum$LanguageCode.lv: 'lv',
  Enum$LanguageCode.mg: 'mg',
  Enum$LanguageCode.mi: 'mi',
  Enum$LanguageCode.mk: 'mk',
  Enum$LanguageCode.ml: 'ml',
  Enum$LanguageCode.mn: 'mn',
  Enum$LanguageCode.mr: 'mr',
  Enum$LanguageCode.ms: 'ms',
  Enum$LanguageCode.mt: 'mt',
  Enum$LanguageCode.my: 'my',
  Enum$LanguageCode.nb: 'nb',
  Enum$LanguageCode.nd: 'nd',
  Enum$LanguageCode.ne: 'ne',
  Enum$LanguageCode.nl: 'nl',
  Enum$LanguageCode.nl_BE: 'nl_BE',
  Enum$LanguageCode.nn: 'nn',
  Enum$LanguageCode.ny: 'ny',
  Enum$LanguageCode.om: 'om',
  Enum$LanguageCode.or: 'or',
  Enum$LanguageCode.os: 'os',
  Enum$LanguageCode.pa: 'pa',
  Enum$LanguageCode.pl: 'pl',
  Enum$LanguageCode.ps: 'ps',
  Enum$LanguageCode.pt: 'pt',
  Enum$LanguageCode.pt_BR: 'pt_BR',
  Enum$LanguageCode.pt_PT: 'pt_PT',
  Enum$LanguageCode.qu: 'qu',
  Enum$LanguageCode.rm: 'rm',
  Enum$LanguageCode.rn: 'rn',
  Enum$LanguageCode.ro: 'ro',
  Enum$LanguageCode.ro_MD: 'ro_MD',
  Enum$LanguageCode.ru: 'ru',
  Enum$LanguageCode.rw: 'rw',
  Enum$LanguageCode.sa: 'sa',
  Enum$LanguageCode.sd: 'sd',
  Enum$LanguageCode.se: 'se',
  Enum$LanguageCode.sg: 'sg',
  Enum$LanguageCode.si: 'si',
  Enum$LanguageCode.sk: 'sk',
  Enum$LanguageCode.sl: 'sl',
  Enum$LanguageCode.sm: 'sm',
  Enum$LanguageCode.sn: 'sn',
  Enum$LanguageCode.so: 'so',
  Enum$LanguageCode.sq: 'sq',
  Enum$LanguageCode.sr: 'sr',
  Enum$LanguageCode.st: 'st',
  Enum$LanguageCode.su: 'su',
  Enum$LanguageCode.sv: 'sv',
  Enum$LanguageCode.sw: 'sw',
  Enum$LanguageCode.sw_CD: 'sw_CD',
  Enum$LanguageCode.ta: 'ta',
  Enum$LanguageCode.te: 'te',
  Enum$LanguageCode.tg: 'tg',
  Enum$LanguageCode.th: 'th',
  Enum$LanguageCode.ti: 'ti',
  Enum$LanguageCode.tk: 'tk',
  Enum$LanguageCode.to: 'to',
  Enum$LanguageCode.tr: 'tr',
  Enum$LanguageCode.tt: 'tt',
  Enum$LanguageCode.ug: 'ug',
  Enum$LanguageCode.uk: 'uk',
  Enum$LanguageCode.ur: 'ur',
  Enum$LanguageCode.uz: 'uz',
  Enum$LanguageCode.vi: 'vi',
  Enum$LanguageCode.vo: 'vo',
  Enum$LanguageCode.wo: 'wo',
  Enum$LanguageCode.xh: 'xh',
  Enum$LanguageCode.yi: 'yi',
  Enum$LanguageCode.yo: 'yo',
  Enum$LanguageCode.zh: 'zh',
  Enum$LanguageCode.zh_Hans: 'zh_Hans',
  Enum$LanguageCode.zh_Hant: 'zh_Hant',
  Enum$LanguageCode.zu: 'zu',
  Enum$LanguageCode.$unknown: r'$unknown',
};

Variables$Mutation$UpdateCustomerAddress
    _$Variables$Mutation$UpdateCustomerAddressFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$UpdateCustomerAddress(
          input: Input$UpdateAddressInput.fromJson(
              json['input'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$Mutation$UpdateCustomerAddressToJson(
        Variables$Mutation$UpdateCustomerAddress instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Mutation$UpdateCustomerAddress _$Mutation$UpdateCustomerAddressFromJson(
        Map<String, dynamic> json) =>
    Mutation$UpdateCustomerAddress(
      updateCustomerAddress:
          Mutation$UpdateCustomerAddress$updateCustomerAddress.fromJson(
              json['updateCustomerAddress'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$UpdateCustomerAddressToJson(
        Mutation$UpdateCustomerAddress instance) =>
    <String, dynamic>{
      'updateCustomerAddress': instance.updateCustomerAddress.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$UpdateCustomerAddress$updateCustomerAddress
    _$Mutation$UpdateCustomerAddress$updateCustomerAddressFromJson(
            Map<String, dynamic> json) =>
        Mutation$UpdateCustomerAddress$updateCustomerAddress(
          createdAt: json['createdAt'] as String,
          city: json['city'] as String?,
          country: Mutation$UpdateCustomerAddress$updateCustomerAddress$country
              .fromJson(json['country'] as Map<String, dynamic>),
          id: json['id'] as String,
          company: json['company'] as String?,
          defaultBillingAddress: json['defaultBillingAddress'] as bool?,
          defaultShippingAddress: json['defaultShippingAddress'] as bool?,
          fullName: json['fullName'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          streetLine1: json['streetLine1'] as String,
          streetLine2: json['streetLine2'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$UpdateCustomerAddress$updateCustomerAddressToJson(
            Mutation$UpdateCustomerAddress$updateCustomerAddress instance) =>
        <String, dynamic>{
          'createdAt': instance.createdAt,
          'city': instance.city,
          'country': instance.country.toJson(),
          'id': instance.id,
          'company': instance.company,
          'defaultBillingAddress': instance.defaultBillingAddress,
          'defaultShippingAddress': instance.defaultShippingAddress,
          'fullName': instance.fullName,
          'phoneNumber': instance.phoneNumber,
          'streetLine1': instance.streetLine1,
          'streetLine2': instance.streetLine2,
          '__typename': instance.$__typename,
        };

Mutation$UpdateCustomerAddress$updateCustomerAddress$country
    _$Mutation$UpdateCustomerAddress$updateCustomerAddress$countryFromJson(
            Map<String, dynamic> json) =>
        Mutation$UpdateCustomerAddress$updateCustomerAddress$country(
          name: json['name'] as String,
          code: json['code'] as String,
          id: json['id'] as String,
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$UpdateCustomerAddress$updateCustomerAddress$countryToJson(
            Mutation$UpdateCustomerAddress$updateCustomerAddress$country
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'code': instance.code,
          'id': instance.id,
          'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer _$Query$GetActiveCustomerFromJson(
        Map<String, dynamic> json) =>
    Query$GetActiveCustomer(
      activeCustomer: json['activeCustomer'] == null
          ? null
          : Query$GetActiveCustomer$activeCustomer.fromJson(
              json['activeCustomer'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetActiveCustomerToJson(
        Query$GetActiveCustomer instance) =>
    <String, dynamic>{
      'activeCustomer': instance.activeCustomer?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer
    _$Query$GetActiveCustomer$activeCustomerFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer(
          emailAddress: json['emailAddress'] as String,
          addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) =>
                  Query$GetActiveCustomer$activeCustomer$addresses.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          firstName: json['firstName'] as String,
          lastName: json['lastName'] as String,
          phoneNumber: json['phoneNumber'] as String?,
          orders: Query$GetActiveCustomer$activeCustomer$orders.fromJson(
              json['orders'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveCustomer$activeCustomerToJson(
        Query$GetActiveCustomer$activeCustomer instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'orders': instance.orders.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer$addresses
    _$Query$GetActiveCustomer$activeCustomer$addressesFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$addresses(
          id: json['id'] as String,
          postalCode: json['postalCode'] as String?,
          streetLine1: json['streetLine1'] as String,
          streetLine2: json['streetLine2'] as String?,
          fullName: json['fullName'] as String?,
          country:
              Query$GetActiveCustomer$activeCustomer$addresses$country.fromJson(
                  json['country'] as Map<String, dynamic>),
          phoneNumber: json['phoneNumber'] as String?,
          company: json['company'] as String?,
          city: json['city'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveCustomer$activeCustomer$addressesToJson(
        Query$GetActiveCustomer$activeCustomer$addresses instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postalCode': instance.postalCode,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'fullName': instance.fullName,
      'country': instance.country.toJson(),
      'phoneNumber': instance.phoneNumber,
      'company': instance.company,
      'city': instance.city,
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer$addresses$country
    _$Query$GetActiveCustomer$activeCustomer$addresses$countryFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$addresses$country(
          id: json['id'] as String,
          name: json['name'] as String,
          code: json['code'] as String,
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetActiveCustomer$activeCustomer$addresses$countryToJson(
        Query$GetActiveCustomer$activeCustomer$addresses$country instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer$orders
    _$Query$GetActiveCustomer$activeCustomer$ordersFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders(
          totalItems: json['totalItems'] as int,
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveCustomer$activeCustomer$ordersToJson(
        Query$GetActiveCustomer$activeCustomer$orders instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer$orders$items
    _$Query$GetActiveCustomer$activeCustomer$orders$itemsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items(
          currencyCode: $enumDecode(
              _$Enum$CurrencyCodeEnumMap, json['currencyCode'],
              unknownValue: Enum$CurrencyCode.$unknown),
          orderPlacedAt: json['orderPlacedAt'] as String?,
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          active: json['active'] as bool,
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          state: json['state'] as String,
          customer: json['customer'] == null
              ? null
              : Query$GetActiveCustomer$activeCustomer$orders$items$customer
                  .fromJson(json['customer'] as Map<String, dynamic>),
          shippingAddress: json['shippingAddress'] == null
              ? null
              : Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
                  .fromJson(json['shippingAddress'] as Map<String, dynamic>),
          surcharges: (json['surcharges'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items$surcharges
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          payments: (json['payments'] as List<dynamic>?)
              ?.map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items$payments
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          totalWithTax: json['totalWithTax'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$itemsToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items instance) =>
        <String, dynamic>{
          'currencyCode': _$Enum$CurrencyCodeEnumMap[instance.currencyCode]!,
          'orderPlacedAt': instance.orderPlacedAt,
          'lines': instance.lines.map((e) => e.toJson()).toList(),
          'active': instance.active,
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'code': instance.code,
          'state': instance.state,
          'customer': instance.customer?.toJson(),
          'shippingAddress': instance.shippingAddress?.toJson(),
          'surcharges': instance.surcharges.map((e) => e.toJson()).toList(),
          'couponCodes': instance.couponCodes,
          'payments': instance.payments?.map((e) => e.toJson()).toList(),
          'totalQuantity': instance.totalQuantity,
          'totalWithTax': instance.totalWithTax,
          '__typename': instance.$__typename,
        };

const _$Enum$CurrencyCodeEnumMap = {
  Enum$CurrencyCode.AED: 'AED',
  Enum$CurrencyCode.AFN: 'AFN',
  Enum$CurrencyCode.ALL: 'ALL',
  Enum$CurrencyCode.AMD: 'AMD',
  Enum$CurrencyCode.ANG: 'ANG',
  Enum$CurrencyCode.AOA: 'AOA',
  Enum$CurrencyCode.ARS: 'ARS',
  Enum$CurrencyCode.AUD: 'AUD',
  Enum$CurrencyCode.AWG: 'AWG',
  Enum$CurrencyCode.AZN: 'AZN',
  Enum$CurrencyCode.BAM: 'BAM',
  Enum$CurrencyCode.BBD: 'BBD',
  Enum$CurrencyCode.BDT: 'BDT',
  Enum$CurrencyCode.BGN: 'BGN',
  Enum$CurrencyCode.BHD: 'BHD',
  Enum$CurrencyCode.BIF: 'BIF',
  Enum$CurrencyCode.BMD: 'BMD',
  Enum$CurrencyCode.BND: 'BND',
  Enum$CurrencyCode.BOB: 'BOB',
  Enum$CurrencyCode.BRL: 'BRL',
  Enum$CurrencyCode.BSD: 'BSD',
  Enum$CurrencyCode.BTN: 'BTN',
  Enum$CurrencyCode.BWP: 'BWP',
  Enum$CurrencyCode.BYN: 'BYN',
  Enum$CurrencyCode.BZD: 'BZD',
  Enum$CurrencyCode.CAD: 'CAD',
  Enum$CurrencyCode.CDF: 'CDF',
  Enum$CurrencyCode.CHF: 'CHF',
  Enum$CurrencyCode.CLP: 'CLP',
  Enum$CurrencyCode.CNY: 'CNY',
  Enum$CurrencyCode.COP: 'COP',
  Enum$CurrencyCode.CRC: 'CRC',
  Enum$CurrencyCode.CUC: 'CUC',
  Enum$CurrencyCode.CUP: 'CUP',
  Enum$CurrencyCode.CVE: 'CVE',
  Enum$CurrencyCode.CZK: 'CZK',
  Enum$CurrencyCode.DJF: 'DJF',
  Enum$CurrencyCode.DKK: 'DKK',
  Enum$CurrencyCode.DOP: 'DOP',
  Enum$CurrencyCode.DZD: 'DZD',
  Enum$CurrencyCode.EGP: 'EGP',
  Enum$CurrencyCode.ERN: 'ERN',
  Enum$CurrencyCode.ETB: 'ETB',
  Enum$CurrencyCode.EUR: 'EUR',
  Enum$CurrencyCode.FJD: 'FJD',
  Enum$CurrencyCode.FKP: 'FKP',
  Enum$CurrencyCode.GBP: 'GBP',
  Enum$CurrencyCode.GEL: 'GEL',
  Enum$CurrencyCode.GHS: 'GHS',
  Enum$CurrencyCode.GIP: 'GIP',
  Enum$CurrencyCode.GMD: 'GMD',
  Enum$CurrencyCode.GNF: 'GNF',
  Enum$CurrencyCode.GTQ: 'GTQ',
  Enum$CurrencyCode.GYD: 'GYD',
  Enum$CurrencyCode.HKD: 'HKD',
  Enum$CurrencyCode.HNL: 'HNL',
  Enum$CurrencyCode.HRK: 'HRK',
  Enum$CurrencyCode.HTG: 'HTG',
  Enum$CurrencyCode.HUF: 'HUF',
  Enum$CurrencyCode.IDR: 'IDR',
  Enum$CurrencyCode.ILS: 'ILS',
  Enum$CurrencyCode.INR: 'INR',
  Enum$CurrencyCode.IQD: 'IQD',
  Enum$CurrencyCode.IRR: 'IRR',
  Enum$CurrencyCode.ISK: 'ISK',
  Enum$CurrencyCode.JMD: 'JMD',
  Enum$CurrencyCode.JOD: 'JOD',
  Enum$CurrencyCode.JPY: 'JPY',
  Enum$CurrencyCode.KES: 'KES',
  Enum$CurrencyCode.KGS: 'KGS',
  Enum$CurrencyCode.KHR: 'KHR',
  Enum$CurrencyCode.KMF: 'KMF',
  Enum$CurrencyCode.KPW: 'KPW',
  Enum$CurrencyCode.KRW: 'KRW',
  Enum$CurrencyCode.KWD: 'KWD',
  Enum$CurrencyCode.KYD: 'KYD',
  Enum$CurrencyCode.KZT: 'KZT',
  Enum$CurrencyCode.LAK: 'LAK',
  Enum$CurrencyCode.LBP: 'LBP',
  Enum$CurrencyCode.LKR: 'LKR',
  Enum$CurrencyCode.LRD: 'LRD',
  Enum$CurrencyCode.LSL: 'LSL',
  Enum$CurrencyCode.LYD: 'LYD',
  Enum$CurrencyCode.MAD: 'MAD',
  Enum$CurrencyCode.MDL: 'MDL',
  Enum$CurrencyCode.MGA: 'MGA',
  Enum$CurrencyCode.MKD: 'MKD',
  Enum$CurrencyCode.MMK: 'MMK',
  Enum$CurrencyCode.MNT: 'MNT',
  Enum$CurrencyCode.MOP: 'MOP',
  Enum$CurrencyCode.MRU: 'MRU',
  Enum$CurrencyCode.MUR: 'MUR',
  Enum$CurrencyCode.MVR: 'MVR',
  Enum$CurrencyCode.MWK: 'MWK',
  Enum$CurrencyCode.MXN: 'MXN',
  Enum$CurrencyCode.MYR: 'MYR',
  Enum$CurrencyCode.MZN: 'MZN',
  Enum$CurrencyCode.NAD: 'NAD',
  Enum$CurrencyCode.NGN: 'NGN',
  Enum$CurrencyCode.NIO: 'NIO',
  Enum$CurrencyCode.NOK: 'NOK',
  Enum$CurrencyCode.NPR: 'NPR',
  Enum$CurrencyCode.NZD: 'NZD',
  Enum$CurrencyCode.OMR: 'OMR',
  Enum$CurrencyCode.PAB: 'PAB',
  Enum$CurrencyCode.PEN: 'PEN',
  Enum$CurrencyCode.PGK: 'PGK',
  Enum$CurrencyCode.PHP: 'PHP',
  Enum$CurrencyCode.PKR: 'PKR',
  Enum$CurrencyCode.PLN: 'PLN',
  Enum$CurrencyCode.PYG: 'PYG',
  Enum$CurrencyCode.QAR: 'QAR',
  Enum$CurrencyCode.RON: 'RON',
  Enum$CurrencyCode.RSD: 'RSD',
  Enum$CurrencyCode.RUB: 'RUB',
  Enum$CurrencyCode.RWF: 'RWF',
  Enum$CurrencyCode.SAR: 'SAR',
  Enum$CurrencyCode.SBD: 'SBD',
  Enum$CurrencyCode.SCR: 'SCR',
  Enum$CurrencyCode.SDG: 'SDG',
  Enum$CurrencyCode.SEK: 'SEK',
  Enum$CurrencyCode.SGD: 'SGD',
  Enum$CurrencyCode.SHP: 'SHP',
  Enum$CurrencyCode.SLL: 'SLL',
  Enum$CurrencyCode.SOS: 'SOS',
  Enum$CurrencyCode.SRD: 'SRD',
  Enum$CurrencyCode.SSP: 'SSP',
  Enum$CurrencyCode.STN: 'STN',
  Enum$CurrencyCode.SVC: 'SVC',
  Enum$CurrencyCode.SYP: 'SYP',
  Enum$CurrencyCode.SZL: 'SZL',
  Enum$CurrencyCode.THB: 'THB',
  Enum$CurrencyCode.TJS: 'TJS',
  Enum$CurrencyCode.TMT: 'TMT',
  Enum$CurrencyCode.TND: 'TND',
  Enum$CurrencyCode.TOP: 'TOP',
  Enum$CurrencyCode.TRY: 'TRY',
  Enum$CurrencyCode.TTD: 'TTD',
  Enum$CurrencyCode.TWD: 'TWD',
  Enum$CurrencyCode.TZS: 'TZS',
  Enum$CurrencyCode.UAH: 'UAH',
  Enum$CurrencyCode.UGX: 'UGX',
  Enum$CurrencyCode.USD: 'USD',
  Enum$CurrencyCode.UYU: 'UYU',
  Enum$CurrencyCode.UZS: 'UZS',
  Enum$CurrencyCode.VES: 'VES',
  Enum$CurrencyCode.VND: 'VND',
  Enum$CurrencyCode.VUV: 'VUV',
  Enum$CurrencyCode.WST: 'WST',
  Enum$CurrencyCode.XAF: 'XAF',
  Enum$CurrencyCode.XCD: 'XCD',
  Enum$CurrencyCode.XOF: 'XOF',
  Enum$CurrencyCode.XPF: 'XPF',
  Enum$CurrencyCode.YER: 'YER',
  Enum$CurrencyCode.ZAR: 'ZAR',
  Enum$CurrencyCode.ZMW: 'ZMW',
  Enum$CurrencyCode.ZWL: 'ZWL',
  Enum$CurrencyCode.$unknown: r'$unknown',
};

Query$GetActiveCustomer$activeCustomer$orders$items$lines
    _$Query$GetActiveCustomer$activeCustomer$orders$items$linesFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$lines(
          productVariant:
              Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
                  .fromJson(json['featuredAsset'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetActiveCustomer$activeCustomer$orders$items$linesToJson(
        Query$GetActiveCustomer$activeCustomer$orders$items$lines instance) =>
    <String, dynamic>{
      'productVariant': instance.productVariant.toJson(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
    _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant(
          name: json['name'] as String,
          priceWithTax: json['priceWithTax'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariantToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$lines$productVariant
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'priceWithTax': instance.priceWithTax,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
    _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAssetFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset(
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAssetToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$lines$featuredAsset
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'preview': instance.preview,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$discounts
    _$Query$GetActiveCustomer$activeCustomer$orders$items$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$discounts(
          amount: json['amount'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$discountsToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$customer
    _$Query$GetActiveCustomer$activeCustomer$orders$items$customerFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$customer(
          firstName: json['firstName'] as String,
          lastName: json['lastName'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$customerToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$customer
                instance) =>
        <String, dynamic>{
          'firstName': instance.firstName,
          'lastName': instance.lastName,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
    _$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddressFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress(
          country: json['country'] as String?,
          city: json['city'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddressToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$shippingAddress
                instance) =>
        <String, dynamic>{
          'country': instance.country,
          'city': instance.city,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$surcharges
    _$Query$GetActiveCustomer$activeCustomer$orders$items$surchargesFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$surcharges(
          price: json['price'] as int,
          priceWithTax: json['priceWithTax'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$surchargesToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$surcharges
                instance) =>
        <String, dynamic>{
          'price': instance.price,
          'priceWithTax': instance.priceWithTax,
          '__typename': instance.$__typename,
        };

Query$GetActiveCustomer$activeCustomer$orders$items$payments
    _$Query$GetActiveCustomer$activeCustomer$orders$items$paymentsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveCustomer$activeCustomer$orders$items$payments(
          state: json['state'] as String,
          createdAt: json['createdAt'] as String,
          method: json['method'] as String,
          amount: json['amount'] as int,
          transactionId: json['transactionId'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$items$paymentsToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items$payments
                instance) =>
        <String, dynamic>{
          'state': instance.state,
          'createdAt': instance.createdAt,
          'method': instance.method,
          'amount': instance.amount,
          'transactionId': instance.transactionId,
          '__typename': instance.$__typename,
        };

Query$GetCurrentUser _$Query$GetCurrentUserFromJson(
        Map<String, dynamic> json) =>
    Query$GetCurrentUser(
      me: json['me'] == null
          ? null
          : Query$GetCurrentUser$me.fromJson(
              json['me'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCurrentUserToJson(
        Query$GetCurrentUser instance) =>
    <String, dynamic>{
      'me': instance.me?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCurrentUser$me _$Query$GetCurrentUser$meFromJson(
        Map<String, dynamic> json) =>
    Query$GetCurrentUser$me(
      id: json['id'] as String,
      identifier: json['identifier'] as String,
      channels: (json['channels'] as List<dynamic>)
          .map((e) => Query$GetCurrentUser$me$channels.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCurrentUser$meToJson(
        Query$GetCurrentUser$me instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'channels': instance.channels.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetCurrentUser$me$channels _$Query$GetCurrentUser$me$channelsFromJson(
        Map<String, dynamic> json) =>
    Query$GetCurrentUser$me$channels(
      id: json['id'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => $enumDecode(_$Enum$PermissionEnumMap, e,
              unknownValue: Enum$Permission.$unknown))
          .toList(),
      token: json['token'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCurrentUser$me$channelsToJson(
        Query$GetCurrentUser$me$channels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permissions': instance.permissions
          .map((e) => _$Enum$PermissionEnumMap[e]!)
          .toList(),
      'token': instance.token,
      '__typename': instance.$__typename,
    };

Mutation$LogoutUser _$Mutation$LogoutUserFromJson(Map<String, dynamic> json) =>
    Mutation$LogoutUser(
      logout: Mutation$LogoutUser$logout.fromJson(
          json['logout'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$LogoutUserToJson(
        Mutation$LogoutUser instance) =>
    <String, dynamic>{
      'logout': instance.logout.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$LogoutUser$logout _$Mutation$LogoutUser$logoutFromJson(
        Map<String, dynamic> json) =>
    Mutation$LogoutUser$logout(
      success: json['success'] as bool,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$LogoutUser$logoutToJson(
        Mutation$LogoutUser$logout instance) =>
    <String, dynamic>{
      'success': instance.success,
      '__typename': instance.$__typename,
    };

Variables$Mutation$RequestPasswordReset
    _$Variables$Mutation$RequestPasswordResetFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$RequestPasswordReset(
          email: json['email'] as String,
        );

Map<String, dynamic> _$Variables$Mutation$RequestPasswordResetToJson(
        Variables$Mutation$RequestPasswordReset instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

Mutation$RequestPasswordReset _$Mutation$RequestPasswordResetFromJson(
        Map<String, dynamic> json) =>
    Mutation$RequestPasswordReset(
      requestPasswordReset: json['requestPasswordReset'] == null
          ? null
          : Mutation$RequestPasswordReset$requestPasswordReset.fromJson(
              json['requestPasswordReset'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$RequestPasswordResetToJson(
        Mutation$RequestPasswordReset instance) =>
    <String, dynamic>{
      'requestPasswordReset': instance.requestPasswordReset?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$RequestPasswordReset$requestPasswordReset
    _$Mutation$RequestPasswordReset$requestPasswordResetFromJson(
            Map<String, dynamic> json) =>
        Mutation$RequestPasswordReset$requestPasswordReset(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$RequestPasswordReset$requestPasswordResetToJson(
        Mutation$RequestPasswordReset$requestPasswordReset instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
    _$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyErrorToJson(
            Mutation$RequestPasswordReset$requestPasswordReset$$NativeAuthStrategyError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Variables$Mutation$ResetPassword _$Variables$Mutation$ResetPasswordFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$ResetPassword(
      token: json['token'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$Variables$Mutation$ResetPasswordToJson(
        Variables$Mutation$ResetPassword instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
    };

Mutation$ResetPassword _$Mutation$ResetPasswordFromJson(
        Map<String, dynamic> json) =>
    Mutation$ResetPassword(
      resetPassword: Mutation$ResetPassword$resetPassword.fromJson(
          json['resetPassword'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$ResetPasswordToJson(
        Mutation$ResetPassword instance) =>
    <String, dynamic>{
      'resetPassword': instance.resetPassword.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$ResetPassword$resetPassword
    _$Mutation$ResetPassword$resetPasswordFromJson(Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$ResetPassword$resetPasswordToJson(
        Mutation$ResetPassword$resetPassword instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$ResetPassword$resetPassword$$CurrentUser
    _$Mutation$ResetPassword$resetPassword$$CurrentUserFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$CurrentUser(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          channels: (json['channels'] as List<dynamic>)
              .map((e) =>
                  Mutation$ResetPassword$resetPassword$$CurrentUser$channels
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$Mutation$ResetPassword$resetPassword$$CurrentUserToJson(
        Mutation$ResetPassword$resetPassword$$CurrentUser instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'channels': instance.channels.map((e) => e.toJson()).toList(),
    };

Mutation$ResetPassword$resetPassword$$CurrentUser$channels
    _$Mutation$ResetPassword$resetPassword$$CurrentUser$channelsFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$CurrentUser$channels(
          token: json['token'] as String,
          code: json['code'] as String,
          permissions: (json['permissions'] as List<dynamic>)
              .map((e) => $enumDecode(_$Enum$PermissionEnumMap, e,
                  unknownValue: Enum$Permission.$unknown))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$ResetPassword$resetPassword$$CurrentUser$channelsToJson(
        Mutation$ResetPassword$resetPassword$$CurrentUser$channels instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
      'permissions': instance.permissions
          .map((e) => _$Enum$PermissionEnumMap[e]!)
          .toList(),
      '__typename': instance.$__typename,
    };

Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError
    _$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$ResetPassword$resetPassword$$NativeAuthStrategyErrorToJson(
            Mutation$ResetPassword$resetPassword$$NativeAuthStrategyError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$ResetPassword$resetPassword$$NotVerifiedError
    _$Mutation$ResetPassword$resetPassword$$NotVerifiedErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$NotVerifiedError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$ResetPassword$resetPassword$$NotVerifiedErrorToJson(
            Mutation$ResetPassword$resetPassword$$NotVerifiedError instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
    _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredErrorToJson(
            Mutation$ResetPassword$resetPassword$$PasswordResetTokenExpiredError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
    _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidErrorToJson(
            Mutation$ResetPassword$resetPassword$$PasswordResetTokenInvalidError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$ResetPassword$resetPassword$$PasswordValidationError
    _$Mutation$ResetPassword$resetPassword$$PasswordValidationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$ResetPassword$resetPassword$$PasswordValidationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$ResetPassword$resetPassword$$PasswordValidationErrorToJson(
            Mutation$ResetPassword$resetPassword$$PasswordValidationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };
