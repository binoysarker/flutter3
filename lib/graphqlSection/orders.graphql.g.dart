// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Cart _$Fragment$CartFromJson(Map<String, dynamic> json) =>
    Fragment$Cart(
      id: json['id'] as String,
      code: json['code'] as String,
      state: json['state'] as String,
      active: json['active'] as bool,
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
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$CartToJson(Fragment$Cart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
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
      '__typename': instance.$__typename,
    };

Fragment$Cart$lines _$Fragment$Cart$linesFromJson(Map<String, dynamic> json) =>
    Fragment$Cart$lines(
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
  Enum$AdjustmentType.PROMOTION: 'PROMOTION',
  Enum$AdjustmentType.DISTRIBUTED_ORDER_PROMOTION:
      'DISTRIBUTED_ORDER_PROMOTION',
  Enum$AdjustmentType.OTHER: 'OTHER',
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
          : Fragment$Cart.fromJson(json['activeOrder'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetActiveOrderToJson(
        Query$GetActiveOrder instance) =>
    <String, dynamic>{
      'activeOrder': instance.activeOrder?.toJson(),
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
        );

Map<String, dynamic> _$Mutation$RemoveOrderLine$removeOrderLine$$OrderToJson(
        Mutation$RemoveOrderLine$removeOrderLine$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
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
        );

Map<String, dynamic> _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderToJson(
        Mutation$AdjustOrderLine$adjustOrderLine$$Order instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'code': instance.code,
      'state': instance.state,
      'active': instance.active,
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
