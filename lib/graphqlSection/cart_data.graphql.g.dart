// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_data.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      subTotal: json['subTotal'] as String,
      subTotalWithTax: json['subTotalWithTax'] as String,
      total: json['total'] as String,
      totalWithTax: json['totalWithTax'] as String,
      shipping: json['shipping'] as String,
      shippingWithTax: json['shippingWithTax'] as String,
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
      featuredAsset: json['featuredAsset'] == null
          ? null
          : Fragment$Asset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] as String,
      unitPriceWithTax: json['unitPriceWithTax'] as String,
      quantity: json['quantity'] as int,
      linePriceWithTax: json['linePriceWithTax'] as String,
      discountedLinePriceWithTax: json['discountedLinePriceWithTax'] as String,
      productVariant: Fragment$Cart$lines$productVariant.fromJson(
          json['productVariant'] as Map<String, dynamic>),
      discounts: (json['discounts'] as List<dynamic>)
          .map((e) =>
              Fragment$Cart$lines$discounts.fromJson(e as Map<String, dynamic>))
          .toList(),
      customFields: json['customFields'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$Cart$linesToJson(
        Fragment$Cart$lines instance) =>
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
      amount: json['amount'] as String,
      amountWithTax: json['amountWithTax'] as String,
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
      priceWithTax: json['priceWithTax'] as String,
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
      amount: json['amount'] as String,
      amountWithTax: json['amountWithTax'] as String,
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
  Enum$ErrorCode.GUEST_CHECKOUT_ERROR: 'GUEST_CHECKOUT_ERROR',
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

Query$GetCartTotals _$Query$GetCartTotalsFromJson(Map<String, dynamic> json) =>
    Query$GetCartTotals(
      activeOrder: json['activeOrder'] == null
          ? null
          : Query$GetCartTotals$activeOrder.fromJson(
              json['activeOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCartTotalsToJson(
        Query$GetCartTotals instance) =>
    <String, dynamic>{
      'activeOrder': instance.activeOrder?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCartTotals$activeOrder _$Query$GetCartTotals$activeOrderFromJson(
        Map<String, dynamic> json) =>
    Query$GetCartTotals$activeOrder(
      id: json['id'] as String,
      active: json['active'] as bool,
      totalQuantity: json['totalQuantity'] as int,
      totalWithTax: json['totalWithTax'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCartTotals$activeOrderToJson(
        Query$GetCartTotals$activeOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'totalQuantity': instance.totalQuantity,
      'totalWithTax': instance.totalWithTax,
      '__typename': instance.$__typename,
    };

Variables$Mutation$AddToCart _$Variables$Mutation$AddToCartFromJson(
        Map<String, dynamic> json) =>
    Variables$Mutation$AddToCart(
      variantId: json['variantId'] as String,
      qty: json['qty'] as int,
    );

Map<String, dynamic> _$Variables$Mutation$AddToCartToJson(
        Variables$Mutation$AddToCart instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'qty': instance.qty,
    };

Mutation$AddToCart _$Mutation$AddToCartFromJson(Map<String, dynamic> json) =>
    Mutation$AddToCart(
      addItemToOrder: Mutation$AddToCart$addItemToOrder.fromJson(
          json['addItemToOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$AddToCartToJson(Mutation$AddToCart instance) =>
    <String, dynamic>{
      'addItemToOrder': instance.addItemToOrder.toJson(),
      '__typename': instance.$__typename,
    };

Mutation$AddToCart$addItemToOrder _$Mutation$AddToCart$addItemToOrderFromJson(
        Map<String, dynamic> json) =>
    Mutation$AddToCart$addItemToOrder(
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Mutation$AddToCart$addItemToOrderToJson(
        Mutation$AddToCart$addItemToOrder instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Mutation$AddToCart$addItemToOrder$$Order
    _$Mutation$AddToCart$addItemToOrder$$OrderFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order(
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
                  Mutation$AddToCart$addItemToOrder$$Order$promotions.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          lines: (json['lines'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$lines.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          totalQuantity: json['totalQuantity'] as int,
          subTotal: json['subTotal'] as String,
          subTotalWithTax: json['subTotalWithTax'] as String,
          total: json['total'] as String,
          totalWithTax: json['totalWithTax'] as String,
          shipping: json['shipping'] as String,
          shippingWithTax: json['shippingWithTax'] as String,
          shippingLines: (json['shippingLines'] as List<dynamic>)
              .map((e) => Mutation$AddToCart$addItemToOrder$$Order$shippingLines
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$discounts.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] == null
              ? null
              : Mutation$AddToCart$addItemToOrder$$Order$customFields.fromJson(
                  json['customFields'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Mutation$AddToCart$addItemToOrder$$OrderToJson(
        Mutation$AddToCart$addItemToOrder$$Order instance) =>
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

Mutation$AddToCart$addItemToOrder$$Order$promotions
    _$Mutation$AddToCart$addItemToOrder$$Order$promotionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$promotions(
          couponCode: json['couponCode'] as String?,
          name: json['name'] as String,
          enabled: json['enabled'] as bool,
          actions: (json['actions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          conditions: (json['conditions'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$promotionsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$promotions instance) =>
        <String, dynamic>{
          'couponCode': instance.couponCode,
          'name': instance.name,
          'enabled': instance.enabled,
          'actions': instance.actions.map((e) => e.toJson()).toList(),
          'conditions': instance.conditions.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$promotions$actions
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          code: json['code'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actionsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$promotions$actions
                instance) =>
        <String, dynamic>{
          'args': instance.args.map((e) => e.toJson()).toList(),
          'code': instance.code,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
          value: json['value'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$argsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
                instance) =>
        <String, dynamic>{
          'value': instance.value,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditionsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
          code: json['code'] as String,
          args: (json['args'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditionsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
                instance) =>
        <String, dynamic>{
          'code': instance.code,
          'args': instance.args.map((e) => e.toJson()).toList(),
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$argsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
          name: json['name'] as String,
          value: json['value'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$argsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'value': instance.value,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$lines
    _$Mutation$AddToCart$addItemToOrder$$Order$linesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$lines(
          id: json['id'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          unitPrice: json['unitPrice'] as String,
          unitPriceWithTax: json['unitPriceWithTax'] as String,
          quantity: json['quantity'] as int,
          linePriceWithTax: json['linePriceWithTax'] as String,
          discountedLinePriceWithTax:
              json['discountedLinePriceWithTax'] as String,
          productVariant:
              Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
                  .fromJson(json['productVariant'] as Map<String, dynamic>),
          discounts: (json['discounts'] as List<dynamic>)
              .map((e) =>
                  Mutation$AddToCart$addItemToOrder$$Order$lines$discounts
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          customFields: json['customFields'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$AddToCart$addItemToOrder$$Order$linesToJson(
        Mutation$AddToCart$addItemToOrder$$Order$lines instance) =>
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

Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
    _$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariantFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariantToJson(
            Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$lines$discounts
    _$Mutation$AddToCart$addItemToOrder$$Order$lines$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
          amount: json['amount'] as String,
          amountWithTax: json['amountWithTax'] as String,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddToCart$addItemToOrder$$Order$lines$discountsToJson(
        Mutation$AddToCart$addItemToOrder$$Order$lines$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Mutation$AddToCart$addItemToOrder$$Order$shippingLines
    _$Mutation$AddToCart$addItemToOrder$$Order$shippingLinesFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
          priceWithTax: json['priceWithTax'] as String,
          shippingMethod:
              Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
                  .fromJson(json['shippingMethod'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$shippingLinesToJson(
            Mutation$AddToCart$addItemToOrder$$Order$shippingLines instance) =>
        <String, dynamic>{
          'priceWithTax': instance.priceWithTax,
          'shippingMethod': instance.shippingMethod.toJson(),
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
    _$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethodFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
          id: json['id'] as String,
          code: json['code'] as String,
          name: json['name'] as String,
          description: json['description'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethodToJson(
            Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'code': instance.code,
          'name': instance.name,
          'description': instance.description,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$Order$discounts
    _$Mutation$AddToCart$addItemToOrder$$Order$discountsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$discounts(
          amount: json['amount'] as String,
          amountWithTax: json['amountWithTax'] as String,
          description: json['description'] as String,
          adjustmentSource: json['adjustmentSource'] as String,
          type: $enumDecode(_$Enum$AdjustmentTypeEnumMap, json['type'],
              unknownValue: Enum$AdjustmentType.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Mutation$AddToCart$addItemToOrder$$Order$discountsToJson(
        Mutation$AddToCart$addItemToOrder$$Order$discounts instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'amountWithTax': instance.amountWithTax,
      'description': instance.description,
      'adjustmentSource': instance.adjustmentSource,
      'type': _$Enum$AdjustmentTypeEnumMap[instance.type]!,
      '__typename': instance.$__typename,
    };

Mutation$AddToCart$addItemToOrder$$Order$customFields
    _$Mutation$AddToCart$addItemToOrder$$Order$customFieldsFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$Order$customFields(
          clientRequestToCancel: json['clientRequestToCancel'] as int?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Mutation$AddToCart$addItemToOrder$$Order$customFieldsToJson(
            Mutation$AddToCart$addItemToOrder$$Order$customFields instance) =>
        <String, dynamic>{
          'clientRequestToCancel': instance.clientRequestToCancel,
          '__typename': instance.$__typename,
        };

Mutation$AddToCart$addItemToOrder$$InsufficientStockError
    _$Mutation$AddToCart$addItemToOrder$$InsufficientStockErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
          order: Fragment$Cart.fromJson(json['order'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$Mutation$AddToCart$addItemToOrder$$InsufficientStockErrorToJson(
        Mutation$AddToCart$addItemToOrder$$InsufficientStockError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
      'order': instance.order.toJson(),
    };

Mutation$AddToCart$addItemToOrder$$NegativeQuantityError
    _$Mutation$AddToCart$addItemToOrder$$NegativeQuantityErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddToCart$addItemToOrder$$NegativeQuantityErrorToJson(
        Mutation$AddToCart$addItemToOrder$$NegativeQuantityError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Mutation$AddToCart$addItemToOrder$$OrderLimitError
    _$Mutation$AddToCart$addItemToOrder$$OrderLimitErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$OrderLimitError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String, dynamic> _$Mutation$AddToCart$addItemToOrder$$OrderLimitErrorToJson(
        Mutation$AddToCart$addItemToOrder$$OrderLimitError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };

Mutation$AddToCart$addItemToOrder$$OrderModificationError
    _$Mutation$AddToCart$addItemToOrder$$OrderModificationErrorFromJson(
            Map<String, dynamic> json) =>
        Mutation$AddToCart$addItemToOrder$$OrderModificationError(
          $__typename: json['__typename'] as String,
          errorCode: $enumDecode(_$Enum$ErrorCodeEnumMap, json['errorCode'],
              unknownValue: Enum$ErrorCode.$unknown),
          message: json['message'] as String,
        );

Map<String,
    dynamic> _$Mutation$AddToCart$addItemToOrder$$OrderModificationErrorToJson(
        Mutation$AddToCart$addItemToOrder$$OrderModificationError instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'errorCode': _$Enum$ErrorCodeEnumMap[instance.errorCode]!,
      'message': instance.message,
    };
