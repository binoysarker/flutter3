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
  Enum$Permission.SuperAdmin: 'SuperAdmin',
  Enum$Permission.Owner: 'Owner',
  Enum$Permission.Public: 'Public',
  Enum$Permission.UpdateGlobalSettings: 'UpdateGlobalSettings',
  Enum$Permission.CreateCatalog: 'CreateCatalog',
  Enum$Permission.ReadCatalog: 'ReadCatalog',
  Enum$Permission.UpdateCatalog: 'UpdateCatalog',
  Enum$Permission.DeleteCatalog: 'DeleteCatalog',
  Enum$Permission.CreateSettings: 'CreateSettings',
  Enum$Permission.ReadSettings: 'ReadSettings',
  Enum$Permission.UpdateSettings: 'UpdateSettings',
  Enum$Permission.DeleteSettings: 'DeleteSettings',
  Enum$Permission.CreateAdministrator: 'CreateAdministrator',
  Enum$Permission.ReadAdministrator: 'ReadAdministrator',
  Enum$Permission.UpdateAdministrator: 'UpdateAdministrator',
  Enum$Permission.DeleteAdministrator: 'DeleteAdministrator',
  Enum$Permission.CreateAsset: 'CreateAsset',
  Enum$Permission.ReadAsset: 'ReadAsset',
  Enum$Permission.UpdateAsset: 'UpdateAsset',
  Enum$Permission.DeleteAsset: 'DeleteAsset',
  Enum$Permission.CreateChannel: 'CreateChannel',
  Enum$Permission.ReadChannel: 'ReadChannel',
  Enum$Permission.UpdateChannel: 'UpdateChannel',
  Enum$Permission.DeleteChannel: 'DeleteChannel',
  Enum$Permission.CreateCollection: 'CreateCollection',
  Enum$Permission.ReadCollection: 'ReadCollection',
  Enum$Permission.UpdateCollection: 'UpdateCollection',
  Enum$Permission.DeleteCollection: 'DeleteCollection',
  Enum$Permission.CreateCountry: 'CreateCountry',
  Enum$Permission.ReadCountry: 'ReadCountry',
  Enum$Permission.UpdateCountry: 'UpdateCountry',
  Enum$Permission.DeleteCountry: 'DeleteCountry',
  Enum$Permission.CreateCustomer: 'CreateCustomer',
  Enum$Permission.ReadCustomer: 'ReadCustomer',
  Enum$Permission.UpdateCustomer: 'UpdateCustomer',
  Enum$Permission.DeleteCustomer: 'DeleteCustomer',
  Enum$Permission.CreateCustomerGroup: 'CreateCustomerGroup',
  Enum$Permission.ReadCustomerGroup: 'ReadCustomerGroup',
  Enum$Permission.UpdateCustomerGroup: 'UpdateCustomerGroup',
  Enum$Permission.DeleteCustomerGroup: 'DeleteCustomerGroup',
  Enum$Permission.CreateFacet: 'CreateFacet',
  Enum$Permission.ReadFacet: 'ReadFacet',
  Enum$Permission.UpdateFacet: 'UpdateFacet',
  Enum$Permission.DeleteFacet: 'DeleteFacet',
  Enum$Permission.CreateOrder: 'CreateOrder',
  Enum$Permission.ReadOrder: 'ReadOrder',
  Enum$Permission.UpdateOrder: 'UpdateOrder',
  Enum$Permission.DeleteOrder: 'DeleteOrder',
  Enum$Permission.CreatePaymentMethod: 'CreatePaymentMethod',
  Enum$Permission.ReadPaymentMethod: 'ReadPaymentMethod',
  Enum$Permission.UpdatePaymentMethod: 'UpdatePaymentMethod',
  Enum$Permission.DeletePaymentMethod: 'DeletePaymentMethod',
  Enum$Permission.CreateProduct: 'CreateProduct',
  Enum$Permission.ReadProduct: 'ReadProduct',
  Enum$Permission.UpdateProduct: 'UpdateProduct',
  Enum$Permission.DeleteProduct: 'DeleteProduct',
  Enum$Permission.CreatePromotion: 'CreatePromotion',
  Enum$Permission.ReadPromotion: 'ReadPromotion',
  Enum$Permission.UpdatePromotion: 'UpdatePromotion',
  Enum$Permission.DeletePromotion: 'DeletePromotion',
  Enum$Permission.CreateShippingMethod: 'CreateShippingMethod',
  Enum$Permission.ReadShippingMethod: 'ReadShippingMethod',
  Enum$Permission.UpdateShippingMethod: 'UpdateShippingMethod',
  Enum$Permission.DeleteShippingMethod: 'DeleteShippingMethod',
  Enum$Permission.CreateTag: 'CreateTag',
  Enum$Permission.ReadTag: 'ReadTag',
  Enum$Permission.UpdateTag: 'UpdateTag',
  Enum$Permission.DeleteTag: 'DeleteTag',
  Enum$Permission.CreateTaxCategory: 'CreateTaxCategory',
  Enum$Permission.ReadTaxCategory: 'ReadTaxCategory',
  Enum$Permission.UpdateTaxCategory: 'UpdateTaxCategory',
  Enum$Permission.DeleteTaxCategory: 'DeleteTaxCategory',
  Enum$Permission.CreateTaxRate: 'CreateTaxRate',
  Enum$Permission.ReadTaxRate: 'ReadTaxRate',
  Enum$Permission.UpdateTaxRate: 'UpdateTaxRate',
  Enum$Permission.DeleteTaxRate: 'DeleteTaxRate',
  Enum$Permission.CreateSystem: 'CreateSystem',
  Enum$Permission.ReadSystem: 'ReadSystem',
  Enum$Permission.UpdateSystem: 'UpdateSystem',
  Enum$Permission.DeleteSystem: 'DeleteSystem',
  Enum$Permission.CreateZone: 'CreateZone',
  Enum$Permission.ReadZone: 'ReadZone',
  Enum$Permission.UpdateZone: 'UpdateZone',
  Enum$Permission.DeleteZone: 'DeleteZone',
  Enum$Permission.$unknown: r'$unknown',
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
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'orders': instance.orders.toJson(),
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
          active: json['active'] as bool,
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveCustomer$activeCustomer$orders$items$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveCustomer$activeCustomer$orders$itemsToJson(
            Query$GetActiveCustomer$activeCustomer$orders$items instance) =>
        <String, dynamic>{
          'active': instance.active,
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
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
