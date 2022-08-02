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
