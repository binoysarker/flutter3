// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$OrderAddress _$Fragment$OrderAddressFromJson(
        Map<String, dynamic> json) =>
    Fragment$OrderAddress(
      fullName: json['fullName'] as String?,
      company: json['company'] as String?,
      streetLine1: json['streetLine1'] as String?,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$OrderAddressToJson(
        Fragment$OrderAddress instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'company': instance.company,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'phoneNumber': instance.phoneNumber,
      '__typename': instance.$__typename,
    };

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

Fragment$Cart _$Fragment$CartFromJson(Map<String, dynamic> json) =>
    Fragment$Cart(
      id: json['id'] as String,
      code: json['code'] as String,
      state: json['state'] as String,
      active: json['active'] as bool,
      couponCodes: (json['couponCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) =>
              Fragment$Cart$promotions.fromJson(e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Fragment$Cart$lines.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalQuantity: json['totalQuantity'] as int,
      subTotal: json['subTotal'] as int,
      subTotalWithTax: json['subTotalWithTax'] as int,
      total: json['total'] as int,
      totalWithTax: json['totalWithTax'] as int,
      shipping: json['shipping'] as int,
      shippingWithTax: json['shippingWithTax'] as int,
      shippingLines: (json['shippingLines'] as List<dynamic>)
          .map((e) =>
              Fragment$Cart$shippingLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) =>
              Fragment$Cart$discounts.fromJson(e as Map<String, dynamic>))
          .toList(),
      customFields: json['customFields'] == null
          ? null
          : Fragment$Cart$customFields.fromJson(
              json['customFields'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$CartToJson(Fragment$Cart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$Cart$promotions _$Fragment$Cart$promotionsFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$promotions(
      couponCode: json['couponCode'] as String?,
      name: json['name'] as String,
      enabled: json['enabled'] as bool,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => Fragment$Cart$promotions$actions.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>)
          .map((e) => Fragment$Cart$promotions$conditions.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$promotionsToJson(
        Fragment$Cart$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$Cart$promotions$actions _$Fragment$Cart$promotions$actionsFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$promotions$actions(
      args: (json['args'] as List<dynamic>)
          .map((e) => Fragment$Cart$promotions$actions$args.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$promotions$actionsToJson(
        Fragment$Cart$promotions$actions instance) =>
    <String, dynamic>{
      'args': instance.args.map((e) => e.toJson()).toList(),
      'code': instance.code,
      '__typename': instance.$__typename,
    };

Fragment$Cart$promotions$actions$args
    _$Fragment$Cart$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Fragment$Cart$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$Cart$promotions$actions$argsToJson(
        Fragment$Cart$promotions$actions$args instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$Cart$promotions$conditions
    _$Fragment$Cart$promotions$conditionsFromJson(Map<String, dynamic> json) =>
        Fragment$Cart$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) => Fragment$Cart$promotions$conditions$args.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$Cart$promotions$conditionsToJson(
        Fragment$Cart$promotions$conditions instance) =>
    <String, dynamic>{
      'code': instance.code,
      'args': instance.args.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$Cart$promotions$conditions$args
    _$Fragment$Cart$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Fragment$Cart$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$Cart$promotions$conditions$argsToJson(
        Fragment$Cart$promotions$conditions$args instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      '__typename': instance.$__typename,
    };

Fragment$Cart$lines _$Fragment$Cart$linesFromJson(Map<String, dynamic> json) =>
    Fragment$Cart$lines(
      id: json['id'] as String,
      customFields: json['customFields'] as String?,
      featuredAsset: json['featuredAsset'] == null
          ? null
          : Fragment$Asset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] as int,
      unitPriceWithTax: json['unitPriceWithTax'] as int,
      quantity: json['quantity'] as int,
      linePriceWithTax: json['linePriceWithTax'] as int,
      discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
      productVariant: Fragment$Cart$lines$productVariant.fromJson(
          json['productVariant'] as Map<String, dynamic>),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) =>
              Fragment$Cart$lines$discounts.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$linesToJson(
        Fragment$Cart$lines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customFields': instance.customFields,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'unitPrice': instance.unitPrice,
      'unitPriceWithTax': instance.unitPriceWithTax,
      'quantity': instance.quantity,
      'linePriceWithTax': instance.linePriceWithTax,
      'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
      'productVariant': instance.productVariant.toJson(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Fragment$Cart$lines$productVariant _$Fragment$Cart$lines$productVariantFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$lines$productVariant(
      id: json['id'] as String,
      name: json['name'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$lines$productVariantToJson(
        Fragment$Cart$lines$productVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Fragment$Cart$lines$discounts _$Fragment$Cart$lines$discountsFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$lines$discounts(
      amount: json['amount'] as int,
      amountWithTax: json['amountWithTax'] as int,
      description: json['description'] as String,
      adjustmentSource: json['adjustmentSource'] as String,
      type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
          unknownValue: Enum$AdjustmentType.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$lines$discountsToJson(
        Fragment$Cart$lines$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

const _$Enum$AdjustmentTypeEnumMap = {
  Enum$AdjustmentType.DISTRIBUTED_ORDER_PROMOTION:
      'DISTRIBUTED_ORDER_PROMOTION',
  Enum$AdjustmentType.OTHER: 'OTHER',
  Enum$AdjustmentType.PROMOTION: 'PROMOTION',
  Enum$AdjustmentType.$unknown: r'$unknown',
};

Fragment$Cart$shippingLines _$Fragment$Cart$shippingLinesFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$shippingLines(
      priceWithTax: json['priceWithTax'] as int,
      shippingMethod: Fragment$Cart$shippingLines$shippingMethod.fromJson(
          json['shippingMethod'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$shippingLinesToJson(
        Fragment$Cart$shippingLines instance) =>
    <String, dynamic>{
      'priceWithTax': instance.priceWithTax,
      'shippingMethod': instance.shippingMethod.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$Cart$shippingLines$shippingMethod
    _$Fragment$Cart$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Fragment$Cart$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Fragment$Cart$shippingLines$shippingMethodToJson(
        Fragment$Cart$shippingLines$shippingMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      '__typename': instance.$__typename,
    };

Fragment$Cart$discounts _$Fragment$Cart$discountsFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$discounts(
      amount: json['amount'] as int,
      amountWithTax: json['amountWithTax'] as int,
      description: json['description'] as String,
      adjustmentSource: json['adjustmentSource'] as String,
      type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
          unknownValue: Enum$AdjustmentType.$unknown),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$discountsToJson(
        Fragment$Cart$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Fragment$Cart$customFields _$Fragment$Cart$customFieldsFromJson(
        Map<String, dynamic> json) =>
    Fragment$Cart$customFields(
      clientRequestToCancel: json['clientRequestToCancel'] as int?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$customFieldsToJson(
        Fragment$Cart$customFields instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
      '__typename': instance.$__typename,
    };

Fragment$Asset _$Fragment$AssetFromJson(Map<String, dynamic> json) =>
    Fragment$Asset(
      id: json['id'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      name: json['name'] as String,
      preview: json['preview'] as String,
      focalPoint: json['focalPoint'] == null
          ? null
          : Fragment$Asset$focalPoint.fromJson(
              json['focalPoint'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$AssetToJson(Fragment$Asset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'name': instance.name,
      'preview': instance.preview,
      'focalPoint': instance.focalPoint?.toJson(),
      '__typename': instance.$__typename,
    };

Fragment$Asset$focalPoint _$Fragment$Asset$focalPointFromJson(
        Map<String, dynamic> json) =>
    Fragment$Asset$focalPoint(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Asset$focalPointToJson(
        Fragment$Asset$focalPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder _$Query$GetActiveOrderFromJson(
        Map<String, dynamic> json) =>
    Query$GetActiveOrder(
      activeOrder: json['activeOrder'] == null
          ? null
          : Query$GetActiveOrder$activeOrder.fromJson(
              json['activeOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetActiveOrderToJson(
        Query$GetActiveOrder instance) =>
    <String, dynamic>{
      'activeOrder': instance.activeOrder?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder _$Query$GetActiveOrder$activeOrderFromJson(
        Map<String, dynamic> json) =>
    Query$GetActiveOrder$activeOrder(
      currencyCode: $enumDecode(
          _$Enum$CurrencyCodeEnumMap, json['currencyCode'],
          unknownValue: Enum$CurrencyCode.$unknown),
      id: json['id'] as String,
      code: json['code'] as String,
      state: json['state'] as String,
      active: json['active'] as bool,
      couponCodes: (json['couponCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => Query$GetActiveOrder$activeOrder$promotions.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Query$GetActiveOrder$activeOrder$lines.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalQuantity: json['totalQuantity'] as int,
      subTotal: json['subTotal'] as int,
      subTotalWithTax: json['subTotalWithTax'] as int,
      total: json['total'] as int,
      totalWithTax: json['totalWithTax'] as int,
      shipping: json['shipping'] as int,
      shippingWithTax: json['shippingWithTax'] as int,
      shippingLines: (json['shippingLines'] as List<dynamic>)
          .map((e) => Query$GetActiveOrder$activeOrder$shippingLines.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => Query$GetActiveOrder$activeOrder$discounts.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      customFields: json['customFields'] == null
          ? null
          : Query$GetActiveOrder$activeOrder$customFields.fromJson(
              json['customFields'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrderToJson(
        Query$GetActiveOrder$activeOrder instance) =>
    <String, dynamic>{
      'currencyCode': _$Enum$CurrencyCodeEnumMap[instance.currencyCode]!,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
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

Query$GetActiveOrder$activeOrder$promotions
    _$Query$GetActiveOrder$activeOrder$promotionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveOrder$activeOrder$promotions$actions.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) => Query$GetActiveOrder$activeOrder$promotions$conditions
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$promotionsToJson(
        Query$GetActiveOrder$activeOrder$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$promotions$actions
    _$Query$GetActiveOrder$activeOrder$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveOrder$activeOrder$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveOrder$activeOrder$promotions$actionsToJson(
            Query$GetActiveOrder$activeOrder$promotions$actions instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Query$GetActiveOrder$activeOrder$promotions$actions$args
    _$Query$GetActiveOrder$activeOrder$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetActiveOrder$activeOrder$promotions$actions$argsToJson(
        Query$GetActiveOrder$activeOrder$promotions$actions$args instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$promotions$conditions
    _$Query$GetActiveOrder$activeOrder$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveOrder$activeOrder$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveOrder$activeOrder$promotions$conditionsToJson(
            Query$GetActiveOrder$activeOrder$promotions$conditions instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Query$GetActiveOrder$activeOrder$promotions$conditions$args
    _$Query$GetActiveOrder$activeOrder$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveOrder$activeOrder$promotions$conditions$argsToJson(
            Query$GetActiveOrder$activeOrder$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Query$GetActiveOrder$activeOrder$lines
    _$Query$GetActiveOrder$activeOrder$linesFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Query$GetActiveOrder$activeOrder$lines$productVariant.fromJson(
                  json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Query$GetActiveOrder$activeOrder$lines$discounts.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$linesToJson(
        Query$GetActiveOrder$activeOrder$lines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'unitPrice': instance.unitPrice,
      'unitPriceWithTax': instance.unitPriceWithTax,
      'quantity': instance.quantity,
      'linePriceWithTax': instance.linePriceWithTax,
      'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
      'productVariant': instance.productVariant.toJson(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields,
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$lines$productVariant
    _$Query$GetActiveOrder$activeOrder$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveOrder$activeOrder$lines$productVariantToJson(
            Query$GetActiveOrder$activeOrder$lines$productVariant instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Query$GetActiveOrder$activeOrder$lines$discounts
    _$Query$GetActiveOrder$activeOrder$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$lines$discountsToJson(
        Query$GetActiveOrder$activeOrder$lines$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$shippingLines
    _$Query$GetActiveOrder$activeOrder$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$shippingLinesToJson(
        Query$GetActiveOrder$activeOrder$shippingLines instance) =>
    <String, dynamic>{
      'priceWithTax': instance.priceWithTax,
      'shippingMethod': instance.shippingMethod.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
    _$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethodToJson(
            Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Query$GetActiveOrder$activeOrder$discounts
    _$Query$GetActiveOrder$activeOrder$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$discountsToJson(
        Query$GetActiveOrder$activeOrder$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Query$GetActiveOrder$activeOrder$customFields
    _$Query$GetActiveOrder$activeOrder$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Query$GetActiveOrder$activeOrder$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveOrder$activeOrder$customFieldsToJson(
        Query$GetActiveOrder$activeOrder$customFields instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout _$Query$GetOrderForCheckoutFromJson(
        Map<String, dynamic> json) =>
    Query$GetOrderForCheckout(
      activeOrder: json['activeOrder'] == null
          ? null
          : Query$GetOrderForCheckout$activeOrder.fromJson(
              json['activeOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetOrderForCheckoutToJson(
        Query$GetOrderForCheckout instance) =>
    <String, dynamic>{
      'activeOrder': instance.activeOrder?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder
    _$Query$GetOrderForCheckout$activeOrderFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder(
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$promotions.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) => Query$GetOrderForCheckout$activeOrder$lines.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$shippingLines.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$discounts.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Query$GetOrderForCheckout$activeOrder$customFields.fromJson(
                  json['customFields'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
          shippingAddress: json['shippingAddress'] == null
              ? null
              : Fragment$OrderAddress.fromJson(
                  json['shippingAddress'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Query$GetOrderForCheckout$activeOrderToJson(
        Query$GetOrderForCheckout$activeOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
      '__typename': instance.$__typename,
      'shippingAddress': instance.shippingAddress?.toJson(),
    };

Query$GetOrderForCheckout$activeOrder$promotions
    _$Query$GetOrderForCheckout$activeOrder$promotionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderForCheckout$activeOrder$promotionsToJson(
        Query$GetOrderForCheckout$activeOrder$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder$promotions$actions
    _$Query$GetOrderForCheckout$activeOrder$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetOrderForCheckout$activeOrder$promotions$actionsToJson(
        Query$GetOrderForCheckout$activeOrder$promotions$actions instance) =>
    <String, dynamic>{
      'args': instance.args.map((e) => e.toJson()).toList(),
      'code': instance.code,
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder$promotions$actions$args
    _$Query$GetOrderForCheckout$activeOrder$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$promotions$actions$argsToJson(
            Query$GetOrderForCheckout$activeOrder$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$promotions$conditions
    _$Query$GetOrderForCheckout$activeOrder$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderForCheckout$activeOrder$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$promotions$conditionsToJson(
            Query$GetOrderForCheckout$activeOrder$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$promotions$conditions$args
    _$Query$GetOrderForCheckout$activeOrder$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$promotions$conditions$argsToJson(
            Query$GetOrderForCheckout$activeOrder$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$lines
    _$Query$GetOrderForCheckout$activeOrder$linesFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Query$GetOrderForCheckout$activeOrder$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) => Query$GetOrderForCheckout$activeOrder$lines$discounts
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderForCheckout$activeOrder$linesToJson(
        Query$GetOrderForCheckout$activeOrder$lines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'unitPrice': instance.unitPrice,
      'unitPriceWithTax': instance.unitPriceWithTax,
      'quantity': instance.quantity,
      'linePriceWithTax': instance.linePriceWithTax,
      'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
      'productVariant': instance.productVariant.toJson(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields,
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder$lines$productVariant
    _$Query$GetOrderForCheckout$activeOrder$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetOrderForCheckout$activeOrder$lines$productVariantToJson(
        Query$GetOrderForCheckout$activeOrder$lines$productVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder$lines$discounts
    _$Query$GetOrderForCheckout$activeOrder$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$lines$discountsToJson(
            Query$GetOrderForCheckout$activeOrder$lines$discounts instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$shippingLines
    _$Query$GetOrderForCheckout$activeOrder$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$shippingLinesToJson(
            Query$GetOrderForCheckout$activeOrder$shippingLines instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
    _$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethodToJson(
            Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Query$GetOrderForCheckout$activeOrder$discounts
    _$Query$GetOrderForCheckout$activeOrder$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderForCheckout$activeOrder$discountsToJson(
        Query$GetOrderForCheckout$activeOrder$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Query$GetOrderForCheckout$activeOrder$customFields
    _$Query$GetOrderForCheckout$activeOrder$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderForCheckout$activeOrder$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderForCheckout$activeOrder$customFieldsToJson(
        Query$GetOrderForCheckout$activeOrder$customFields instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
      '__typename': instance.$__typename,
    };

Variables$Mutation$RemoveOrderLine _$Variables$Mutation$RemoveOrderLineFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$RemoveOrderLine(
      orderLineId: json['orderLineId'] as String,
    );

Map<String, dynamic> _$Variables$Mutation$RemoveOrderLineToJson(
        Variables$Mutation$RemoveOrderLine instance) =>
    <String, dynamic>{
      'orderLineId': instance.orderLineId,
    };

Mutation$RemoveOrderLine _$Mutation$RemoveOrderLineFromJson(
        Map<String, dynamic> json) =>
    Mutation$RemoveOrderLine(
      removeOrderLine: Mutation$RemoveOrderLine$removeOrderLine.fromJson(
          json['removeOrderLine'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$RemoveOrderLineToJson(
        Mutation$RemoveOrderLine instance) =>
    <String, dynamic>{
      'removeOrderLine': instance.removeOrderLine.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$RemoveOrderLine$removeOrderLine
    _$Mutation$RemoveOrderLine$removeOrderLineFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$RemoveOrderLine$removeOrderLineToJson(
        Mutation$RemoveOrderLine$removeOrderLine instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$RemoveOrderLine$removeOrderLine$$Order
    _$Mutation$RemoveOrderLine$removeOrderLine$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) => Mutation$RemoveOrderLine$removeOrderLine$$Order$lines
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$RemoveOrderLine$removeOrderLine$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Mutation$RemoveOrderLine$removeOrderLine$$OrderToJson(
        Mutation$RemoveOrderLine$removeOrderLine$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
    };

Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotionsToJson(
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actionsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$args
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$argsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditionsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$args
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$argsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$lines
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$linesToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$lines instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariantToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discountsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLinesToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethodToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$RemoveOrderLine$removeOrderLine$$Order$discountsToJson(
        Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Mutation$RemoveOrderLine$removeOrderLine$$Order$customFields
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$Order$customFieldsToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
    _$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationErrorToJson(
            Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$RemoveAllOrderLines _$Mutation$RemoveAllOrderLinesFromJson(
        Map<String, dynamic> json) =>
    Mutation$RemoveAllOrderLines(
      removeAllOrderLines:
          Mutation$RemoveAllOrderLines$removeAllOrderLines.fromJson(
              json['removeAllOrderLines'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$RemoveAllOrderLinesToJson(
        Mutation$RemoveAllOrderLines instance) =>
    <String, dynamic>{
      'removeAllOrderLines': instance.removeAllOrderLines.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$RemoveAllOrderLines$removeAllOrderLines
    _$Mutation$RemoveAllOrderLines$removeAllOrderLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$RemoveAllOrderLines$removeAllOrderLinesToJson(
        Mutation$RemoveAllOrderLines$removeAllOrderLines instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'id': instance.id,
          'code': instance.code,
          'state': instance.state,
          'active': instance.active,
          'couponCodes': instance.couponCodes,
          'promotions': instance.promotions.map((e) => e.toJson()).toList(),
          'lines': instance.lines.map((e) => e.toJson()).toList(),
          'totalQuantity': instance.totalQuantity,
          'subTotal': instance.subTotal,
          'subTotalWithTax': instance.subTotalWithTax,
          'total': instance.total,
          'totalWithTax': instance.totalWithTax,
          'shipping': instance.shipping,
          'shippingWithTax': instance.shippingWithTax,
          'shippingLines':
              instance.shippingLines.map((e) => e.toJson()).toList(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields?.toJson(),
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotionsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actionsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$args
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$argsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditionsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$args
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$argsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$linesToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariantToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discountsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLinesToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethodToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discountsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFields
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFieldsToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationErrorToJson(
            Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Query$GetEligibleShippingMethods _$Query$GetEligibleShippingMethodsFromJson(
        Map<String, dynamic> json) =>
    Query$GetEligibleShippingMethods(
      eligibleShippingMethods: (json['eligibleShippingMethods']
              as List<dynamic>)
          .map((e) =>
              Query$GetEligibleShippingMethods$eligibleShippingMethods.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetEligibleShippingMethodsToJson(
        Query$GetEligibleShippingMethods instance) =>
    <String, dynamic>{
      'eligibleShippingMethods':
          instance.eligibleShippingMethods.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetEligibleShippingMethods$eligibleShippingMethods
    _$Query$GetEligibleShippingMethods$eligibleShippingMethodsFromJson(
            Map<String, dynamic> json) =>
        Query$GetEligibleShippingMethods$eligibleShippingMethods(
          id: json['id'] as String,
          name: json['name'] as String,
          code: json['code'] as String,
          description: json['description'] as String,
          price: json['price'] as int,
          priceWithTax: json['priceWithTax'] as int,
          metadata: json['metadata'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetEligibleShippingMethods$eligibleShippingMethodsToJson(
        Query$GetEligibleShippingMethods$eligibleShippingMethods instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'description': instance.description,
      'price': instance.price,
      'priceWithTax': instance.priceWithTax,
      'metadata': instance.metadata,
      '__typename': instance.$__typename,
    };

Query$GetEligiblePaymentMethods _$Query$GetEligiblePaymentMethodsFromJson(
        Map<String, dynamic> json) =>
    Query$GetEligiblePaymentMethods(
      eligiblePaymentMethods: (json['eligiblePaymentMethods'] as List<dynamic>)
          .map((e) =>
              Query$GetEligiblePaymentMethods$eligiblePaymentMethods.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetEligiblePaymentMethodsToJson(
        Query$GetEligiblePaymentMethods instance) =>
    <String, dynamic>{
      'eligiblePaymentMethods':
          instance.eligiblePaymentMethods.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetEligiblePaymentMethods$eligiblePaymentMethods
    _$Query$GetEligiblePaymentMethods$eligiblePaymentMethodsFromJson(
            Map<String, dynamic> json) =>
        Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
          id: json['id'] as String,
          code: json['code'] as String,
          eligibilityMessage: json['eligibilityMessage'] as String?,
          isEligible: json['isEligible'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetEligiblePaymentMethods$eligiblePaymentMethodsToJson(
            Query$GetEligiblePaymentMethods$eligiblePaymentMethods instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'eligibilityMessage': instance.eligibilityMessage,
          'isEligible': instance.isEligible,
          '__typename': instance.$__typename,
        };

Variables$Query$GetOrderByCode _$Variables$Query$GetOrderByCodeFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetOrderByCode(
      code: json['code'] as String,
    );

Map<String, dynamic> _$Variables$Query$GetOrderByCodeToJson(
        Variables$Query$GetOrderByCode instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

Query$GetOrderByCode _$Query$GetOrderByCodeFromJson(
        Map<String, dynamic> json) =>
    Query$GetOrderByCode(
      orderByCode: json['orderByCode'] == null
          ? null
          : Query$GetOrderByCode$orderByCode.fromJson(
              json['orderByCode'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetOrderByCodeToJson(
        Query$GetOrderByCode instance) =>
    <String, dynamic>{
      'orderByCode': instance.orderByCode?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode _$Query$GetOrderByCode$orderByCodeFromJson(
        Map<String, dynamic> json) =>
    Query$GetOrderByCode$orderByCode(
      id: json['id'] as String,
      code: json['code'] as String,
      state: json['state'] as String,
      active: json['active'] as bool,
      couponCodes: (json['couponCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => Query$GetOrderByCode$orderByCode$promotions.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      lines: (json['lines'] as List<dynamic>)
          .map((e) => Query$GetOrderByCode$orderByCode$lines.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalQuantity: json['totalQuantity'] as int,
      subTotal: json['subTotal'] as int,
      subTotalWithTax: json['subTotalWithTax'] as int,
      total: json['total'] as int,
      totalWithTax: json['totalWithTax'] as int,
      shipping: json['shipping'] as int,
      shippingWithTax: json['shippingWithTax'] as int,
      shippingLines: (json['shippingLines'] as List<dynamic>)
          .map((e) => Query$GetOrderByCode$orderByCode$shippingLines.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) => Query$GetOrderByCode$orderByCode$discounts.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      customFields: json['customFields'] == null
          ? null
          : Query$GetOrderByCode$orderByCode$customFields.fromJson(
              json['customFields'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
      updatedAt: json['updatedAt'] as String,
      customer: json['customer'] == null
          ? null
          : Query$GetOrderByCode$orderByCode$customer.fromJson(
              json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCodeToJson(
        Query$GetOrderByCode$orderByCode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
      '__typename': instance.$__typename,
      'updatedAt': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };

Query$GetOrderByCode$orderByCode$promotions
    _$Query$GetOrderByCode$orderByCode$promotionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderByCode$orderByCode$promotions$actions.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) => Query$GetOrderByCode$orderByCode$promotions$conditions
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$promotionsToJson(
        Query$GetOrderByCode$orderByCode$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$promotions$actions
    _$Query$GetOrderByCode$orderByCode$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderByCode$orderByCode$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderByCode$orderByCode$promotions$actionsToJson(
            Query$GetOrderByCode$orderByCode$promotions$actions instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Query$GetOrderByCode$orderByCode$promotions$actions$args
    _$Query$GetOrderByCode$orderByCode$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$GetOrderByCode$orderByCode$promotions$actions$argsToJson(
        Query$GetOrderByCode$orderByCode$promotions$actions$args instance) =>
    <String, dynamic>{
      'value': instance.value,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$promotions$conditions
    _$Query$GetOrderByCode$orderByCode$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderByCode$orderByCode$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderByCode$orderByCode$promotions$conditionsToJson(
            Query$GetOrderByCode$orderByCode$promotions$conditions instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Query$GetOrderByCode$orderByCode$promotions$conditions$args
    _$Query$GetOrderByCode$orderByCode$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderByCode$orderByCode$promotions$conditions$argsToJson(
            Query$GetOrderByCode$orderByCode$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Query$GetOrderByCode$orderByCode$lines
    _$Query$GetOrderByCode$orderByCode$linesFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Query$GetOrderByCode$orderByCode$lines$productVariant.fromJson(
                  json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Query$GetOrderByCode$orderByCode$lines$discounts.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$linesToJson(
        Query$GetOrderByCode$orderByCode$lines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'unitPrice': instance.unitPrice,
      'unitPriceWithTax': instance.unitPriceWithTax,
      'quantity': instance.quantity,
      'linePriceWithTax': instance.linePriceWithTax,
      'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
      'productVariant': instance.productVariant.toJson(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields,
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$lines$productVariant
    _$Query$GetOrderByCode$orderByCode$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderByCode$orderByCode$lines$productVariantToJson(
            Query$GetOrderByCode$orderByCode$lines$productVariant instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Query$GetOrderByCode$orderByCode$lines$discounts
    _$Query$GetOrderByCode$orderByCode$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$lines$discountsToJson(
        Query$GetOrderByCode$orderByCode$lines$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$shippingLines
    _$Query$GetOrderByCode$orderByCode$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$shippingLinesToJson(
        Query$GetOrderByCode$orderByCode$shippingLines instance) =>
    <String, dynamic>{
      'priceWithTax': instance.priceWithTax,
      'shippingMethod': instance.shippingMethod.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
    _$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethodToJson(
            Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Query$GetOrderByCode$orderByCode$discounts
    _$Query$GetOrderByCode$orderByCode$discountsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$discountsToJson(
        Query$GetOrderByCode$orderByCode$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$customFields
    _$Query$GetOrderByCode$orderByCode$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$customFieldsToJson(
        Query$GetOrderByCode$orderByCode$customFields instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$customer
    _$Query$GetOrderByCode$orderByCode$customerFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$customer(
          id: json['id'] as String,
          emailAddress: json['emailAddress'] as String,
          firstName: json['firstName'] as String,
          lastName: json['lastName'] as String,
          user: json['user'] == null
              ? null
              : Query$GetOrderByCode$orderByCode$customer$user.fromJson(
                  json['user'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$customerToJson(
        Query$GetOrderByCode$orderByCode$customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emailAddress': instance.emailAddress,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'user': instance.user?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetOrderByCode$orderByCode$customer$user
    _$Query$GetOrderByCode$orderByCode$customer$userFromJson(
            Map<String, dynamic> json) =>
        Query$GetOrderByCode$orderByCode$customer$user(
          id: json['id'] as String,
          identifier: json['identifier'] as String,
          verified: json['verified'] as bool,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetOrderByCode$orderByCode$customer$userToJson(
        Query$GetOrderByCode$orderByCode$customer$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'verified': instance.verified,
      '__typename': instance.$__typename,
    };

Variables$Mutation$AddPayment _$Variables$Mutation$AddPaymentFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$AddPayment(
      input: Input$PaymentInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Mutation$AddPaymentToJson(
        Variables$Mutation$AddPayment instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Mutation$AddPayment _$Mutation$AddPaymentFromJson(Map<String, dynamic> json) =>
    Mutation$AddPayment(
      addPaymentToOrder: Mutation$AddPayment$addPaymentToOrder.fromJson(
          json['addPaymentToOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$AddPaymentToJson(
        Mutation$AddPayment instance) =>
    <String, dynamic>{
      'addPaymentToOrder': instance.addPaymentToOrder.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$AddPayment$addPaymentToOrder
    _$Mutation$AddPayment$addPaymentToOrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$AddPayment$addPaymentToOrderToJson(
        Mutation$AddPayment$addPaymentToOrder instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$AddPayment$addPaymentToOrder$$Order
    _$Mutation$AddPayment$addPaymentToOrder$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$lines.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) => Mutation$AddPayment$addPaymentToOrder$$Order$discounts
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$AddPayment$addPaymentToOrder$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Mutation$AddPayment$addPaymentToOrder$$OrderToJson(
        Mutation$AddPayment$addPaymentToOrder$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
    };

Mutation$AddPayment$addPaymentToOrder$$Order$promotions
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotionsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$promotions instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actionsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$args
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$argsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditionsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$args
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$argsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$lines
    _$Mutation$AddPayment$addPaymentToOrder$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$AddPayment$addPaymentToOrder$$Order$linesToJson(
        Mutation$AddPayment$addPaymentToOrder$$Order$lines instance) =>
    <String, dynamic>{
      'id': instance.id,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'unitPrice': instance.unitPrice,
      'unitPriceWithTax': instance.unitPriceWithTax,
      'quantity': instance.quantity,
      'linePriceWithTax': instance.linePriceWithTax,
      'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
      'productVariant': instance.productVariant.toJson(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields,
      '__typename': instance.$__typename,
    };

Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
    _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariantToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts
    _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discountsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines
    _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLinesToJson(
        Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines instance) =>
    <String, dynamic>{
      'priceWithTax': instance.priceWithTax,
      'shippingMethod': instance.shippingMethod.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
    _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethodToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$discounts
    _$Mutation$AddPayment$addPaymentToOrder$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$Order$discountsToJson(
            Mutation$AddPayment$addPaymentToOrder$$Order$discounts instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$AddPayment$addPaymentToOrder$$Order$customFields
    _$Mutation$AddPayment$addPaymentToOrder$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddPayment$addPaymentToOrder$$Order$customFieldsToJson(
        Mutation$AddPayment$addPaymentToOrder$$Order$customFields instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
      '__typename': instance.$__typename,
    };

Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
    _$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodErrorToJson(
            Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError
    _$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderErrorToJson(
        Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError
    _$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateErrorToJson(
            Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
    _$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionErrorToJson(
            Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError
    _$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedErrorToJson(
            Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError
    _$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedErrorToJson(
        Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Variables$Mutation$ApplyCouponCode _$Variables$Mutation$ApplyCouponCodeFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$ApplyCouponCode(
      input: json['input'] as String,
    );

Map<String, dynamic> _$Variables$Mutation$ApplyCouponCodeToJson(
        Variables$Mutation$ApplyCouponCode instance) =>
    <String, dynamic>{
      'input': instance.input,
    };

Mutation$ApplyCouponCode _$Mutation$ApplyCouponCodeFromJson(
        Map<String, dynamic> json) =>
    Mutation$ApplyCouponCode(
      applyCouponCode: Mutation$ApplyCouponCode$applyCouponCode.fromJson(
          json['applyCouponCode'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$ApplyCouponCodeToJson(
        Mutation$ApplyCouponCode instance) =>
    <String, dynamic>{
      'applyCouponCode': instance.applyCouponCode.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$ApplyCouponCode$applyCouponCode
    _$Mutation$ApplyCouponCode$applyCouponCodeFromJson(
            Map<String, dynamic> json) =>
        Mutation$ApplyCouponCode$applyCouponCode(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$ApplyCouponCode$applyCouponCodeToJson(
        Mutation$ApplyCouponCode$applyCouponCode instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Variables$Mutation$AdjustOrderLine _$Variables$Mutation$AdjustOrderLineFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$AdjustOrderLine(
      orderLineId: json['orderLineId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$Variables$Mutation$AdjustOrderLineToJson(
        Variables$Mutation$AdjustOrderLine instance) =>
    <String, dynamic>{
      'orderLineId': instance.orderLineId,
      'quantity': instance.quantity,
    };

Mutation$AdjustOrderLine _$Mutation$AdjustOrderLineFromJson(
        Map<String, dynamic> json) =>
    Mutation$AdjustOrderLine(
      adjustOrderLine: Mutation$AdjustOrderLine$adjustOrderLine.fromJson(
          json['adjustOrderLine'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$AdjustOrderLineToJson(
        Mutation$AdjustOrderLine instance) =>
    <String, dynamic>{
      'adjustOrderLine': instance.adjustOrderLine.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$AdjustOrderLine$adjustOrderLine
    _$Mutation$AdjustOrderLine$adjustOrderLineFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$AdjustOrderLine$adjustOrderLineToJson(
        Mutation$AdjustOrderLine$adjustOrderLine instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$AdjustOrderLine$adjustOrderLine$$Order
    _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) => Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderToJson(
        Mutation$AdjustOrderLine$adjustOrderLine$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
    };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotionsToJson(
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions instance) =>
    <String, dynamic>{
      'couponCode': instance.couponCode,
      'name': instance.name,
      'enabled': instance.enabled,
      'actions': instance.actions.map((e) => e.toJson()).toList(),
      'conditions': instance.conditions.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actionsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$args
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$argsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditionsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$args
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$argsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$linesToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariantToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discountsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLinesToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethodToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discountsToJson(
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFields
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFieldsToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
    _$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
          $__typename: json['__typename'] as String,
          message: json['message'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockErrorToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'message': instance.message,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
    _$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
          $__typename: json['__typename'] as String,
          message: json['message'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityErrorToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'message': instance.message,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
        };

Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError
    _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
          $__typename: json['__typename'] as String,
          message: json['message'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
        );

Map<String,
    dynamic> _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitErrorToJson(
        Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'message': instance.message,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
    };

Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
    _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
          $__typename: json['__typename'] as String,
          message: json['message'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
        );

Map<String, dynamic>
    _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationErrorToJson(
            Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'message': instance.message,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
        };

Variables$Mutation$SetShippingAddress
    _$Variables$Mutation$SetShippingAddressFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$SetShippingAddress(
          input: Input$CreateAddressInput.fromJson(
              json['input'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Variables$Mutation$SetShippingAddressToJson(
        Variables$Mutation$SetShippingAddress instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Mutation$SetShippingAddress _$Mutation$SetShippingAddressFromJson(
        Map<String, dynamic> json) =>
    Mutation$SetShippingAddress(
      setOrderShippingAddress:
          Mutation$SetShippingAddress$setOrderShippingAddress.fromJson(
              json['setOrderShippingAddress'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$SetShippingAddressToJson(
        Mutation$SetShippingAddress instance) =>
    <String, dynamic>{
      'setOrderShippingAddress': instance.setOrderShippingAddress.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$SetShippingAddress$setOrderShippingAddress
    _$Mutation$SetShippingAddress$setOrderShippingAddressFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddressToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
          shippingAddress: json['shippingAddress'] == null
              ? null
              : Fragment$OrderAddress.fromJson(
                  json['shippingAddress'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$Mutation$SetShippingAddress$setOrderShippingAddress$$OrderToJson(
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
      'shippingAddress': instance.shippingAddress?.toJson(),
    };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotionsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actionsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$args
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$argsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditionsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$args
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$argsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$linesToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariantToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discountsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLinesToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethodToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discountsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFields
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFieldsToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderErrorToJson(
            Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Variables$Mutation$SetShippingMethod
    _$Variables$Mutation$SetShippingMethodFromJson(Map<String, dynamic> json) =>
        Variables$Mutation$SetShippingMethod(
          id: json['id'] as String,
        );

Map<String, dynamic> _$Variables$Mutation$SetShippingMethodToJson(
        Variables$Mutation$SetShippingMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Mutation$SetShippingMethod _$Mutation$SetShippingMethodFromJson(
        Map<String, dynamic> json) =>
    Mutation$SetShippingMethod(
      setOrderShippingMethod:
          Mutation$SetShippingMethod$setOrderShippingMethod.fromJson(
              json['setOrderShippingMethod'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$SetShippingMethodToJson(
        Mutation$SetShippingMethod instance) =>
    <String, dynamic>{
      'setOrderShippingMethod': instance.setOrderShippingMethod.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$SetShippingMethod$setOrderShippingMethod
    _$Mutation$SetShippingMethod$setOrderShippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$SetShippingMethod$setOrderShippingMethodToJson(
        Mutation$SetShippingMethod$setOrderShippingMethod instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderToJson(
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
      'couponCodes': instance.couponCodes,
      'promotions': instance.promotions.map((e) => e.toJson()).toList(),
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'totalQuantity': instance.totalQuantity,
      'subTotal': instance.subTotal,
      'subTotalWithTax': instance.subTotalWithTax,
      'total': instance.total,
      'totalWithTax': instance.totalWithTax,
      'shipping': instance.shipping,
      'shippingWithTax': instance.shippingWithTax,
      'shippingLines': instance.shippingLines.map((e) => e.toJson()).toList(),
      'discounts': instance.discounts.map((e) => e.toJson()).toList(),
      'customFields': instance.customFields?.toJson(),
    };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotionsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actionsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$args
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$argsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditionsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$args
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$argsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$linesToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariantToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discountsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLinesToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethodToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discountsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFields
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFieldsToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodErrorToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderErrorToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationErrorToJson(
            Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Variables$Mutation$CancelOrderOnClientRequest
    _$Variables$Mutation$CancelOrderOnClientRequestFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$CancelOrderOnClientRequest(
          userId: json['userId'] as String,
        );

Map<String, dynamic> _$Variables$Mutation$CancelOrderOnClientRequestToJson(
        Variables$Mutation$CancelOrderOnClientRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

Mutation$CancelOrderOnClientRequest
    _$Mutation$CancelOrderOnClientRequestFromJson(Map<String, dynamic> json) =>
        Mutation$CancelOrderOnClientRequest(
          cancelOrderOnClientRequest: Fragment$Cart.fromJson(
              json['cancelOrderOnClientRequest'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$CancelOrderOnClientRequestToJson(
        Mutation$CancelOrderOnClientRequest instance) =>
    <String, dynamic>{
      'cancelOrderOnClientRequest':
          instance.cancelOrderOnClientRequest.toJson(),
      '__typename': instance.$__typename,
    };

Query$NextOrderStates _$Query$NextOrderStatesFromJson(
        Map<String, dynamic> json) =>
    Query$NextOrderStates(
      nextOrderStates: (json['nextOrderStates'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$NextOrderStatesToJson(
        Query$NextOrderStates instance) =>
    <String, dynamic>{
      'nextOrderStates': instance.nextOrderStates,
      '__typename': instance.$__typename,
    };

Variables$Mutation$TransitionOrderToState
    _$Variables$Mutation$TransitionOrderToStateFromJson(
            Map<String, dynamic> json) =>
        Variables$Mutation$TransitionOrderToState(
          state: json['state'] as String,
        );

Map<String, dynamic> _$Variables$Mutation$TransitionOrderToStateToJson(
        Variables$Mutation$TransitionOrderToState instance) =>
    <String, dynamic>{
      'state': instance.state,
    };

Mutation$TransitionOrderToState _$Mutation$TransitionOrderToStateFromJson(
        Map<String, dynamic> json) =>
    Mutation$TransitionOrderToState(
      transitionOrderToState: json['transitionOrderToState'] == null
          ? null
          : Mutation$TransitionOrderToState$transitionOrderToState.fromJson(
              json['transitionOrderToState'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$TransitionOrderToStateToJson(
        Mutation$TransitionOrderToState instance) =>
    <String, dynamic>{
      'transitionOrderToState': instance.transitionOrderToState?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$TransitionOrderToState$transitionOrderToState
    _$Mutation$TransitionOrderToState$transitionOrderToStateFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToStateToJson(
            Mutation$TransitionOrderToState$transitionOrderToState instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order
    _$Mutation$TransitionOrderToState$transitionOrderToState$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$OrderToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'id': instance.id,
          'code': instance.code,
          'state': instance.state,
          'active': instance.active,
          'couponCodes': instance.couponCodes,
          'promotions': instance.promotions.map((e) => e.toJson()).toList(),
          'lines': instance.lines.map((e) => e.toJson()).toList(),
          'totalQuantity': instance.totalQuantity,
          'subTotal': instance.subTotal,
          'subTotalWithTax': instance.subTotalWithTax,
          'total': instance.total,
          'totalWithTax': instance.totalWithTax,
          'shipping': instance.shipping,
          'shippingWithTax': instance.shippingWithTax,
          'shippingLines':
              instance.shippingLines.map((e) => e.toJson()).toList(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields?.toJson(),
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotionsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actionsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$args
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$argsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditionsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$args
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$argsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$linesToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariant
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariantToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discounts
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discountsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLinesToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethod
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethodToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$discounts
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$discountsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFields
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFieldsToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$TransitionOrderToState$transitionOrderToState$$OrderStateTransitionError
    _$Mutation$TransitionOrderToState$transitionOrderToState$$OrderStateTransitionErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionOrderToState$transitionOrderToState$$OrderStateTransitionError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionOrderToState$transitionOrderToState$$OrderStateTransitionErrorToJson(
            Mutation$TransitionOrderToState$transitionOrderToState$$OrderStateTransitionError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$TransitionToArrangingPayment
    _$Mutation$TransitionToArrangingPaymentFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment(
          transitionOrderToState: json['transitionOrderToState'] == null
              ? null
              : Mutation$TransitionToArrangingPayment$transitionOrderToState
                  .fromJson(
                      json['transitionOrderToState'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$TransitionToArrangingPaymentToJson(
        Mutation$TransitionToArrangingPayment instance) =>
    <String, dynamic>{
      'transitionOrderToState': instance.transitionOrderToState?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$TransitionToArrangingPayment$transitionOrderToState
    _$Mutation$TransitionToArrangingPayment$transitionOrderToStateFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToStateToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'id': instance.id,
          'code': instance.code,
          'state': instance.state,
          'active': instance.active,
          'couponCodes': instance.couponCodes,
          'promotions': instance.promotions.map((e) => e.toJson()).toList(),
          'lines': instance.lines.map((e) => e.toJson()).toList(),
          'totalQuantity': instance.totalQuantity,
          'subTotal': instance.subTotal,
          'subTotalWithTax': instance.subTotalWithTax,
          'total': instance.total,
          'totalWithTax': instance.totalWithTax,
          'shipping': instance.shipping,
          'shippingWithTax': instance.shippingWithTax,
          'shippingLines':
              instance.shippingLines.map((e) => e.toJson()).toList(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields?.toJson(),
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotionsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actionsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$args
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$argsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditionsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$args
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$argsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$linesToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariantToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discountsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLinesToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethodToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discountsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFields
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFieldsToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionErrorToJson(
            Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };

Mutation$TransitionToAddingItems _$Mutation$TransitionToAddingItemsFromJson(
        Map<String, dynamic> json) =>
    Mutation$TransitionToAddingItems(
      transitionOrderToState: json['transitionOrderToState'] == null
          ? null
          : Mutation$TransitionToAddingItems$transitionOrderToState.fromJson(
              json['transitionOrderToState'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$TransitionToAddingItemsToJson(
        Mutation$TransitionToAddingItems instance) =>
    <String, dynamic>{
      'transitionOrderToState': instance.transitionOrderToState?.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$TransitionToAddingItems$transitionOrderToState
    _$Mutation$TransitionToAddingItems$transitionOrderToStateFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToStateToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          code: json['code'] as String,
          state: json['state'] as String,
          active: json['active'] as bool,
          couponCodes: (json['couponCodes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          promotions: (json['promotions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as int,
          subTotalWithTax: json['subTotalWithTax'] as int,
          total: json['total'] as int,
          totalWithTax: json['totalWithTax'] as int,
          shipping: json['shipping'] as int,
          shippingWithTax: json['shippingWithTax'] as int,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFields
                  .fromJson(json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'id': instance.id,
          'code': instance.code,
          'state': instance.state,
          'active': instance.active,
          'couponCodes': instance.couponCodes,
          'promotions': instance.promotions.map((e) => e.toJson()).toList(),
          'lines': instance.lines.map((e) => e.toJson()).toList(),
          'totalQuantity': instance.totalQuantity,
          'subTotal': instance.subTotal,
          'subTotalWithTax': instance.subTotalWithTax,
          'total': instance.total,
          'totalWithTax': instance.totalWithTax,
          'shipping': instance.shipping,
          'shippingWithTax': instance.shippingWithTax,
          'shippingLines':
              instance.shippingLines.map((e) => e.toJson()).toList(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields?.toJson(),
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotionsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions
                instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actionsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$args
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$argsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditionsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$args
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$argsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as int,
          unitPriceWithTax: json['unitPriceWithTax'] as int,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as int,
          discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as int,
          productVariant:
              Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$linesToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'featuredAsset': instance.featuredAsset?.toJson(),
          'unitPrice': instance.unitPrice,
          'unitPriceWithTax': instance.unitPriceWithTax,
          'quantity': instance.quantity,
          'linePriceWithTax': instance.linePriceWithTax,
          'discountedLinePriceWithTax': instance.discountedLinePriceWithTax,
          'productVariant': instance.productVariant.toJson(),
          'discounts': instance.discounts.map((e) => e.toJson()).toList(),
          'customFields': instance.customFields,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariantToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discountsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as int,
          shippingMethod:
              Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLinesToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
                instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethodToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
          amount: json['amount'] as int,
          amountWithTax: json['amountWithTax'] as int,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discountsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
                instance) =>
        <String, dynamic>{
          'amount': instance.amount,
          'amountWithTax': instance.amountWithTax,
          'description': instance.description,
          'adjustmentSource': instance.adjustmentSource,
          'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFields
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFieldsToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$Order$customFields
                instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic>
    _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionErrorToJson(
            Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
                instance) =>
        <String, dynamic>{
          '__typename': instance.$__typename,
          'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
          'message': instance.message,
        };
