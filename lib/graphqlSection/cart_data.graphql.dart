import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'cart_data.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$Cart {
  Fragment$Cart(
      {required this.id,
      required this.code,
      required this.state,
      required this.active,
      required this.couponCodes,
      required this.promotions,
      required this.lines,
      required this.totalQuantity,
      required this.subTotal,
      required this.subTotalWithTax,
      required this.total,
      required this.totalWithTax,
      required this.shipping,
      required this.shippingWithTax,
      required this.shippingLines,
      required this.discounts,
      this.customFields,
      required this.$__typename});

  @override
  factory Fragment$Cart.fromJson(Map<String, dynamic> json) =>
      _$Fragment$CartFromJson(json);

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<String> couponCodes;

  final List<Fragment$Cart$promotions> promotions;

  final List<Fragment$Cart$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Fragment$Cart$shippingLines> shippingLines;

  final List<Fragment$Cart$discounts> discounts;

  final Fragment$Cart$customFields? customFields;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$CartToJson(this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
    final l$couponCodes = couponCodes;
    final l$promotions = promotions;
    final l$lines = lines;
    final l$totalQuantity = totalQuantity;
    final l$subTotal = subTotal;
    final l$subTotalWithTax = subTotalWithTax;
    final l$total = total;
    final l$totalWithTax = totalWithTax;
    final l$shipping = shipping;
    final l$shippingWithTax = shippingWithTax;
    final l$shippingLines = shippingLines;
    final l$discounts = discounts;
    final l$customFields = customFields;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$state,
      l$active,
      Object.hashAll(l$couponCodes.map((v) => v)),
      Object.hashAll(l$promotions.map((v) => v)),
      Object.hashAll(l$lines.map((v) => v)),
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$total,
      l$totalWithTax,
      l$shipping,
      l$shippingWithTax,
      Object.hashAll(l$shippingLines.map((v) => v)),
      Object.hashAll(l$discounts.map((v) => v)),
      l$customFields,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) return false;
    final l$couponCodes = couponCodes;
    final lOther$couponCodes = other.couponCodes;
    if (l$couponCodes.length != lOther$couponCodes.length) return false;
    for (int i = 0; i < l$couponCodes.length; i++) {
      final l$couponCodes$entry = l$couponCodes[i];
      final lOther$couponCodes$entry = lOther$couponCodes[i];
      if (l$couponCodes$entry != lOther$couponCodes$entry) return false;
    }

    final l$promotions = promotions;
    final lOther$promotions = other.promotions;
    if (l$promotions.length != lOther$promotions.length) return false;
    for (int i = 0; i < l$promotions.length; i++) {
      final l$promotions$entry = l$promotions[i];
      final lOther$promotions$entry = lOther$promotions[i];
      if (l$promotions$entry != lOther$promotions$entry) return false;
    }

    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) return false;
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) return false;
    }

    final l$totalQuantity = totalQuantity;
    final lOther$totalQuantity = other.totalQuantity;
    if (l$totalQuantity != lOther$totalQuantity) return false;
    final l$subTotal = subTotal;
    final lOther$subTotal = other.subTotal;
    if (l$subTotal != lOther$subTotal) return false;
    final l$subTotalWithTax = subTotalWithTax;
    final lOther$subTotalWithTax = other.subTotalWithTax;
    if (l$subTotalWithTax != lOther$subTotalWithTax) return false;
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) return false;
    final l$totalWithTax = totalWithTax;
    final lOther$totalWithTax = other.totalWithTax;
    if (l$totalWithTax != lOther$totalWithTax) return false;
    final l$shipping = shipping;
    final lOther$shipping = other.shipping;
    if (l$shipping != lOther$shipping) return false;
    final l$shippingWithTax = shippingWithTax;
    final lOther$shippingWithTax = other.shippingWithTax;
    if (l$shippingWithTax != lOther$shippingWithTax) return false;
    final l$shippingLines = shippingLines;
    final lOther$shippingLines = other.shippingLines;
    if (l$shippingLines.length != lOther$shippingLines.length) return false;
    for (int i = 0; i < l$shippingLines.length; i++) {
      final l$shippingLines$entry = l$shippingLines[i];
      final lOther$shippingLines$entry = lOther$shippingLines[i];
      if (l$shippingLines$entry != lOther$shippingLines$entry) return false;
    }

    final l$discounts = discounts;
    final lOther$discounts = other.discounts;
    if (l$discounts.length != lOther$discounts.length) return false;
    for (int i = 0; i < l$discounts.length; i++) {
      final l$discounts$entry = l$discounts[i];
      final lOther$discounts$entry = lOther$discounts[i];
      if (l$discounts$entry != lOther$discounts$entry) return false;
    }

    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart on Fragment$Cart {
  CopyWith$Fragment$Cart<Fragment$Cart> get copyWith =>
      CopyWith$Fragment$Cart(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart<TRes> {
  factory CopyWith$Fragment$Cart(
          Fragment$Cart instance, TRes Function(Fragment$Cart) then) =
      _CopyWithImpl$Fragment$Cart;

  factory CopyWith$Fragment$Cart.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart;

  TRes call(
      {String? id,
      String? code,
      String? state,
      bool? active,
      List<String>? couponCodes,
      List<Fragment$Cart$promotions>? promotions,
      List<Fragment$Cart$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Fragment$Cart$shippingLines>? shippingLines,
      List<Fragment$Cart$discounts>? discounts,
      Fragment$Cart$customFields? customFields,
      String? $__typename});
  TRes promotions(
      Iterable<Fragment$Cart$promotions> Function(
              Iterable<
                  CopyWith$Fragment$Cart$promotions<Fragment$Cart$promotions>>)
          _fn);
  TRes lines(
      Iterable<Fragment$Cart$lines> Function(
              Iterable<CopyWith$Fragment$Cart$lines<Fragment$Cart$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Fragment$Cart$shippingLines> Function(
              Iterable<
                  CopyWith$Fragment$Cart$shippingLines<
                      Fragment$Cart$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Fragment$Cart$discounts> Function(
              Iterable<
                  CopyWith$Fragment$Cart$discounts<Fragment$Cart$discounts>>)
          _fn);
  CopyWith$Fragment$Cart$customFields<TRes> get customFields;
}

class _CopyWithImpl$Fragment$Cart<TRes>
    implements CopyWith$Fragment$Cart<TRes> {
  _CopyWithImpl$Fragment$Cart(this._instance, this._then);

  final Fragment$Cart _instance;

  final TRes Function(Fragment$Cart) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? couponCodes = _undefined,
          Object? promotions = _undefined,
          Object? lines = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? shippingLines = _undefined,
          Object? discounts = _undefined,
          Object? customFields = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          state: state == _undefined || state == null
              ? _instance.state
              : (state as String),
          active: active == _undefined || active == null
              ? _instance.active
              : (active as bool),
          couponCodes: couponCodes == _undefined || couponCodes == null
              ? _instance.couponCodes
              : (couponCodes as List<String>),
          promotions: promotions == _undefined || promotions == null
              ? _instance.promotions
              : (promotions as List<Fragment$Cart$promotions>),
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<Fragment$Cart$lines>),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null
              ? _instance.totalQuantity
              : (totalQuantity as int),
          subTotal: subTotal == _undefined || subTotal == null
              ? _instance.subTotal
              : (subTotal as int),
          subTotalWithTax: subTotalWithTax == _undefined || subTotalWithTax == null
              ? _instance.subTotalWithTax
              : (subTotalWithTax as int),
          total: total == _undefined || total == null
              ? _instance.total
              : (total as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null
              ? _instance.totalWithTax
              : (totalWithTax as int),
          shipping: shipping == _undefined || shipping == null
              ? _instance.shipping
              : (shipping as int),
          shippingWithTax:
              shippingWithTax == _undefined || shippingWithTax == null ? _instance.shippingWithTax : (shippingWithTax as int),
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Fragment$Cart$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Fragment$Cart$discounts>),
          customFields: customFields == _undefined ? _instance.customFields : (customFields as Fragment$Cart$customFields?),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  TRes promotions(
          Iterable<Fragment$Cart$promotions> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$promotions<
                          Fragment$Cart$promotions>>)
              _fn) =>
      call(
          promotions: _fn(_instance.promotions
                  .map((e) => CopyWith$Fragment$Cart$promotions(e, (i) => i)))
              .toList());
  TRes lines(
          Iterable<Fragment$Cart$lines> Function(
                  Iterable<CopyWith$Fragment$Cart$lines<Fragment$Cart$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines
              .map((e) => CopyWith$Fragment$Cart$lines(e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Fragment$Cart$shippingLines> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$shippingLines<
                          Fragment$Cart$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map(
                  (e) => CopyWith$Fragment$Cart$shippingLines(e, (i) => i)))
              .toList());
  TRes discounts(
          Iterable<Fragment$Cart$discounts> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$discounts<
                          Fragment$Cart$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts
                  .map((e) => CopyWith$Fragment$Cart$discounts(e, (i) => i)))
              .toList());
  CopyWith$Fragment$Cart$customFields<TRes> get customFields {
    final local$customFields = _instance.customFields;
    return local$customFields == null
        ? CopyWith$Fragment$Cart$customFields.stub(_then(_instance))
        : CopyWith$Fragment$Cart$customFields(
            local$customFields, (e) => call(customFields: e));
  }
}

class _CopyWithStubImpl$Fragment$Cart<TRes>
    implements CopyWith$Fragment$Cart<TRes> {
  _CopyWithStubImpl$Fragment$Cart(this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? state,
          bool? active,
          List<String>? couponCodes,
          List<Fragment$Cart$promotions>? promotions,
          List<Fragment$Cart$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Fragment$Cart$shippingLines>? shippingLines,
          List<Fragment$Cart$discounts>? discounts,
          Fragment$Cart$customFields? customFields,
          String? $__typename}) =>
      _res;
  promotions(_fn) => _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Fragment$Cart$customFields<TRes> get customFields =>
      CopyWith$Fragment$Cart$customFields.stub(_res);
}

const fragmentDefinitionCart = FragmentDefinitionNode(
    name: NameNode(value: 'Cart'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Order'), isNonNull: false)),
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
          name: NameNode(value: 'state'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'active'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'couponCodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'promotions'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'couponCode'),
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
                name: NameNode(value: 'enabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'actions'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                      name: NameNode(value: 'args'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: SelectionSetNode(selections: [
                        FieldNode(
                            name: NameNode(value: 'value'),
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
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ])),
            FieldNode(
                name: NameNode(value: 'conditions'),
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
                      name: NameNode(value: 'args'),
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
                            name: NameNode(value: 'value'),
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
                name: NameNode(value: 'featuredAsset'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                      name: NameNode(value: 'Asset'), directives: []),
                  FieldNode(
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ])),
            FieldNode(
                name: NameNode(value: 'unitPrice'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'unitPriceWithTax'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'linePriceWithTax'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'discountedLinePriceWithTax'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'productVariant'),
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
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null)
                ])),
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
                      name: NameNode(value: 'amountWithTax'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'description'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'adjustmentSource'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'type'),
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
                name: NameNode(value: 'customFields'),
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
          name: NameNode(value: 'subTotal'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'subTotalWithTax'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'total'),
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
          name: NameNode(value: 'shipping'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'shippingWithTax'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'shippingLines'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'priceWithTax'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'shippingMethod'),
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
                      name: NameNode(value: 'name'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null),
                  FieldNode(
                      name: NameNode(value: 'description'),
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
                name: NameNode(value: 'amountWithTax'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'adjustmentSource'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'type'),
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
          name: NameNode(value: 'customFields'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'clientRequestToCancel'),
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
    ]));
const documentNodeFragmentCart = DocumentNode(definitions: [
  fragmentDefinitionCart,
  fragmentDefinitionAsset,
]);

extension ClientExtension$Fragment$Cart on graphql.GraphQLClient {
  void writeFragment$Cart(
          {required Fragment$Cart data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'Cart', document: documentNodeFragmentCart)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$Cart? readFragment$Cart(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'Cart', document: documentNodeFragmentCart)),
        optimistic: optimistic);
    return result == null ? null : Fragment$Cart.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$promotions {
  Fragment$Cart$promotions(
      {this.couponCode,
      required this.name,
      required this.enabled,
      required this.actions,
      required this.conditions,
      required this.$__typename});

  @override
  factory Fragment$Cart$promotions.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$promotionsFromJson(json);

  final String? couponCode;

  final String name;

  final bool enabled;

  final List<Fragment$Cart$promotions$actions> actions;

  final List<Fragment$Cart$promotions$conditions> conditions;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$promotionsToJson(this);
  int get hashCode {
    final l$couponCode = couponCode;
    final l$name = name;
    final l$enabled = enabled;
    final l$actions = actions;
    final l$conditions = conditions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$couponCode,
      l$name,
      l$enabled,
      Object.hashAll(l$actions.map((v) => v)),
      Object.hashAll(l$conditions.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$promotions) ||
        runtimeType != other.runtimeType) return false;
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (l$couponCode != lOther$couponCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) return false;
    final l$actions = actions;
    final lOther$actions = other.actions;
    if (l$actions.length != lOther$actions.length) return false;
    for (int i = 0; i < l$actions.length; i++) {
      final l$actions$entry = l$actions[i];
      final lOther$actions$entry = lOther$actions[i];
      if (l$actions$entry != lOther$actions$entry) return false;
    }

    final l$conditions = conditions;
    final lOther$conditions = other.conditions;
    if (l$conditions.length != lOther$conditions.length) return false;
    for (int i = 0; i < l$conditions.length; i++) {
      final l$conditions$entry = l$conditions[i];
      final lOther$conditions$entry = lOther$conditions[i];
      if (l$conditions$entry != lOther$conditions$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$promotions
    on Fragment$Cart$promotions {
  CopyWith$Fragment$Cart$promotions<Fragment$Cart$promotions> get copyWith =>
      CopyWith$Fragment$Cart$promotions(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$promotions<TRes> {
  factory CopyWith$Fragment$Cart$promotions(Fragment$Cart$promotions instance,
          TRes Function(Fragment$Cart$promotions) then) =
      _CopyWithImpl$Fragment$Cart$promotions;

  factory CopyWith$Fragment$Cart$promotions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$promotions;

  TRes call(
      {String? couponCode,
      String? name,
      bool? enabled,
      List<Fragment$Cart$promotions$actions>? actions,
      List<Fragment$Cart$promotions$conditions>? conditions,
      String? $__typename});
  TRes actions(
      Iterable<Fragment$Cart$promotions$actions> Function(
              Iterable<
                  CopyWith$Fragment$Cart$promotions$actions<
                      Fragment$Cart$promotions$actions>>)
          _fn);
  TRes conditions(
      Iterable<Fragment$Cart$promotions$conditions> Function(
              Iterable<
                  CopyWith$Fragment$Cart$promotions$conditions<
                      Fragment$Cart$promotions$conditions>>)
          _fn);
}

class _CopyWithImpl$Fragment$Cart$promotions<TRes>
    implements CopyWith$Fragment$Cart$promotions<TRes> {
  _CopyWithImpl$Fragment$Cart$promotions(this._instance, this._then);

  final Fragment$Cart$promotions _instance;

  final TRes Function(Fragment$Cart$promotions) _then;

  static const _undefined = {};

  TRes call(
          {Object? couponCode = _undefined,
          Object? name = _undefined,
          Object? enabled = _undefined,
          Object? actions = _undefined,
          Object? conditions = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$promotions(
          couponCode: couponCode == _undefined
              ? _instance.couponCode
              : (couponCode as String?),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          enabled: enabled == _undefined || enabled == null
              ? _instance.enabled
              : (enabled as bool),
          actions: actions == _undefined || actions == null
              ? _instance.actions
              : (actions as List<Fragment$Cart$promotions$actions>),
          conditions: conditions == _undefined || conditions == null
              ? _instance.conditions
              : (conditions as List<Fragment$Cart$promotions$conditions>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes actions(
          Iterable<Fragment$Cart$promotions$actions> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$promotions$actions<
                          Fragment$Cart$promotions$actions>>)
              _fn) =>
      call(
          actions: _fn(_instance.actions.map((e) =>
                  CopyWith$Fragment$Cart$promotions$actions(e, (i) => i)))
              .toList());
  TRes conditions(
          Iterable<Fragment$Cart$promotions$conditions> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$promotions$conditions<
                          Fragment$Cart$promotions$conditions>>)
              _fn) =>
      call(
          conditions: _fn(_instance.conditions.map((e) =>
                  CopyWith$Fragment$Cart$promotions$conditions(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Fragment$Cart$promotions<TRes>
    implements CopyWith$Fragment$Cart$promotions<TRes> {
  _CopyWithStubImpl$Fragment$Cart$promotions(this._res);

  TRes _res;

  call(
          {String? couponCode,
          String? name,
          bool? enabled,
          List<Fragment$Cart$promotions$actions>? actions,
          List<Fragment$Cart$promotions$conditions>? conditions,
          String? $__typename}) =>
      _res;
  actions(_fn) => _res;
  conditions(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$promotions$actions {
  Fragment$Cart$promotions$actions(
      {required this.args, required this.code, required this.$__typename});

  @override
  factory Fragment$Cart$promotions$actions.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$promotions$actionsFromJson(json);

  final List<Fragment$Cart$promotions$actions$args> args;

  final String code;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$promotions$actionsToJson(this);
  int get hashCode {
    final l$args = args;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$args.map((v) => v)), l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$promotions$actions) ||
        runtimeType != other.runtimeType) return false;
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) return false;
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) return false;
    }

    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$promotions$actions
    on Fragment$Cart$promotions$actions {
  CopyWith$Fragment$Cart$promotions$actions<Fragment$Cart$promotions$actions>
      get copyWith => CopyWith$Fragment$Cart$promotions$actions(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$promotions$actions<TRes> {
  factory CopyWith$Fragment$Cart$promotions$actions(
          Fragment$Cart$promotions$actions instance,
          TRes Function(Fragment$Cart$promotions$actions) then) =
      _CopyWithImpl$Fragment$Cart$promotions$actions;

  factory CopyWith$Fragment$Cart$promotions$actions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$promotions$actions;

  TRes call(
      {List<Fragment$Cart$promotions$actions$args>? args,
      String? code,
      String? $__typename});
  TRes args(
      Iterable<Fragment$Cart$promotions$actions$args> Function(
              Iterable<
                  CopyWith$Fragment$Cart$promotions$actions$args<
                      Fragment$Cart$promotions$actions$args>>)
          _fn);
}

class _CopyWithImpl$Fragment$Cart$promotions$actions<TRes>
    implements CopyWith$Fragment$Cart$promotions$actions<TRes> {
  _CopyWithImpl$Fragment$Cart$promotions$actions(this._instance, this._then);

  final Fragment$Cart$promotions$actions _instance;

  final TRes Function(Fragment$Cart$promotions$actions) _then;

  static const _undefined = {};

  TRes call(
          {Object? args = _undefined,
          Object? code = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$promotions$actions(
          args: args == _undefined || args == null
              ? _instance.args
              : (args as List<Fragment$Cart$promotions$actions$args>),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes args(
          Iterable<Fragment$Cart$promotions$actions$args> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$promotions$actions$args<
                          Fragment$Cart$promotions$actions$args>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) =>
                  CopyWith$Fragment$Cart$promotions$actions$args(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Fragment$Cart$promotions$actions<TRes>
    implements CopyWith$Fragment$Cart$promotions$actions<TRes> {
  _CopyWithStubImpl$Fragment$Cart$promotions$actions(this._res);

  TRes _res;

  call(
          {List<Fragment$Cart$promotions$actions$args>? args,
          String? code,
          String? $__typename}) =>
      _res;
  args(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$promotions$actions$args {
  Fragment$Cart$promotions$actions$args(
      {required this.value, required this.name, required this.$__typename});

  @override
  factory Fragment$Cart$promotions$actions$args.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$promotions$actions$argsFromJson(json);

  final String value;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$promotions$actions$argsToJson(this);
  int get hashCode {
    final l$value = value;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$promotions$actions$args) ||
        runtimeType != other.runtimeType) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$promotions$actions$args
    on Fragment$Cart$promotions$actions$args {
  CopyWith$Fragment$Cart$promotions$actions$args<
          Fragment$Cart$promotions$actions$args>
      get copyWith =>
          CopyWith$Fragment$Cart$promotions$actions$args(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$promotions$actions$args<TRes> {
  factory CopyWith$Fragment$Cart$promotions$actions$args(
          Fragment$Cart$promotions$actions$args instance,
          TRes Function(Fragment$Cart$promotions$actions$args) then) =
      _CopyWithImpl$Fragment$Cart$promotions$actions$args;

  factory CopyWith$Fragment$Cart$promotions$actions$args.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$promotions$actions$args;

  TRes call({String? value, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$promotions$actions$args<TRes>
    implements CopyWith$Fragment$Cart$promotions$actions$args<TRes> {
  _CopyWithImpl$Fragment$Cart$promotions$actions$args(
      this._instance, this._then);

  final Fragment$Cart$promotions$actions$args _instance;

  final TRes Function(Fragment$Cart$promotions$actions$args) _then;

  static const _undefined = {};

  TRes call(
          {Object? value = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$promotions$actions$args(
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$promotions$actions$args<TRes>
    implements CopyWith$Fragment$Cart$promotions$actions$args<TRes> {
  _CopyWithStubImpl$Fragment$Cart$promotions$actions$args(this._res);

  TRes _res;

  call({String? value, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$promotions$conditions {
  Fragment$Cart$promotions$conditions(
      {required this.code, required this.args, required this.$__typename});

  @override
  factory Fragment$Cart$promotions$conditions.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$promotions$conditionsFromJson(json);

  final String code;

  final List<Fragment$Cart$promotions$conditions$args> args;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$promotions$conditionsToJson(this);
  int get hashCode {
    final l$code = code;
    final l$args = args;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$code, Object.hashAll(l$args.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$promotions$conditions) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) return false;
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$promotions$conditions
    on Fragment$Cart$promotions$conditions {
  CopyWith$Fragment$Cart$promotions$conditions<
          Fragment$Cart$promotions$conditions>
      get copyWith =>
          CopyWith$Fragment$Cart$promotions$conditions(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$promotions$conditions<TRes> {
  factory CopyWith$Fragment$Cart$promotions$conditions(
          Fragment$Cart$promotions$conditions instance,
          TRes Function(Fragment$Cart$promotions$conditions) then) =
      _CopyWithImpl$Fragment$Cart$promotions$conditions;

  factory CopyWith$Fragment$Cart$promotions$conditions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$promotions$conditions;

  TRes call(
      {String? code,
      List<Fragment$Cart$promotions$conditions$args>? args,
      String? $__typename});
  TRes args(
      Iterable<Fragment$Cart$promotions$conditions$args> Function(
              Iterable<
                  CopyWith$Fragment$Cart$promotions$conditions$args<
                      Fragment$Cart$promotions$conditions$args>>)
          _fn);
}

class _CopyWithImpl$Fragment$Cart$promotions$conditions<TRes>
    implements CopyWith$Fragment$Cart$promotions$conditions<TRes> {
  _CopyWithImpl$Fragment$Cart$promotions$conditions(this._instance, this._then);

  final Fragment$Cart$promotions$conditions _instance;

  final TRes Function(Fragment$Cart$promotions$conditions) _then;

  static const _undefined = {};

  TRes call(
          {Object? code = _undefined,
          Object? args = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$promotions$conditions(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          args: args == _undefined || args == null
              ? _instance.args
              : (args as List<Fragment$Cart$promotions$conditions$args>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes args(
          Iterable<Fragment$Cart$promotions$conditions$args> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$promotions$conditions$args<
                          Fragment$Cart$promotions$conditions$args>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) =>
              CopyWith$Fragment$Cart$promotions$conditions$args(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Fragment$Cart$promotions$conditions<TRes>
    implements CopyWith$Fragment$Cart$promotions$conditions<TRes> {
  _CopyWithStubImpl$Fragment$Cart$promotions$conditions(this._res);

  TRes _res;

  call(
          {String? code,
          List<Fragment$Cart$promotions$conditions$args>? args,
          String? $__typename}) =>
      _res;
  args(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$promotions$conditions$args {
  Fragment$Cart$promotions$conditions$args(
      {required this.name, required this.value, required this.$__typename});

  @override
  factory Fragment$Cart$promotions$conditions$args.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$promotions$conditions$argsFromJson(json);

  final String name;

  final String value;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$promotions$conditions$argsToJson(this);
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$promotions$conditions$args) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$promotions$conditions$args
    on Fragment$Cart$promotions$conditions$args {
  CopyWith$Fragment$Cart$promotions$conditions$args<
          Fragment$Cart$promotions$conditions$args>
      get copyWith =>
          CopyWith$Fragment$Cart$promotions$conditions$args(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$promotions$conditions$args<TRes> {
  factory CopyWith$Fragment$Cart$promotions$conditions$args(
          Fragment$Cart$promotions$conditions$args instance,
          TRes Function(Fragment$Cart$promotions$conditions$args) then) =
      _CopyWithImpl$Fragment$Cart$promotions$conditions$args;

  factory CopyWith$Fragment$Cart$promotions$conditions$args.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$promotions$conditions$args;

  TRes call({String? name, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$promotions$conditions$args<TRes>
    implements CopyWith$Fragment$Cart$promotions$conditions$args<TRes> {
  _CopyWithImpl$Fragment$Cart$promotions$conditions$args(
      this._instance, this._then);

  final Fragment$Cart$promotions$conditions$args _instance;

  final TRes Function(Fragment$Cart$promotions$conditions$args) _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? value = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$promotions$conditions$args(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$promotions$conditions$args<TRes>
    implements CopyWith$Fragment$Cart$promotions$conditions$args<TRes> {
  _CopyWithStubImpl$Fragment$Cart$promotions$conditions$args(this._res);

  TRes _res;

  call({String? name, String? value, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$lines {
  Fragment$Cart$lines(
      {required this.id,
      this.featuredAsset,
      required this.unitPrice,
      required this.unitPriceWithTax,
      required this.quantity,
      required this.linePriceWithTax,
      required this.discountedLinePriceWithTax,
      required this.productVariant,
      required this.discounts,
      this.customFields,
      required this.$__typename});

  @override
  factory Fragment$Cart$lines.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Fragment$Cart$lines$productVariant productVariant;

  final List<Fragment$Cart$lines$discounts> discounts;

  final String? customFields;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$linesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$featuredAsset = featuredAsset;
    final l$unitPrice = unitPrice;
    final l$unitPriceWithTax = unitPriceWithTax;
    final l$quantity = quantity;
    final l$linePriceWithTax = linePriceWithTax;
    final l$discountedLinePriceWithTax = discountedLinePriceWithTax;
    final l$productVariant = productVariant;
    final l$discounts = discounts;
    final l$customFields = customFields;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$featuredAsset,
      l$unitPrice,
      l$unitPriceWithTax,
      l$quantity,
      l$linePriceWithTax,
      l$discountedLinePriceWithTax,
      l$productVariant,
      Object.hashAll(l$discounts.map((v) => v)),
      l$customFields,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$lines) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) return false;
    final l$unitPriceWithTax = unitPriceWithTax;
    final lOther$unitPriceWithTax = other.unitPriceWithTax;
    if (l$unitPriceWithTax != lOther$unitPriceWithTax) return false;
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) return false;
    final l$linePriceWithTax = linePriceWithTax;
    final lOther$linePriceWithTax = other.linePriceWithTax;
    if (l$linePriceWithTax != lOther$linePriceWithTax) return false;
    final l$discountedLinePriceWithTax = discountedLinePriceWithTax;
    final lOther$discountedLinePriceWithTax = other.discountedLinePriceWithTax;
    if (l$discountedLinePriceWithTax != lOther$discountedLinePriceWithTax)
      return false;
    final l$productVariant = productVariant;
    final lOther$productVariant = other.productVariant;
    if (l$productVariant != lOther$productVariant) return false;
    final l$discounts = discounts;
    final lOther$discounts = other.discounts;
    if (l$discounts.length != lOther$discounts.length) return false;
    for (int i = 0; i < l$discounts.length; i++) {
      final l$discounts$entry = l$discounts[i];
      final lOther$discounts$entry = lOther$discounts[i];
      if (l$discounts$entry != lOther$discounts$entry) return false;
    }

    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$lines on Fragment$Cart$lines {
  CopyWith$Fragment$Cart$lines<Fragment$Cart$lines> get copyWith =>
      CopyWith$Fragment$Cart$lines(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$lines<TRes> {
  factory CopyWith$Fragment$Cart$lines(Fragment$Cart$lines instance,
          TRes Function(Fragment$Cart$lines) then) =
      _CopyWithImpl$Fragment$Cart$lines;

  factory CopyWith$Fragment$Cart$lines.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Fragment$Cart$lines$productVariant? productVariant,
      List<Fragment$Cart$lines$discounts>? discounts,
      String? customFields,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Fragment$Cart$lines$productVariant<TRes> get productVariant;
  TRes discounts(
      Iterable<Fragment$Cart$lines$discounts> Function(
              Iterable<
                  CopyWith$Fragment$Cart$lines$discounts<
                      Fragment$Cart$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Fragment$Cart$lines<TRes>
    implements CopyWith$Fragment$Cart$lines<TRes> {
  _CopyWithImpl$Fragment$Cart$lines(this._instance, this._then);

  final Fragment$Cart$lines _instance;

  final TRes Function(Fragment$Cart$lines) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? featuredAsset = _undefined,
          Object? unitPrice = _undefined,
          Object? unitPriceWithTax = _undefined,
          Object? quantity = _undefined,
          Object? linePriceWithTax = _undefined,
          Object? discountedLinePriceWithTax = _undefined,
          Object? productVariant = _undefined,
          Object? discounts = _undefined,
          Object? customFields = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$lines(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset as Fragment$Asset?),
          unitPrice: unitPrice == _undefined || unitPrice == null
              ? _instance.unitPrice
              : (unitPrice as int),
          unitPriceWithTax: unitPriceWithTax == _undefined || unitPriceWithTax == null
              ? _instance.unitPriceWithTax
              : (unitPriceWithTax as int),
          quantity: quantity == _undefined || quantity == null
              ? _instance.quantity
              : (quantity as int),
          linePriceWithTax: linePriceWithTax == _undefined || linePriceWithTax == null
              ? _instance.linePriceWithTax
              : (linePriceWithTax as int),
          discountedLinePriceWithTax: discountedLinePriceWithTax == _undefined ||
                  discountedLinePriceWithTax == null
              ? _instance.discountedLinePriceWithTax
              : (discountedLinePriceWithTax as int),
          productVariant: productVariant == _undefined || productVariant == null
              ? _instance.productVariant
              : (productVariant as Fragment$Cart$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Fragment$Cart$lines$discounts>),
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Fragment$Cart$lines$productVariant<TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Fragment$Cart$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Fragment$Cart$lines$discounts> Function(
                  Iterable<
                      CopyWith$Fragment$Cart$lines$discounts<
                          Fragment$Cart$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map(
                  (e) => CopyWith$Fragment$Cart$lines$discounts(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Fragment$Cart$lines<TRes>
    implements CopyWith$Fragment$Cart$lines<TRes> {
  _CopyWithStubImpl$Fragment$Cart$lines(this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Fragment$Cart$lines$productVariant? productVariant,
          List<Fragment$Cart$lines$discounts>? discounts,
          String? customFields,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Fragment$Cart$lines$productVariant<TRes> get productVariant =>
      CopyWith$Fragment$Cart$lines$productVariant.stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$lines$productVariant {
  Fragment$Cart$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Fragment$Cart$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$lines$productVariantFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$lines$productVariantToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$lines$productVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$lines$productVariant
    on Fragment$Cart$lines$productVariant {
  CopyWith$Fragment$Cart$lines$productVariant<
          Fragment$Cart$lines$productVariant>
      get copyWith =>
          CopyWith$Fragment$Cart$lines$productVariant(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$lines$productVariant<TRes> {
  factory CopyWith$Fragment$Cart$lines$productVariant(
          Fragment$Cart$lines$productVariant instance,
          TRes Function(Fragment$Cart$lines$productVariant) then) =
      _CopyWithImpl$Fragment$Cart$lines$productVariant;

  factory CopyWith$Fragment$Cart$lines$productVariant.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$lines$productVariant<TRes>
    implements CopyWith$Fragment$Cart$lines$productVariant<TRes> {
  _CopyWithImpl$Fragment$Cart$lines$productVariant(this._instance, this._then);

  final Fragment$Cart$lines$productVariant _instance;

  final TRes Function(Fragment$Cart$lines$productVariant) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$lines$productVariant<TRes>
    implements CopyWith$Fragment$Cart$lines$productVariant<TRes> {
  _CopyWithStubImpl$Fragment$Cart$lines$productVariant(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$lines$discounts {
  Fragment$Cart$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Fragment$Cart$lines$discounts.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$lines$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$lines$discountsToJson(this);
  int get hashCode {
    final l$amount = amount;
    final l$amountWithTax = amountWithTax;
    final l$description = description;
    final l$adjustmentSource = adjustmentSource;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$amountWithTax,
      l$description,
      l$adjustmentSource,
      l$type,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$lines$discounts) ||
        runtimeType != other.runtimeType) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$amountWithTax = amountWithTax;
    final lOther$amountWithTax = other.amountWithTax;
    if (l$amountWithTax != lOther$amountWithTax) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$adjustmentSource = adjustmentSource;
    final lOther$adjustmentSource = other.adjustmentSource;
    if (l$adjustmentSource != lOther$adjustmentSource) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$lines$discounts
    on Fragment$Cart$lines$discounts {
  CopyWith$Fragment$Cart$lines$discounts<Fragment$Cart$lines$discounts>
      get copyWith => CopyWith$Fragment$Cart$lines$discounts(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$lines$discounts<TRes> {
  factory CopyWith$Fragment$Cart$lines$discounts(
          Fragment$Cart$lines$discounts instance,
          TRes Function(Fragment$Cart$lines$discounts) then) =
      _CopyWithImpl$Fragment$Cart$lines$discounts;

  factory CopyWith$Fragment$Cart$lines$discounts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$lines$discounts<TRes>
    implements CopyWith$Fragment$Cart$lines$discounts<TRes> {
  _CopyWithImpl$Fragment$Cart$lines$discounts(this._instance, this._then);

  final Fragment$Cart$lines$discounts _instance;

  final TRes Function(Fragment$Cart$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$lines$discounts(
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as int),
          amountWithTax: amountWithTax == _undefined || amountWithTax == null
              ? _instance.amountWithTax
              : (amountWithTax as int),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          adjustmentSource:
              adjustmentSource == _undefined || adjustmentSource == null
                  ? _instance.adjustmentSource
                  : (adjustmentSource as String),
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$AdjustmentType),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$lines$discounts<TRes>
    implements CopyWith$Fragment$Cart$lines$discounts<TRes> {
  _CopyWithStubImpl$Fragment$Cart$lines$discounts(this._res);

  TRes _res;

  call(
          {int? amount,
          int? amountWithTax,
          String? description,
          String? adjustmentSource,
          Enum$AdjustmentType? type,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$shippingLines {
  Fragment$Cart$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Fragment$Cart$shippingLines.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$shippingLinesFromJson(json);

  final int priceWithTax;

  final Fragment$Cart$shippingLines$shippingMethod shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$shippingLinesToJson(this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$shippingLines) ||
        runtimeType != other.runtimeType) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$shippingMethod = shippingMethod;
    final lOther$shippingMethod = other.shippingMethod;
    if (l$shippingMethod != lOther$shippingMethod) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$shippingLines
    on Fragment$Cart$shippingLines {
  CopyWith$Fragment$Cart$shippingLines<Fragment$Cart$shippingLines>
      get copyWith => CopyWith$Fragment$Cart$shippingLines(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$shippingLines<TRes> {
  factory CopyWith$Fragment$Cart$shippingLines(
          Fragment$Cart$shippingLines instance,
          TRes Function(Fragment$Cart$shippingLines) then) =
      _CopyWithImpl$Fragment$Cart$shippingLines;

  factory CopyWith$Fragment$Cart$shippingLines.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$shippingLines;

  TRes call(
      {int? priceWithTax,
      Fragment$Cart$shippingLines$shippingMethod? shippingMethod,
      String? $__typename});
  CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes> get shippingMethod;
}

class _CopyWithImpl$Fragment$Cart$shippingLines<TRes>
    implements CopyWith$Fragment$Cart$shippingLines<TRes> {
  _CopyWithImpl$Fragment$Cart$shippingLines(this._instance, this._then);

  final Fragment$Cart$shippingLines _instance;

  final TRes Function(Fragment$Cart$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod as Fragment$Cart$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Fragment$Cart$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Fragment$Cart$shippingLines<TRes>
    implements CopyWith$Fragment$Cart$shippingLines<TRes> {
  _CopyWithStubImpl$Fragment$Cart$shippingLines(this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Fragment$Cart$shippingLines$shippingMethod? shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes>
      get shippingMethod =>
          CopyWith$Fragment$Cart$shippingLines$shippingMethod.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$shippingLines$shippingMethod {
  Fragment$Cart$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Fragment$Cart$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Fragment$Cart$shippingLines$shippingMethodFromJson(json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Fragment$Cart$shippingLines$shippingMethodToJson(this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$shippingLines$shippingMethod) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$shippingLines$shippingMethod
    on Fragment$Cart$shippingLines$shippingMethod {
  CopyWith$Fragment$Cart$shippingLines$shippingMethod<
          Fragment$Cart$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Fragment$Cart$shippingLines$shippingMethod(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes> {
  factory CopyWith$Fragment$Cart$shippingLines$shippingMethod(
          Fragment$Cart$shippingLines$shippingMethod instance,
          TRes Function(Fragment$Cart$shippingLines$shippingMethod) then) =
      _CopyWithImpl$Fragment$Cart$shippingLines$shippingMethod;

  factory CopyWith$Fragment$Cart$shippingLines$shippingMethod.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$shippingLines$shippingMethod<TRes>
    implements CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes> {
  _CopyWithImpl$Fragment$Cart$shippingLines$shippingMethod(
      this._instance, this._then);

  final Fragment$Cart$shippingLines$shippingMethod _instance;

  final TRes Function(Fragment$Cart$shippingLines$shippingMethod) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$shippingLines$shippingMethod(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$shippingLines$shippingMethod<TRes>
    implements CopyWith$Fragment$Cart$shippingLines$shippingMethod<TRes> {
  _CopyWithStubImpl$Fragment$Cart$shippingLines$shippingMethod(this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? name,
          String? description,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$discounts {
  Fragment$Cart$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Fragment$Cart$discounts.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$discountsToJson(this);
  int get hashCode {
    final l$amount = amount;
    final l$amountWithTax = amountWithTax;
    final l$description = description;
    final l$adjustmentSource = adjustmentSource;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$amountWithTax,
      l$description,
      l$adjustmentSource,
      l$type,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$discounts) || runtimeType != other.runtimeType)
      return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$amountWithTax = amountWithTax;
    final lOther$amountWithTax = other.amountWithTax;
    if (l$amountWithTax != lOther$amountWithTax) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$adjustmentSource = adjustmentSource;
    final lOther$adjustmentSource = other.adjustmentSource;
    if (l$adjustmentSource != lOther$adjustmentSource) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$discounts on Fragment$Cart$discounts {
  CopyWith$Fragment$Cart$discounts<Fragment$Cart$discounts> get copyWith =>
      CopyWith$Fragment$Cart$discounts(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$discounts<TRes> {
  factory CopyWith$Fragment$Cart$discounts(Fragment$Cart$discounts instance,
          TRes Function(Fragment$Cart$discounts) then) =
      _CopyWithImpl$Fragment$Cart$discounts;

  factory CopyWith$Fragment$Cart$discounts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$discounts<TRes>
    implements CopyWith$Fragment$Cart$discounts<TRes> {
  _CopyWithImpl$Fragment$Cart$discounts(this._instance, this._then);

  final Fragment$Cart$discounts _instance;

  final TRes Function(Fragment$Cart$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$discounts(
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as int),
          amountWithTax: amountWithTax == _undefined || amountWithTax == null
              ? _instance.amountWithTax
              : (amountWithTax as int),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          adjustmentSource:
              adjustmentSource == _undefined || adjustmentSource == null
                  ? _instance.adjustmentSource
                  : (adjustmentSource as String),
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$AdjustmentType),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$discounts<TRes>
    implements CopyWith$Fragment$Cart$discounts<TRes> {
  _CopyWithStubImpl$Fragment$Cart$discounts(this._res);

  TRes _res;

  call(
          {int? amount,
          int? amountWithTax,
          String? description,
          String? adjustmentSource,
          Enum$AdjustmentType? type,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Cart$customFields {
  Fragment$Cart$customFields(
      {this.clientRequestToCancel, required this.$__typename});

  @override
  factory Fragment$Cart$customFields.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Cart$customFieldsFromJson(json);

  final int? clientRequestToCancel;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Cart$customFieldsToJson(this);
  int get hashCode {
    final l$clientRequestToCancel = clientRequestToCancel;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clientRequestToCancel, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Cart$customFields) ||
        runtimeType != other.runtimeType) return false;
    final l$clientRequestToCancel = clientRequestToCancel;
    final lOther$clientRequestToCancel = other.clientRequestToCancel;
    if (l$clientRequestToCancel != lOther$clientRequestToCancel) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Cart$customFields
    on Fragment$Cart$customFields {
  CopyWith$Fragment$Cart$customFields<Fragment$Cart$customFields>
      get copyWith => CopyWith$Fragment$Cart$customFields(this, (i) => i);
}

abstract class CopyWith$Fragment$Cart$customFields<TRes> {
  factory CopyWith$Fragment$Cart$customFields(
          Fragment$Cart$customFields instance,
          TRes Function(Fragment$Cart$customFields) then) =
      _CopyWithImpl$Fragment$Cart$customFields;

  factory CopyWith$Fragment$Cart$customFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Cart$customFields;

  TRes call({int? clientRequestToCancel, String? $__typename});
}

class _CopyWithImpl$Fragment$Cart$customFields<TRes>
    implements CopyWith$Fragment$Cart$customFields<TRes> {
  _CopyWithImpl$Fragment$Cart$customFields(this._instance, this._then);

  final Fragment$Cart$customFields _instance;

  final TRes Function(Fragment$Cart$customFields) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientRequestToCancel = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Cart$customFields(
          clientRequestToCancel: clientRequestToCancel == _undefined
              ? _instance.clientRequestToCancel
              : (clientRequestToCancel as int?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Cart$customFields<TRes>
    implements CopyWith$Fragment$Cart$customFields<TRes> {
  _CopyWithStubImpl$Fragment$Cart$customFields(this._res);

  TRes _res;

  call({int? clientRequestToCancel, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Fragment$Asset {
  Fragment$Asset(
      {required this.id,
      required this.width,
      required this.height,
      required this.name,
      required this.preview,
      this.focalPoint,
      required this.$__typename});

  @override
  factory Fragment$Asset.fromJson(Map<String, dynamic> json) =>
      _$Fragment$AssetFromJson(json);

  final String id;

  final int width;

  final int height;

  final String name;

  final String preview;

  final Fragment$Asset$focalPoint? focalPoint;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$AssetToJson(this);
  int get hashCode {
    final l$id = id;
    final l$width = width;
    final l$height = height;
    final l$name = name;
    final l$preview = preview;
    final l$focalPoint = focalPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$width,
      l$height,
      l$name,
      l$preview,
      l$focalPoint,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Asset) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$width = width;
    final lOther$width = other.width;
    if (l$width != lOther$width) return false;
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$preview = preview;
    final lOther$preview = other.preview;
    if (l$preview != lOther$preview) return false;
    final l$focalPoint = focalPoint;
    final lOther$focalPoint = other.focalPoint;
    if (l$focalPoint != lOther$focalPoint) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Asset on Fragment$Asset {
  CopyWith$Fragment$Asset<Fragment$Asset> get copyWith =>
      CopyWith$Fragment$Asset(this, (i) => i);
}

abstract class CopyWith$Fragment$Asset<TRes> {
  factory CopyWith$Fragment$Asset(
          Fragment$Asset instance, TRes Function(Fragment$Asset) then) =
      _CopyWithImpl$Fragment$Asset;

  factory CopyWith$Fragment$Asset.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Asset;

  TRes call(
      {String? id,
      int? width,
      int? height,
      String? name,
      String? preview,
      Fragment$Asset$focalPoint? focalPoint,
      String? $__typename});
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint;
}

class _CopyWithImpl$Fragment$Asset<TRes>
    implements CopyWith$Fragment$Asset<TRes> {
  _CopyWithImpl$Fragment$Asset(this._instance, this._then);

  final Fragment$Asset _instance;

  final TRes Function(Fragment$Asset) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? width = _undefined,
          Object? height = _undefined,
          Object? name = _undefined,
          Object? preview = _undefined,
          Object? focalPoint = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Asset(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          width: width == _undefined || width == null
              ? _instance.width
              : (width as int),
          height: height == _undefined || height == null
              ? _instance.height
              : (height as int),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          preview: preview == _undefined || preview == null
              ? _instance.preview
              : (preview as String),
          focalPoint: focalPoint == _undefined
              ? _instance.focalPoint
              : (focalPoint as Fragment$Asset$focalPoint?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint {
    final local$focalPoint = _instance.focalPoint;
    return local$focalPoint == null
        ? CopyWith$Fragment$Asset$focalPoint.stub(_then(_instance))
        : CopyWith$Fragment$Asset$focalPoint(
            local$focalPoint, (e) => call(focalPoint: e));
  }
}

class _CopyWithStubImpl$Fragment$Asset<TRes>
    implements CopyWith$Fragment$Asset<TRes> {
  _CopyWithStubImpl$Fragment$Asset(this._res);

  TRes _res;

  call(
          {String? id,
          int? width,
          int? height,
          String? name,
          String? preview,
          Fragment$Asset$focalPoint? focalPoint,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset$focalPoint<TRes> get focalPoint =>
      CopyWith$Fragment$Asset$focalPoint.stub(_res);
}

const fragmentDefinitionAsset = FragmentDefinitionNode(
    name: NameNode(value: 'Asset'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(name: NameNode(value: 'Asset'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'width'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'height'),
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
          name: NameNode(value: 'preview'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'focalPoint'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
                name: NameNode(value: 'x'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            FieldNode(
                name: NameNode(value: 'y'),
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
    ]));
const documentNodeFragmentAsset = DocumentNode(definitions: [
  fragmentDefinitionAsset,
]);

extension ClientExtension$Fragment$Asset on graphql.GraphQLClient {
  void writeFragment$Asset(
          {required Fragment$Asset data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'Asset', document: documentNodeFragmentAsset)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$Asset? readFragment$Asset(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'Asset', document: documentNodeFragmentAsset)),
        optimistic: optimistic);
    return result == null ? null : Fragment$Asset.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class Fragment$Asset$focalPoint {
  Fragment$Asset$focalPoint(
      {required this.x, required this.y, required this.$__typename});

  @override
  factory Fragment$Asset$focalPoint.fromJson(Map<String, dynamic> json) =>
      _$Fragment$Asset$focalPointFromJson(json);

  final double x;

  final double y;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$Asset$focalPointToJson(this);
  int get hashCode {
    final l$x = x;
    final l$y = y;
    final l$$__typename = $__typename;
    return Object.hashAll([l$x, l$y, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$Asset$focalPoint) ||
        runtimeType != other.runtimeType) return false;
    final l$x = x;
    final lOther$x = other.x;
    if (l$x != lOther$x) return false;
    final l$y = y;
    final lOther$y = other.y;
    if (l$y != lOther$y) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$Asset$focalPoint
    on Fragment$Asset$focalPoint {
  CopyWith$Fragment$Asset$focalPoint<Fragment$Asset$focalPoint> get copyWith =>
      CopyWith$Fragment$Asset$focalPoint(this, (i) => i);
}

abstract class CopyWith$Fragment$Asset$focalPoint<TRes> {
  factory CopyWith$Fragment$Asset$focalPoint(Fragment$Asset$focalPoint instance,
          TRes Function(Fragment$Asset$focalPoint) then) =
      _CopyWithImpl$Fragment$Asset$focalPoint;

  factory CopyWith$Fragment$Asset$focalPoint.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Asset$focalPoint;

  TRes call({double? x, double? y, String? $__typename});
}

class _CopyWithImpl$Fragment$Asset$focalPoint<TRes>
    implements CopyWith$Fragment$Asset$focalPoint<TRes> {
  _CopyWithImpl$Fragment$Asset$focalPoint(this._instance, this._then);

  final Fragment$Asset$focalPoint _instance;

  final TRes Function(Fragment$Asset$focalPoint) _then;

  static const _undefined = {};

  TRes call(
          {Object? x = _undefined,
          Object? y = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$Asset$focalPoint(
          x: x == _undefined || x == null ? _instance.x : (x as double),
          y: y == _undefined || y == null ? _instance.y : (y as double),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$Asset$focalPoint<TRes>
    implements CopyWith$Fragment$Asset$focalPoint<TRes> {
  _CopyWithStubImpl$Fragment$Asset$focalPoint(this._res);

  TRes _res;

  call({double? x, double? y, String? $__typename}) => _res;
}

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
class Query$GetCartTotals {
  Query$GetCartTotals({this.activeOrder, required this.$__typename});

  @override
  factory Query$GetCartTotals.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCartTotalsFromJson(json);

  final Query$GetCartTotals$activeOrder? activeOrder;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetCartTotalsToJson(this);
  int get hashCode {
    final l$activeOrder = activeOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$activeOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCartTotals) || runtimeType != other.runtimeType)
      return false;
    final l$activeOrder = activeOrder;
    final lOther$activeOrder = other.activeOrder;
    if (l$activeOrder != lOther$activeOrder) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetCartTotals on Query$GetCartTotals {
  CopyWith$Query$GetCartTotals<Query$GetCartTotals> get copyWith =>
      CopyWith$Query$GetCartTotals(this, (i) => i);
}

abstract class CopyWith$Query$GetCartTotals<TRes> {
  factory CopyWith$Query$GetCartTotals(Query$GetCartTotals instance,
          TRes Function(Query$GetCartTotals) then) =
      _CopyWithImpl$Query$GetCartTotals;

  factory CopyWith$Query$GetCartTotals.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCartTotals;

  TRes call(
      {Query$GetCartTotals$activeOrder? activeOrder, String? $__typename});
  CopyWith$Query$GetCartTotals$activeOrder<TRes> get activeOrder;
}

class _CopyWithImpl$Query$GetCartTotals<TRes>
    implements CopyWith$Query$GetCartTotals<TRes> {
  _CopyWithImpl$Query$GetCartTotals(this._instance, this._then);

  final Query$GetCartTotals _instance;

  final TRes Function(Query$GetCartTotals) _then;

  static const _undefined = {};

  TRes call(
          {Object? activeOrder = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCartTotals(
          activeOrder: activeOrder == _undefined
              ? _instance.activeOrder
              : (activeOrder as Query$GetCartTotals$activeOrder?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetCartTotals$activeOrder<TRes> get activeOrder {
    final local$activeOrder = _instance.activeOrder;
    return local$activeOrder == null
        ? CopyWith$Query$GetCartTotals$activeOrder.stub(_then(_instance))
        : CopyWith$Query$GetCartTotals$activeOrder(
            local$activeOrder, (e) => call(activeOrder: e));
  }
}

class _CopyWithStubImpl$Query$GetCartTotals<TRes>
    implements CopyWith$Query$GetCartTotals<TRes> {
  _CopyWithStubImpl$Query$GetCartTotals(this._res);

  TRes _res;

  call({Query$GetCartTotals$activeOrder? activeOrder, String? $__typename}) =>
      _res;
  CopyWith$Query$GetCartTotals$activeOrder<TRes> get activeOrder =>
      CopyWith$Query$GetCartTotals$activeOrder.stub(_res);
}

const documentNodeQueryGetCartTotals = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCartTotals'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'activeOrder'),
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
                  name: NameNode(value: 'active'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
]);
Query$GetCartTotals _parserFn$Query$GetCartTotals(Map<String, dynamic> data) =>
    Query$GetCartTotals.fromJson(data);

class Options$Query$GetCartTotals
    extends graphql.QueryOptions<Query$GetCartTotals> {
  Options$Query$GetCartTotals(
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
            document: documentNodeQueryGetCartTotals,
            parserFn: _parserFn$Query$GetCartTotals);
}

class WatchOptions$Query$GetCartTotals
    extends graphql.WatchQueryOptions<Query$GetCartTotals> {
  WatchOptions$Query$GetCartTotals(
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
            document: documentNodeQueryGetCartTotals,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetCartTotals);
}

class FetchMoreOptions$Query$GetCartTotals extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCartTotals(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery, document: documentNodeQueryGetCartTotals);
}

extension ClientExtension$Query$GetCartTotals on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCartTotals>> query$GetCartTotals(
          [Options$Query$GetCartTotals? options]) async =>
      await this.query(options ?? Options$Query$GetCartTotals());
  graphql.ObservableQuery<Query$GetCartTotals> watchQuery$GetCartTotals(
          [WatchOptions$Query$GetCartTotals? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCartTotals());
  void writeQuery$GetCartTotals(
          {required Query$GetCartTotals data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetCartTotals)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetCartTotals? readQuery$GetCartTotals({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetCartTotals)),
        optimistic: optimistic);
    return result == null ? null : Query$GetCartTotals.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCartTotals> useQuery$GetCartTotals(
        [Options$Query$GetCartTotals? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCartTotals());
graphql.ObservableQuery<Query$GetCartTotals> useWatchQuery$GetCartTotals(
        [WatchOptions$Query$GetCartTotals? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetCartTotals());

class Query$GetCartTotals$Widget
    extends graphql_flutter.Query<Query$GetCartTotals> {
  Query$GetCartTotals$Widget(
      {widgets.Key? key,
      Options$Query$GetCartTotals? options,
      required graphql_flutter.QueryBuilder<Query$GetCartTotals> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetCartTotals(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetCartTotals$activeOrder {
  Query$GetCartTotals$activeOrder(
      {required this.id,
      required this.active,
      required this.totalQuantity,
      required this.totalWithTax,
      required this.$__typename});

  @override
  factory Query$GetCartTotals$activeOrder.fromJson(Map<String, dynamic> json) =>
      _$Query$GetCartTotals$activeOrderFromJson(json);

  final String id;

  final bool active;

  final int totalQuantity;

  final int totalWithTax;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetCartTotals$activeOrderToJson(this);
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$totalQuantity = totalQuantity;
    final l$totalWithTax = totalWithTax;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$active, l$totalQuantity, l$totalWithTax, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetCartTotals$activeOrder) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) return false;
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

extension UtilityExtension$Query$GetCartTotals$activeOrder
    on Query$GetCartTotals$activeOrder {
  CopyWith$Query$GetCartTotals$activeOrder<Query$GetCartTotals$activeOrder>
      get copyWith => CopyWith$Query$GetCartTotals$activeOrder(this, (i) => i);
}

abstract class CopyWith$Query$GetCartTotals$activeOrder<TRes> {
  factory CopyWith$Query$GetCartTotals$activeOrder(
          Query$GetCartTotals$activeOrder instance,
          TRes Function(Query$GetCartTotals$activeOrder) then) =
      _CopyWithImpl$Query$GetCartTotals$activeOrder;

  factory CopyWith$Query$GetCartTotals$activeOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCartTotals$activeOrder;

  TRes call(
      {String? id,
      bool? active,
      int? totalQuantity,
      int? totalWithTax,
      String? $__typename});
}

class _CopyWithImpl$Query$GetCartTotals$activeOrder<TRes>
    implements CopyWith$Query$GetCartTotals$activeOrder<TRes> {
  _CopyWithImpl$Query$GetCartTotals$activeOrder(this._instance, this._then);

  final Query$GetCartTotals$activeOrder _instance;

  final TRes Function(Query$GetCartTotals$activeOrder) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? active = _undefined,
          Object? totalQuantity = _undefined,
          Object? totalWithTax = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetCartTotals$activeOrder(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          active: active == _undefined || active == null
              ? _instance.active
              : (active as bool),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null
              ? _instance.totalQuantity
              : (totalQuantity as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null
              ? _instance.totalWithTax
              : (totalWithTax as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetCartTotals$activeOrder<TRes>
    implements CopyWith$Query$GetCartTotals$activeOrder<TRes> {
  _CopyWithStubImpl$Query$GetCartTotals$activeOrder(this._res);

  TRes _res;

  call(
          {String? id,
          bool? active,
          int? totalQuantity,
          int? totalWithTax,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$AddToCart {
  Variables$Mutation$AddToCart({required this.variantId, required this.qty});

  @override
  factory Variables$Mutation$AddToCart.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$AddToCartFromJson(json);

  final String variantId;

  final int qty;

  Map<String, dynamic> toJson() => _$Variables$Mutation$AddToCartToJson(this);
  int get hashCode {
    final l$variantId = variantId;
    final l$qty = qty;
    return Object.hashAll([l$variantId, l$qty]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$AddToCart) ||
        runtimeType != other.runtimeType) return false;
    final l$variantId = variantId;
    final lOther$variantId = other.variantId;
    if (l$variantId != lOther$variantId) return false;
    final l$qty = qty;
    final lOther$qty = other.qty;
    if (l$qty != lOther$qty) return false;
    return true;
  }

  CopyWith$Variables$Mutation$AddToCart<Variables$Mutation$AddToCart>
      get copyWith => CopyWith$Variables$Mutation$AddToCart(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$AddToCart<TRes> {
  factory CopyWith$Variables$Mutation$AddToCart(
          Variables$Mutation$AddToCart instance,
          TRes Function(Variables$Mutation$AddToCart) then) =
      _CopyWithImpl$Variables$Mutation$AddToCart;

  factory CopyWith$Variables$Mutation$AddToCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddToCart;

  TRes call({String? variantId, int? qty});
}

class _CopyWithImpl$Variables$Mutation$AddToCart<TRes>
    implements CopyWith$Variables$Mutation$AddToCart<TRes> {
  _CopyWithImpl$Variables$Mutation$AddToCart(this._instance, this._then);

  final Variables$Mutation$AddToCart _instance;

  final TRes Function(Variables$Mutation$AddToCart) _then;

  static const _undefined = {};

  TRes call({Object? variantId = _undefined, Object? qty = _undefined}) =>
      _then(Variables$Mutation$AddToCart(
          variantId: variantId == _undefined || variantId == null
              ? _instance.variantId
              : (variantId as String),
          qty:
              qty == _undefined || qty == null ? _instance.qty : (qty as int)));
}

class _CopyWithStubImpl$Variables$Mutation$AddToCart<TRes>
    implements CopyWith$Variables$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddToCart(this._res);

  TRes _res;

  call({String? variantId, int? qty}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart {
  Mutation$AddToCart({required this.addItemToOrder, required this.$__typename});

  @override
  factory Mutation$AddToCart.fromJson(Map<String, dynamic> json) =>
      _$Mutation$AddToCartFromJson(json);

  final Mutation$AddToCart$addItemToOrder addItemToOrder;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$AddToCartToJson(this);
  int get hashCode {
    final l$addItemToOrder = addItemToOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addItemToOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart) || runtimeType != other.runtimeType)
      return false;
    final l$addItemToOrder = addItemToOrder;
    final lOther$addItemToOrder = other.addItemToOrder;
    if (l$addItemToOrder != lOther$addItemToOrder) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart on Mutation$AddToCart {
  CopyWith$Mutation$AddToCart<Mutation$AddToCart> get copyWith =>
      CopyWith$Mutation$AddToCart(this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart<TRes> {
  factory CopyWith$Mutation$AddToCart(
          Mutation$AddToCart instance, TRes Function(Mutation$AddToCart) then) =
      _CopyWithImpl$Mutation$AddToCart;

  factory CopyWith$Mutation$AddToCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart;

  TRes call(
      {Mutation$AddToCart$addItemToOrder? addItemToOrder, String? $__typename});
  CopyWith$Mutation$AddToCart$addItemToOrder<TRes> get addItemToOrder;
}

class _CopyWithImpl$Mutation$AddToCart<TRes>
    implements CopyWith$Mutation$AddToCart<TRes> {
  _CopyWithImpl$Mutation$AddToCart(this._instance, this._then);

  final Mutation$AddToCart _instance;

  final TRes Function(Mutation$AddToCart) _then;

  static const _undefined = {};

  TRes call(
          {Object? addItemToOrder = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart(
          addItemToOrder: addItemToOrder == _undefined || addItemToOrder == null
              ? _instance.addItemToOrder
              : (addItemToOrder as Mutation$AddToCart$addItemToOrder),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AddToCart$addItemToOrder<TRes> get addItemToOrder {
    final local$addItemToOrder = _instance.addItemToOrder;
    return CopyWith$Mutation$AddToCart$addItemToOrder(
        local$addItemToOrder, (e) => call(addItemToOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart<TRes>
    implements CopyWith$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart(this._res);

  TRes _res;

  call(
          {Mutation$AddToCart$addItemToOrder? addItemToOrder,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AddToCart$addItemToOrder<TRes> get addItemToOrder =>
      CopyWith$Mutation$AddToCart$addItemToOrder.stub(_res);
}

const documentNodeMutationAddToCart = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddToCart'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'variantId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'qty')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addItemToOrder'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'productVariantId'),
                  value: VariableNode(name: NameNode(value: 'variantId'))),
              ArgumentNode(
                  name: NameNode(value: 'quantity'),
                  value: VariableNode(name: NameNode(value: 'qty')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'InsufficientStockError'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'Cart'), directives: []),
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
  fragmentDefinitionCart,
  fragmentDefinitionAsset,
  fragmentDefinitionErrorResult,
]);
Mutation$AddToCart _parserFn$Mutation$AddToCart(Map<String, dynamic> data) =>
    Mutation$AddToCart.fromJson(data);
typedef OnMutationCompleted$Mutation$AddToCart = FutureOr<void> Function(
    dynamic, Mutation$AddToCart?);

class Options$Mutation$AddToCart
    extends graphql.MutationOptions<Mutation$AddToCart> {
  Options$Mutation$AddToCart(
      {String? operationName,
      required Variables$Mutation$AddToCart variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AddToCart? onCompleted,
      graphql.OnMutationUpdate<Mutation$AddToCart>? update,
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
                    data == null ? null : _parserFn$Mutation$AddToCart(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAddToCart,
            parserFn: _parserFn$Mutation$AddToCart);

  final OnMutationCompleted$Mutation$AddToCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$AddToCart
    extends graphql.WatchQueryOptions<Mutation$AddToCart> {
  WatchOptions$Mutation$AddToCart(
      {String? operationName,
      required Variables$Mutation$AddToCart variables,
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
            document: documentNodeMutationAddToCart,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$AddToCart);
}

extension ClientExtension$Mutation$AddToCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddToCart>> mutate$AddToCart(
          Options$Mutation$AddToCart options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddToCart> watchMutation$AddToCart(
          WatchOptions$Mutation$AddToCart options) =>
      this.watchMutation(options);
}

class Mutation$AddToCart$HookResult {
  Mutation$AddToCart$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$AddToCart runMutation;

  final graphql.QueryResult<Mutation$AddToCart> result;
}

Mutation$AddToCart$HookResult useMutation$AddToCart(
    [WidgetOptions$Mutation$AddToCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddToCart());
  return Mutation$AddToCart$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddToCart> useWatchMutation$AddToCart(
        WatchOptions$Mutation$AddToCart options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddToCart
    extends graphql.MutationOptions<Mutation$AddToCart> {
  WidgetOptions$Mutation$AddToCart(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AddToCart? onCompleted,
      graphql.OnMutationUpdate<Mutation$AddToCart>? update,
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
                    data == null ? null : _parserFn$Mutation$AddToCart(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAddToCart,
            parserFn: _parserFn$Mutation$AddToCart);

  final OnMutationCompleted$Mutation$AddToCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$AddToCart
    = graphql.MultiSourceResult<Mutation$AddToCart>
        Function(Variables$Mutation$AddToCart, {Object? optimisticResult});
typedef Builder$Mutation$AddToCart = widgets.Widget Function(
    RunMutation$Mutation$AddToCart, graphql.QueryResult<Mutation$AddToCart>?);

class Mutation$AddToCart$Widget
    extends graphql_flutter.Mutation<Mutation$AddToCart> {
  Mutation$AddToCart$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$AddToCart? options,
      required Builder$Mutation$AddToCart builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$AddToCart(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder({required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$AddToCart$addItemToOrder$$Order.fromJson(json);
      case "InsufficientStockError":
        return Mutation$AddToCart$addItemToOrder$$InsufficientStockError
            .fromJson(json);
      case "NegativeQuantityError":
        return Mutation$AddToCart$addItemToOrder$$NegativeQuantityError
            .fromJson(json);
      case "OrderLimitError":
        return Mutation$AddToCart$addItemToOrder$$OrderLimitError.fromJson(
            json);
      case "OrderModificationError":
        return Mutation$AddToCart$addItemToOrder$$OrderModificationError
            .fromJson(json);
      default:
        return _$Mutation$AddToCart$addItemToOrderFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder
    on Mutation$AddToCart$addItemToOrder {
  CopyWith$Mutation$AddToCart$addItemToOrder<Mutation$AddToCart$addItemToOrder>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder(this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder<TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder(
          Mutation$AddToCart$addItemToOrder instance,
          TRes Function(Mutation$AddToCart$addItemToOrder) then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder;

  factory CopyWith$Mutation$AddToCart$addItemToOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder(this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order
    implements Fragment$Cart, Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder$$Order(
      {required this.$__typename,
      required this.id,
      required this.code,
      required this.state,
      required this.active,
      required this.couponCodes,
      required this.promotions,
      required this.lines,
      required this.totalQuantity,
      required this.subTotal,
      required this.subTotalWithTax,
      required this.total,
      required this.totalWithTax,
      required this.shipping,
      required this.shippingWithTax,
      required this.shippingLines,
      required this.discounts,
      this.customFields});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<String> couponCodes;

  final List<Mutation$AddToCart$addItemToOrder$$Order$promotions> promotions;

  final List<Mutation$AddToCart$addItemToOrder$$Order$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Mutation$AddToCart$addItemToOrder$$Order$shippingLines>
      shippingLines;

  final List<Mutation$AddToCart$addItemToOrder$$Order$discounts> discounts;

  final Mutation$AddToCart$addItemToOrder$$Order$customFields? customFields;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$OrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
    final l$couponCodes = couponCodes;
    final l$promotions = promotions;
    final l$lines = lines;
    final l$totalQuantity = totalQuantity;
    final l$subTotal = subTotal;
    final l$subTotalWithTax = subTotalWithTax;
    final l$total = total;
    final l$totalWithTax = totalWithTax;
    final l$shipping = shipping;
    final l$shippingWithTax = shippingWithTax;
    final l$shippingLines = shippingLines;
    final l$discounts = discounts;
    final l$customFields = customFields;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$code,
      l$state,
      l$active,
      Object.hashAll(l$couponCodes.map((v) => v)),
      Object.hashAll(l$promotions.map((v) => v)),
      Object.hashAll(l$lines.map((v) => v)),
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$total,
      l$totalWithTax,
      l$shipping,
      l$shippingWithTax,
      Object.hashAll(l$shippingLines.map((v) => v)),
      Object.hashAll(l$discounts.map((v) => v)),
      l$customFields
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) return false;
    final l$couponCodes = couponCodes;
    final lOther$couponCodes = other.couponCodes;
    if (l$couponCodes.length != lOther$couponCodes.length) return false;
    for (int i = 0; i < l$couponCodes.length; i++) {
      final l$couponCodes$entry = l$couponCodes[i];
      final lOther$couponCodes$entry = lOther$couponCodes[i];
      if (l$couponCodes$entry != lOther$couponCodes$entry) return false;
    }

    final l$promotions = promotions;
    final lOther$promotions = other.promotions;
    if (l$promotions.length != lOther$promotions.length) return false;
    for (int i = 0; i < l$promotions.length; i++) {
      final l$promotions$entry = l$promotions[i];
      final lOther$promotions$entry = lOther$promotions[i];
      if (l$promotions$entry != lOther$promotions$entry) return false;
    }

    final l$lines = lines;
    final lOther$lines = other.lines;
    if (l$lines.length != lOther$lines.length) return false;
    for (int i = 0; i < l$lines.length; i++) {
      final l$lines$entry = l$lines[i];
      final lOther$lines$entry = lOther$lines[i];
      if (l$lines$entry != lOther$lines$entry) return false;
    }

    final l$totalQuantity = totalQuantity;
    final lOther$totalQuantity = other.totalQuantity;
    if (l$totalQuantity != lOther$totalQuantity) return false;
    final l$subTotal = subTotal;
    final lOther$subTotal = other.subTotal;
    if (l$subTotal != lOther$subTotal) return false;
    final l$subTotalWithTax = subTotalWithTax;
    final lOther$subTotalWithTax = other.subTotalWithTax;
    if (l$subTotalWithTax != lOther$subTotalWithTax) return false;
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) return false;
    final l$totalWithTax = totalWithTax;
    final lOther$totalWithTax = other.totalWithTax;
    if (l$totalWithTax != lOther$totalWithTax) return false;
    final l$shipping = shipping;
    final lOther$shipping = other.shipping;
    if (l$shipping != lOther$shipping) return false;
    final l$shippingWithTax = shippingWithTax;
    final lOther$shippingWithTax = other.shippingWithTax;
    if (l$shippingWithTax != lOther$shippingWithTax) return false;
    final l$shippingLines = shippingLines;
    final lOther$shippingLines = other.shippingLines;
    if (l$shippingLines.length != lOther$shippingLines.length) return false;
    for (int i = 0; i < l$shippingLines.length; i++) {
      final l$shippingLines$entry = l$shippingLines[i];
      final lOther$shippingLines$entry = lOther$shippingLines[i];
      if (l$shippingLines$entry != lOther$shippingLines$entry) return false;
    }

    final l$discounts = discounts;
    final lOther$discounts = other.discounts;
    if (l$discounts.length != lOther$discounts.length) return false;
    for (int i = 0; i < l$discounts.length; i++) {
      final l$discounts$entry = l$discounts[i];
      final lOther$discounts$entry = lOther$discounts[i];
      if (l$discounts$entry != lOther$discounts$entry) return false;
    }

    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order
    on Mutation$AddToCart$addItemToOrder$$Order {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order<
          Mutation$AddToCart$addItemToOrder$$Order>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order(this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order<TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order(
          Mutation$AddToCart$addItemToOrder$$Order instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order) then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<String>? couponCodes,
      List<Mutation$AddToCart$addItemToOrder$$Order$promotions>? promotions,
      List<Mutation$AddToCart$addItemToOrder$$Order$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$AddToCart$addItemToOrder$$Order$shippingLines>?
          shippingLines,
      List<Mutation$AddToCart$addItemToOrder$$Order$discounts>? discounts,
      Mutation$AddToCart$addItemToOrder$$Order$customFields? customFields});
  TRes promotions(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<
                      Mutation$AddToCart$addItemToOrder$$Order$promotions>>)
          _fn);
  TRes lines(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<
                      Mutation$AddToCart$addItemToOrder$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<
                      Mutation$AddToCart$addItemToOrder$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<
                      Mutation$AddToCart$addItemToOrder$$Order$discounts>>)
          _fn);
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes>
      get customFields;
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder$$Order<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? couponCodes = _undefined,
          Object? promotions = _undefined,
          Object? lines = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? shippingLines = _undefined,
          Object? discounts = _undefined,
          Object? customFields = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          id: id == _undefined || id == null ? _instance.id : (id as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          state: state == _undefined || state == null
              ? _instance.state
              : (state as String),
          active: active == _undefined || active == null
              ? _instance.active
              : (active as bool),
          couponCodes: couponCodes == _undefined || couponCodes == null
              ? _instance.couponCodes
              : (couponCodes as List<String>),
          promotions: promotions == _undefined || promotions == null
              ? _instance.promotions
              : (promotions
                  as List<Mutation$AddToCart$addItemToOrder$$Order$promotions>),
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<Mutation$AddToCart$addItemToOrder$$Order$lines>),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null
              ? _instance.totalQuantity
              : (totalQuantity as int),
          subTotal: subTotal == _undefined || subTotal == null
              ? _instance.subTotal
              : (subTotal as int),
          subTotalWithTax: subTotalWithTax == _undefined || subTotalWithTax == null
              ? _instance.subTotalWithTax
              : (subTotalWithTax as int),
          total: total == _undefined || total == null
              ? _instance.total
              : (total as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null
              ? _instance.totalWithTax
              : (totalWithTax as int),
          shipping:
              shipping == _undefined || shipping == null ? _instance.shipping : (shipping as int),
          shippingWithTax: shippingWithTax == _undefined || shippingWithTax == null ? _instance.shippingWithTax : (shippingWithTax as int),
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$AddToCart$addItemToOrder$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$AddToCart$addItemToOrder$$Order$discounts>),
          customFields: customFields == _undefined ? _instance.customFields : (customFields as Mutation$AddToCart$addItemToOrder$$Order$customFields?)));
  TRes promotions(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<
                          Mutation$AddToCart$addItemToOrder$$Order$promotions>>)
              _fn) =>
      call(
          promotions: _fn(_instance.promotions.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions(
                  e, (i) => i))).toList());
  TRes lines(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<
                          Mutation$AddToCart$addItemToOrder$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<
                          Mutation$AddToCart$addItemToOrder$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<
                          Mutation$AddToCart$addItemToOrder$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts(
                  e, (i) => i))).toList());
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes>
      get customFields {
    final local$customFields = _instance.customFields;
    return local$customFields == null
        ? CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields.stub(
            _then(_instance))
        : CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields(
            local$customFields, (e) => call(customFields: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder$$Order<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<String>? couponCodes,
          List<Mutation$AddToCart$addItemToOrder$$Order$promotions>? promotions,
          List<Mutation$AddToCart$addItemToOrder$$Order$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$AddToCart$addItemToOrder$$Order$shippingLines>?
              shippingLines,
          List<Mutation$AddToCart$addItemToOrder$$Order$discounts>? discounts,
          Mutation$AddToCart$addItemToOrder$$Order$customFields?
              customFields}) =>
      _res;
  promotions(_fn) => _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes>
      get customFields =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields.stub(
              _res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$promotions
    implements Fragment$Cart$promotions {
  Mutation$AddToCart$addItemToOrder$$Order$promotions(
      {this.couponCode,
      required this.name,
      required this.enabled,
      required this.actions,
      required this.conditions,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$promotions.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotionsFromJson(json);

  final String? couponCode;

  final String name;

  final bool enabled;

  final List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>
      actions;

  final List<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>
      conditions;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotionsToJson(this);
  int get hashCode {
    final l$couponCode = couponCode;
    final l$name = name;
    final l$enabled = enabled;
    final l$actions = actions;
    final l$conditions = conditions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$couponCode,
      l$name,
      l$enabled,
      Object.hashAll(l$actions.map((v) => v)),
      Object.hashAll(l$conditions.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$promotions) ||
        runtimeType != other.runtimeType) return false;
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (l$couponCode != lOther$couponCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) return false;
    final l$actions = actions;
    final lOther$actions = other.actions;
    if (l$actions.length != lOther$actions.length) return false;
    for (int i = 0; i < l$actions.length; i++) {
      final l$actions$entry = l$actions[i];
      final lOther$actions$entry = lOther$actions[i];
      if (l$actions$entry != lOther$actions$entry) return false;
    }

    final l$conditions = conditions;
    final lOther$conditions = other.conditions;
    if (l$conditions.length != lOther$conditions.length) return false;
    for (int i = 0; i < l$conditions.length; i++) {
      final l$conditions$entry = l$conditions[i];
      final lOther$conditions$entry = lOther$conditions[i];
      if (l$conditions$entry != lOther$conditions$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$promotions
    on Mutation$AddToCart$addItemToOrder$$Order$promotions {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<
          Mutation$AddToCart$addItemToOrder$$Order$promotions>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions(
          Mutation$AddToCart$addItemToOrder$$Order$promotions instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order$promotions)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions;

  TRes call(
      {String? couponCode,
      String? name,
      bool? enabled,
      List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>?
          actions,
      List<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>?
          conditions,
      String? $__typename});
  TRes actions(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
                      Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>>)
          _fn);
  TRes conditions(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
                      Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$promotions _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$promotions)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? couponCode = _undefined,
          Object? name = _undefined,
          Object? enabled = _undefined,
          Object? actions = _undefined,
          Object? conditions = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$promotions(
          couponCode: couponCode == _undefined
              ? _instance.couponCode
              : (couponCode as String?),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          enabled: enabled == _undefined || enabled == null
              ? _instance.enabled
              : (enabled as bool),
          actions: actions == _undefined || actions == null
              ? _instance.actions
              : (actions as List<
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>),
          conditions: conditions == _undefined || conditions == null
              ? _instance.conditions
              : (conditions as List<
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes actions(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
                          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>>)
              _fn) =>
      call(
          actions: _fn(_instance.actions.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
                  e, (i) => i))).toList());
  TRes conditions(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
                          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>>)
              _fn) =>
      call(
          conditions: _fn(_instance.conditions.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions(
      this._res);

  TRes _res;

  call(
          {String? couponCode,
          String? name,
          bool? enabled,
          List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>?
              actions,
          List<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>?
              conditions,
          String? $__typename}) =>
      _res;
  actions(_fn) => _res;
  conditions(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$promotions$actions
    implements Fragment$Cart$promotions$actions {
  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
      {required this.args, required this.code, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$promotions$actions.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actionsFromJson(
          json);

  final List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>
      args;

  final String code;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actionsToJson(this);
  int get hashCode {
    final l$args = args;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$args.map((v) => v)), l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$promotions$actions) ||
        runtimeType != other.runtimeType) return false;
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) return false;
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) return false;
    }

    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions
    on Mutation$AddToCart$addItemToOrder$$Order$promotions$actions {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions;

  TRes call(
      {List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>?
          args,
      String? code,
      String? $__typename});
  TRes args(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
                      Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$promotions$actions _instance;

  final TRes Function(
      Mutation$AddToCart$addItemToOrder$$Order$promotions$actions) _then;

  static const _undefined = {};

  TRes call(
          {Object? args = _undefined,
          Object? code = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
          args: args == _undefined || args == null
              ? _instance.args
              : (args as List<
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes args(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
                          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions(
      this._res);

  TRes _res;

  call(
          {List<Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>?
              args,
          String? code,
          String? $__typename}) =>
      _res;
  args(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
    implements Fragment$Cart$promotions$actions$args {
  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
      {required this.value, required this.name, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$argsFromJson(
          json);

  final String value;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$argsToJson(
          this);
  int get hashCode {
    final l$value = value;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$value, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args) ||
        runtimeType != other.runtimeType) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
    on Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
          Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args;

  TRes call({String? value, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args
      _instance;

  final TRes Function(
      Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args) _then;

  static const _undefined = {};

  TRes call(
          {Object? value = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$actions$args(
      this._res);

  TRes _res;

  call({String? value, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
    implements Fragment$Cart$promotions$conditions {
  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
      {required this.code, required this.args, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditionsFromJson(
          json);

  final String code;

  final List<
      Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args> args;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditionsToJson(
          this);
  int get hashCode {
    final l$code = code;
    final l$args = args;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$code, Object.hashAll(l$args.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$args = args;
    final lOther$args = other.args;
    if (l$args.length != lOther$args.length) return false;
    for (int i = 0; i < l$args.length; i++) {
      final l$args$entry = l$args[i];
      final lOther$args$entry = lOther$args[i];
      if (l$args$entry != lOther$args$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
    on Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions;

  TRes call(
      {String? code,
      List<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>?
          args,
      String? $__typename});
  TRes args(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
                      Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions
      _instance;

  final TRes Function(
      Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions) _then;

  static const _undefined = {};

  TRes call(
          {Object? code = _undefined,
          Object? args = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          args: args == _undefined || args == null
              ? _instance.args
              : (args as List<
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes args(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
                          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>>)
              _fn) =>
      call(
          args: _fn(_instance.args.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions(
      this._res);

  TRes _res;

  call(
          {String? code,
          List<Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>?
              args,
          String? $__typename}) =>
      _res;
  args(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
    implements Fragment$Cart$promotions$conditions$args {
  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
      {required this.name, required this.value, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$argsFromJson(
          json);

  final String name;

  final String value;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$argsToJson(
          this);
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
    on Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
              instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args;

  TRes call({String? name, String? value, String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args
      _instance;

  final TRes Function(
          Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? name = _undefined,
          Object? value = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$promotions$conditions$args(
      this._res);

  TRes _res;

  call({String? name, String? value, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$AddToCart$addItemToOrder$$Order$lines(
      {required this.id,
      this.featuredAsset,
      required this.unitPrice,
      required this.unitPriceWithTax,
      required this.quantity,
      required this.linePriceWithTax,
      required this.discountedLinePriceWithTax,
      required this.productVariant,
      required this.discounts,
      this.customFields,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
      productVariant;

  final List<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>
      discounts;

  final String? customFields;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$linesToJson(this);
  int get hashCode {
    final l$id = id;
    final l$featuredAsset = featuredAsset;
    final l$unitPrice = unitPrice;
    final l$unitPriceWithTax = unitPriceWithTax;
    final l$quantity = quantity;
    final l$linePriceWithTax = linePriceWithTax;
    final l$discountedLinePriceWithTax = discountedLinePriceWithTax;
    final l$productVariant = productVariant;
    final l$discounts = discounts;
    final l$customFields = customFields;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$featuredAsset,
      l$unitPrice,
      l$unitPriceWithTax,
      l$quantity,
      l$linePriceWithTax,
      l$discountedLinePriceWithTax,
      l$productVariant,
      Object.hashAll(l$discounts.map((v) => v)),
      l$customFields,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$lines) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$featuredAsset = featuredAsset;
    final lOther$featuredAsset = other.featuredAsset;
    if (l$featuredAsset != lOther$featuredAsset) return false;
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) return false;
    final l$unitPriceWithTax = unitPriceWithTax;
    final lOther$unitPriceWithTax = other.unitPriceWithTax;
    if (l$unitPriceWithTax != lOther$unitPriceWithTax) return false;
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) return false;
    final l$linePriceWithTax = linePriceWithTax;
    final lOther$linePriceWithTax = other.linePriceWithTax;
    if (l$linePriceWithTax != lOther$linePriceWithTax) return false;
    final l$discountedLinePriceWithTax = discountedLinePriceWithTax;
    final lOther$discountedLinePriceWithTax = other.discountedLinePriceWithTax;
    if (l$discountedLinePriceWithTax != lOther$discountedLinePriceWithTax)
      return false;
    final l$productVariant = productVariant;
    final lOther$productVariant = other.productVariant;
    if (l$productVariant != lOther$productVariant) return false;
    final l$discounts = discounts;
    final lOther$discounts = other.discounts;
    if (l$discounts.length != lOther$discounts.length) return false;
    for (int i = 0; i < l$discounts.length; i++) {
      final l$discounts$entry = l$discounts[i];
      final lOther$discounts$entry = lOther$discounts[i];
      if (l$discounts$entry != lOther$discounts$entry) return false;
    }

    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$lines
    on Mutation$AddToCart$addItemToOrder$$Order$lines {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<
          Mutation$AddToCart$addItemToOrder$$Order$lines>
      get copyWith => CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines(
          this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines(
          Mutation$AddToCart$addItemToOrder$$Order$lines instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order$lines) then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant?
          productVariant,
      List<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>? discounts,
      String? customFields,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<TRes>
      get productVariant;
  TRes discounts(
      Iterable<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
                      Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$lines _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$lines) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? featuredAsset = _undefined,
          Object? unitPrice = _undefined,
          Object? unitPriceWithTax = _undefined,
          Object? quantity = _undefined,
          Object? linePriceWithTax = _undefined,
          Object? discountedLinePriceWithTax = _undefined,
          Object? productVariant = _undefined,
          Object? discounts = _undefined,
          Object? customFields = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$lines(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          featuredAsset: featuredAsset == _undefined
              ? _instance.featuredAsset
              : (featuredAsset as Fragment$Asset?),
          unitPrice: unitPrice == _undefined || unitPrice == null
              ? _instance.unitPrice
              : (unitPrice as int),
          unitPriceWithTax: unitPriceWithTax == _undefined || unitPriceWithTax == null
              ? _instance.unitPriceWithTax
              : (unitPriceWithTax as int),
          quantity: quantity == _undefined || quantity == null
              ? _instance.quantity
              : (quantity as int),
          linePriceWithTax: linePriceWithTax == _undefined || linePriceWithTax == null
              ? _instance.linePriceWithTax
              : (linePriceWithTax as int),
          discountedLinePriceWithTax: discountedLinePriceWithTax == _undefined ||
                  discountedLinePriceWithTax == null
              ? _instance.discountedLinePriceWithTax
              : (discountedLinePriceWithTax as int),
          productVariant: productVariant == _undefined || productVariant == null
              ? _instance.productVariant
              : (productVariant
                  as Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>),
          customFields: customFields == _undefined ? _instance.customFields : (customFields as String?),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<TRes>
      get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
                          Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines<TRes>
    implements CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines(this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant?
              productVariant,
          List<Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>?
              discounts,
          String? customFields,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<TRes>
      get productVariant =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariantToJson(
          this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant
    on Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
          Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
          Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant _instance;

  final TRes Function(
      Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$lines$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$lines$discountsToJson(this);
  int get hashCode {
    final l$amount = amount;
    final l$amountWithTax = amountWithTax;
    final l$description = description;
    final l$adjustmentSource = adjustmentSource;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$amountWithTax,
      l$description,
      l$adjustmentSource,
      l$type,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$lines$discounts) ||
        runtimeType != other.runtimeType) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$amountWithTax = amountWithTax;
    final lOther$amountWithTax = other.amountWithTax;
    if (l$amountWithTax != lOther$amountWithTax) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$adjustmentSource = adjustmentSource;
    final lOther$adjustmentSource = other.adjustmentSource;
    if (l$adjustmentSource != lOther$adjustmentSource) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts
    on Mutation$AddToCart$addItemToOrder$$Order$lines$discounts {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
          Mutation$AddToCart$addItemToOrder$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
          Mutation$AddToCart$addItemToOrder$$Order$lines$discounts instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$lines$discounts _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$lines$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as int),
          amountWithTax: amountWithTax == _undefined || amountWithTax == null
              ? _instance.amountWithTax
              : (amountWithTax as int),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          adjustmentSource:
              adjustmentSource == _undefined || adjustmentSource == null
                  ? _instance.adjustmentSource
                  : (adjustmentSource as String),
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$AdjustmentType),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$lines$discounts(
      this._res);

  TRes _res;

  call(
          {int? amount,
          int? amountWithTax,
          String? description,
          String? adjustmentSource,
          Enum$AdjustmentType? type,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$shippingLinesFromJson(json);

  final int priceWithTax;

  final Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$shippingLinesToJson(this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$shippingLines) ||
        runtimeType != other.runtimeType) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$shippingMethod = shippingMethod;
    final lOther$shippingMethod = other.shippingMethod;
    if (l$shippingMethod != lOther$shippingMethod) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$shippingLines
    on Mutation$AddToCart$addItemToOrder$$Order$shippingLines {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$shippingLines _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethodToJson(
          this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
    on Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
              id: id == _undefined || id == null
                  ? _instance.id
                  : (id as String),
              code: code == _undefined || code == null
                  ? _instance.code
                  : (code as String),
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              description: description == _undefined || description == null
                  ? _instance.description
                  : (description as String),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$shippingLines$shippingMethod(
      this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? name,
          String? description,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$AddToCart$addItemToOrder$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$discountsToJson(this);
  int get hashCode {
    final l$amount = amount;
    final l$amountWithTax = amountWithTax;
    final l$description = description;
    final l$adjustmentSource = adjustmentSource;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$amountWithTax,
      l$description,
      l$adjustmentSource,
      l$type,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$discounts) ||
        runtimeType != other.runtimeType) return false;
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) return false;
    final l$amountWithTax = amountWithTax;
    final lOther$amountWithTax = other.amountWithTax;
    if (l$amountWithTax != lOther$amountWithTax) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$adjustmentSource = adjustmentSource;
    final lOther$adjustmentSource = other.adjustmentSource;
    if (l$adjustmentSource != lOther$adjustmentSource) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$discounts
    on Mutation$AddToCart$addItemToOrder$$Order$discounts {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<
          Mutation$AddToCart$addItemToOrder$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts(
          Mutation$AddToCart$addItemToOrder$$Order$discounts instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$discounts _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$discounts(
          amount: amount == _undefined || amount == null
              ? _instance.amount
              : (amount as int),
          amountWithTax: amountWithTax == _undefined || amountWithTax == null
              ? _instance.amountWithTax
              : (amountWithTax as int),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          adjustmentSource:
              adjustmentSource == _undefined || adjustmentSource == null
                  ? _instance.adjustmentSource
                  : (adjustmentSource as String),
          type: type == _undefined || type == null
              ? _instance.type
              : (type as Enum$AdjustmentType),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$discounts<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$discounts(
      this._res);

  TRes _res;

  call(
          {int? amount,
          int? amountWithTax,
          String? description,
          String? adjustmentSource,
          Enum$AdjustmentType? type,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$Order$customFields
    implements Fragment$Cart$customFields {
  Mutation$AddToCart$addItemToOrder$$Order$customFields(
      {this.clientRequestToCancel, required this.$__typename});

  @override
  factory Mutation$AddToCart$addItemToOrder$$Order$customFields.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$Order$customFieldsFromJson(json);

  final int? clientRequestToCancel;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$Order$customFieldsToJson(this);
  int get hashCode {
    final l$clientRequestToCancel = clientRequestToCancel;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clientRequestToCancel, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$Order$customFields) ||
        runtimeType != other.runtimeType) return false;
    final l$clientRequestToCancel = clientRequestToCancel;
    final lOther$clientRequestToCancel = other.clientRequestToCancel;
    if (l$clientRequestToCancel != lOther$clientRequestToCancel) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$Order$customFields
    on Mutation$AddToCart$addItemToOrder$$Order$customFields {
  CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<
          Mutation$AddToCart$addItemToOrder$$Order$customFields>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields(
          Mutation$AddToCart$addItemToOrder$$Order$customFields instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$Order$customFields)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields;

  TRes call({int? clientRequestToCancel, String? $__typename});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$Order$customFields _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$Order$customFields)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? clientRequestToCancel = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$Order$customFields(
          clientRequestToCancel: clientRequestToCancel == _undefined
              ? _instance.clientRequestToCancel
              : (clientRequestToCancel as int?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$Order$customFields<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$Order$customFields(
      this._res);

  TRes _res;

  call({int? clientRequestToCancel, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$InsufficientStockError
    implements Fragment$ErrorResult, Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
      {required this.$__typename,
      required this.errorCode,
      required this.message,
      required this.order});

  @override
  factory Mutation$AddToCart$addItemToOrder$$InsufficientStockError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$InsufficientStockErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  final Fragment$Cart order;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$InsufficientStockErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    final l$order = order;
    return Object.hashAll([l$$__typename, l$errorCode, l$message, l$order]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$InsufficientStockError) ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$InsufficientStockError
    on Mutation$AddToCart$addItemToOrder$$InsufficientStockError {
  CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
          Mutation$AddToCart$addItemToOrder$$InsufficientStockError>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
          Mutation$AddToCart$addItemToOrder$$InsufficientStockError instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$InsufficientStockError)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError;

  TRes call(
      {String? $__typename,
      Enum$ErrorCode? errorCode,
      String? message,
      Fragment$Cart? order});
  CopyWith$Fragment$Cart<TRes> get order;
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$InsufficientStockError _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$InsufficientStockError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined,
          Object? order = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          order: order == _undefined || order == null
              ? _instance.order
              : (order as Fragment$Cart)));
  CopyWith$Fragment$Cart<TRes> get order {
    final local$order = _instance.order;
    return CopyWith$Fragment$Cart(local$order, (e) => call(order: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$InsufficientStockError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$InsufficientStockError(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          Enum$ErrorCode? errorCode,
          String? message,
          Fragment$Cart? order}) =>
      _res;
  CopyWith$Fragment$Cart<TRes> get order => CopyWith$Fragment$Cart.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$NegativeQuantityError
    implements Fragment$ErrorResult, Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddToCart$addItemToOrder$$NegativeQuantityError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$NegativeQuantityErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$NegativeQuantityErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$NegativeQuantityError) ||
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

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError
    on Mutation$AddToCart$addItemToOrder$$NegativeQuantityError {
  CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
          Mutation$AddToCart$addItemToOrder$$NegativeQuantityError>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
          Mutation$AddToCart$addItemToOrder$$NegativeQuantityError instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$NegativeQuantityError)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$NegativeQuantityError _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$NegativeQuantityError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
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

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$NegativeQuantityError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$OrderLimitError
    implements Fragment$ErrorResult, Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder$$OrderLimitError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddToCart$addItemToOrder$$OrderLimitError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$OrderLimitErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$OrderLimitErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$OrderLimitError) ||
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

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$OrderLimitError
    on Mutation$AddToCart$addItemToOrder$$OrderLimitError {
  CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError<
          Mutation$AddToCart$addItemToOrder$$OrderLimitError>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError(
          Mutation$AddToCart$addItemToOrder$$OrderLimitError instance,
          TRes Function(Mutation$AddToCart$addItemToOrder$$OrderLimitError)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError<TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$OrderLimitError _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$OrderLimitError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$OrderLimitError(
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

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError<TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$OrderLimitError<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderLimitError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddToCart$addItemToOrder$$OrderModificationError
    implements Fragment$ErrorResult, Mutation$AddToCart$addItemToOrder {
  Mutation$AddToCart$addItemToOrder$$OrderModificationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddToCart$addItemToOrder$$OrderModificationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddToCart$addItemToOrder$$OrderModificationErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddToCart$addItemToOrder$$OrderModificationErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddToCart$addItemToOrder$$OrderModificationError) ||
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

extension UtilityExtension$Mutation$AddToCart$addItemToOrder$$OrderModificationError
    on Mutation$AddToCart$addItemToOrder$$OrderModificationError {
  CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
          Mutation$AddToCart$addItemToOrder$$OrderModificationError>
      get copyWith =>
          CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
    TRes> {
  factory CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError(
          Mutation$AddToCart$addItemToOrder$$OrderModificationError instance,
          TRes Function(
                  Mutation$AddToCart$addItemToOrder$$OrderModificationError)
              then) =
      _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError;

  factory CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
            TRes> {
  _CopyWithImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError(
      this._instance, this._then);

  final Mutation$AddToCart$addItemToOrder$$OrderModificationError _instance;

  final TRes Function(Mutation$AddToCart$addItemToOrder$$OrderModificationError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddToCart$addItemToOrder$$OrderModificationError(
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

class _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$AddToCart$addItemToOrder$$OrderModificationError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$addItemToOrder$$OrderModificationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}
