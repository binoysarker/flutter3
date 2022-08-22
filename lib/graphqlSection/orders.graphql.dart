import 'cart_data.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'orders.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$Cart {
  Fragment$Cart(
      {required this.id,
      required this.code,
      required this.state,
      required this.active,
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
      required this.$__typename});

  @override
  factory Fragment$Cart.fromJson(Map<String, dynamic> json) =>
      _$Fragment$CartFromJson(json);

  final String id;

  final String code;

  final String state;

  final bool active;

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

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$CartToJson(this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$state,
      l$active,
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
      String? $__typename});
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
          shippingWithTax: shippingWithTax == _undefined || shippingWithTax == null
              ? _instance.shippingWithTax
              : (shippingWithTax as int),
          shippingLines:
              shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Fragment$Cart$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Fragment$Cart$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
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
          String? $__typename}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
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
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
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
class Query$GetActiveOrder {
  Query$GetActiveOrder({this.activeOrder, required this.$__typename});

  @override
  factory Query$GetActiveOrder.fromJson(Map<String, dynamic> json) =>
      _$Query$GetActiveOrderFromJson(json);

  final Fragment$Cart? activeOrder;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetActiveOrderToJson(this);
  int get hashCode {
    final l$activeOrder = activeOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$activeOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveOrder) || runtimeType != other.runtimeType)
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

extension UtilityExtension$Query$GetActiveOrder on Query$GetActiveOrder {
  CopyWith$Query$GetActiveOrder<Query$GetActiveOrder> get copyWith =>
      CopyWith$Query$GetActiveOrder(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder<TRes> {
  factory CopyWith$Query$GetActiveOrder(Query$GetActiveOrder instance,
          TRes Function(Query$GetActiveOrder) then) =
      _CopyWithImpl$Query$GetActiveOrder;

  factory CopyWith$Query$GetActiveOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder;

  TRes call({Fragment$Cart? activeOrder, String? $__typename});
  CopyWith$Fragment$Cart<TRes> get activeOrder;
}

class _CopyWithImpl$Query$GetActiveOrder<TRes>
    implements CopyWith$Query$GetActiveOrder<TRes> {
  _CopyWithImpl$Query$GetActiveOrder(this._instance, this._then);

  final Query$GetActiveOrder _instance;

  final TRes Function(Query$GetActiveOrder) _then;

  static const _undefined = {};

  TRes call(
          {Object? activeOrder = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder(
          activeOrder: activeOrder == _undefined
              ? _instance.activeOrder
              : (activeOrder as Fragment$Cart?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Fragment$Cart<TRes> get activeOrder {
    final local$activeOrder = _instance.activeOrder;
    return local$activeOrder == null
        ? CopyWith$Fragment$Cart.stub(_then(_instance))
        : CopyWith$Fragment$Cart(
            local$activeOrder, (e) => call(activeOrder: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveOrder<TRes>
    implements CopyWith$Query$GetActiveOrder<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder(this._res);

  TRes _res;

  call({Fragment$Cart? activeOrder, String? $__typename}) => _res;
  CopyWith$Fragment$Cart<TRes> get activeOrder =>
      CopyWith$Fragment$Cart.stub(_res);
}

const documentNodeQueryGetActiveOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetActiveOrder'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'activeOrder'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
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
]);
Query$GetActiveOrder _parserFn$Query$GetActiveOrder(
        Map<String, dynamic> data) =>
    Query$GetActiveOrder.fromJson(data);

class Options$Query$GetActiveOrder
    extends graphql.QueryOptions<Query$GetActiveOrder> {
  Options$Query$GetActiveOrder(
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
            document: documentNodeQueryGetActiveOrder,
            parserFn: _parserFn$Query$GetActiveOrder);
}

class WatchOptions$Query$GetActiveOrder
    extends graphql.WatchQueryOptions<Query$GetActiveOrder> {
  WatchOptions$Query$GetActiveOrder(
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
            document: documentNodeQueryGetActiveOrder,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetActiveOrder);
}

class FetchMoreOptions$Query$GetActiveOrder extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveOrder(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetActiveOrder);
}

extension ClientExtension$Query$GetActiveOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveOrder>> query$GetActiveOrder(
          [Options$Query$GetActiveOrder? options]) async =>
      await this.query(options ?? Options$Query$GetActiveOrder());
  graphql.ObservableQuery<Query$GetActiveOrder> watchQuery$GetActiveOrder(
          [WatchOptions$Query$GetActiveOrder? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActiveOrder());
  void writeQuery$GetActiveOrder(
          {required Query$GetActiveOrder data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetActiveOrder)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetActiveOrder? readQuery$GetActiveOrder({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetActiveOrder)),
        optimistic: optimistic);
    return result == null ? null : Query$GetActiveOrder.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActiveOrder> useQuery$GetActiveOrder(
        [Options$Query$GetActiveOrder? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetActiveOrder());
graphql.ObservableQuery<Query$GetActiveOrder> useWatchQuery$GetActiveOrder(
        [WatchOptions$Query$GetActiveOrder? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetActiveOrder());

class Query$GetActiveOrder$Widget
    extends graphql_flutter.Query<Query$GetActiveOrder> {
  Query$GetActiveOrder$Widget(
      {widgets.Key? key,
      Options$Query$GetActiveOrder? options,
      required graphql_flutter.QueryBuilder<Query$GetActiveOrder> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetActiveOrder(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$RemoveOrderLine {
  Variables$Mutation$RemoveOrderLine({required this.orderLineId});

  @override
  factory Variables$Mutation$RemoveOrderLine.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$RemoveOrderLineFromJson(json);

  final String orderLineId;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$RemoveOrderLineToJson(this);
  int get hashCode {
    final l$orderLineId = orderLineId;
    return Object.hashAll([l$orderLineId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$RemoveOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$orderLineId = orderLineId;
    final lOther$orderLineId = other.orderLineId;
    if (l$orderLineId != lOther$orderLineId) return false;
    return true;
  }

  CopyWith$Variables$Mutation$RemoveOrderLine<
          Variables$Mutation$RemoveOrderLine>
      get copyWith =>
          CopyWith$Variables$Mutation$RemoveOrderLine(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$RemoveOrderLine<TRes> {
  factory CopyWith$Variables$Mutation$RemoveOrderLine(
          Variables$Mutation$RemoveOrderLine instance,
          TRes Function(Variables$Mutation$RemoveOrderLine) then) =
      _CopyWithImpl$Variables$Mutation$RemoveOrderLine;

  factory CopyWith$Variables$Mutation$RemoveOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveOrderLine;

  TRes call({String? orderLineId});
}

class _CopyWithImpl$Variables$Mutation$RemoveOrderLine<TRes>
    implements CopyWith$Variables$Mutation$RemoveOrderLine<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveOrderLine(this._instance, this._then);

  final Variables$Mutation$RemoveOrderLine _instance;

  final TRes Function(Variables$Mutation$RemoveOrderLine) _then;

  static const _undefined = {};

  TRes call({Object? orderLineId = _undefined}) =>
      _then(Variables$Mutation$RemoveOrderLine(
          orderLineId: orderLineId == _undefined || orderLineId == null
              ? _instance.orderLineId
              : (orderLineId as String)));
}

class _CopyWithStubImpl$Variables$Mutation$RemoveOrderLine<TRes>
    implements CopyWith$Variables$Mutation$RemoveOrderLine<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveOrderLine(this._res);

  TRes _res;

  call({String? orderLineId}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine {
  Mutation$RemoveOrderLine(
      {required this.removeOrderLine, required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine.fromJson(Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLineFromJson(json);

  final Mutation$RemoveOrderLine$removeOrderLine removeOrderLine;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$RemoveOrderLineToJson(this);
  int get hashCode {
    final l$removeOrderLine = removeOrderLine;
    final l$$__typename = $__typename;
    return Object.hashAll([l$removeOrderLine, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$removeOrderLine = removeOrderLine;
    final lOther$removeOrderLine = other.removeOrderLine;
    if (l$removeOrderLine != lOther$removeOrderLine) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveOrderLine
    on Mutation$RemoveOrderLine {
  CopyWith$Mutation$RemoveOrderLine<Mutation$RemoveOrderLine> get copyWith =>
      CopyWith$Mutation$RemoveOrderLine(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine<TRes> {
  factory CopyWith$Mutation$RemoveOrderLine(Mutation$RemoveOrderLine instance,
          TRes Function(Mutation$RemoveOrderLine) then) =
      _CopyWithImpl$Mutation$RemoveOrderLine;

  factory CopyWith$Mutation$RemoveOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine;

  TRes call(
      {Mutation$RemoveOrderLine$removeOrderLine? removeOrderLine,
      String? $__typename});
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> get removeOrderLine;
}

class _CopyWithImpl$Mutation$RemoveOrderLine<TRes>
    implements CopyWith$Mutation$RemoveOrderLine<TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine(this._instance, this._then);

  final Mutation$RemoveOrderLine _instance;

  final TRes Function(Mutation$RemoveOrderLine) _then;

  static const _undefined = {};

  TRes call(
          {Object? removeOrderLine = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine(
          removeOrderLine: removeOrderLine == _undefined ||
                  removeOrderLine == null
              ? _instance.removeOrderLine
              : (removeOrderLine as Mutation$RemoveOrderLine$removeOrderLine),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> get removeOrderLine {
    final local$removeOrderLine = _instance.removeOrderLine;
    return CopyWith$Mutation$RemoveOrderLine$removeOrderLine(
        local$removeOrderLine, (e) => call(removeOrderLine: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine<TRes>
    implements CopyWith$Mutation$RemoveOrderLine<TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine(this._res);

  TRes _res;

  call(
          {Mutation$RemoveOrderLine$removeOrderLine? removeOrderLine,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> get removeOrderLine =>
      CopyWith$Mutation$RemoveOrderLine$removeOrderLine.stub(_res);
}

const documentNodeMutationRemoveOrderLine = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveOrderLine'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'orderLineId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'removeOrderLine'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'orderLineId'),
                  value: VariableNode(name: NameNode(value: 'orderLineId')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ErrorResult'),
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
                  ]))
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
]);
Mutation$RemoveOrderLine _parserFn$Mutation$RemoveOrderLine(
        Map<String, dynamic> data) =>
    Mutation$RemoveOrderLine.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveOrderLine = FutureOr<void> Function(
    dynamic, Mutation$RemoveOrderLine?);

class Options$Mutation$RemoveOrderLine
    extends graphql.MutationOptions<Mutation$RemoveOrderLine> {
  Options$Mutation$RemoveOrderLine(
      {String? operationName,
      required Variables$Mutation$RemoveOrderLine variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RemoveOrderLine? onCompleted,
      graphql.OnMutationUpdate<Mutation$RemoveOrderLine>? update,
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
                        : _parserFn$Mutation$RemoveOrderLine(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRemoveOrderLine,
            parserFn: _parserFn$Mutation$RemoveOrderLine);

  final OnMutationCompleted$Mutation$RemoveOrderLine? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$RemoveOrderLine
    extends graphql.WatchQueryOptions<Mutation$RemoveOrderLine> {
  WatchOptions$Mutation$RemoveOrderLine(
      {String? operationName,
      required Variables$Mutation$RemoveOrderLine variables,
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
            document: documentNodeMutationRemoveOrderLine,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$RemoveOrderLine);
}

extension ClientExtension$Mutation$RemoveOrderLine on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveOrderLine>> mutate$RemoveOrderLine(
          Options$Mutation$RemoveOrderLine options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RemoveOrderLine>
      watchMutation$RemoveOrderLine(
              WatchOptions$Mutation$RemoveOrderLine options) =>
          this.watchMutation(options);
}

class Mutation$RemoveOrderLine$HookResult {
  Mutation$RemoveOrderLine$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$RemoveOrderLine runMutation;

  final graphql.QueryResult<Mutation$RemoveOrderLine> result;
}

Mutation$RemoveOrderLine$HookResult useMutation$RemoveOrderLine(
    [WidgetOptions$Mutation$RemoveOrderLine? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RemoveOrderLine());
  return Mutation$RemoveOrderLine$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RemoveOrderLine>
    useWatchMutation$RemoveOrderLine(
            WatchOptions$Mutation$RemoveOrderLine options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RemoveOrderLine
    extends graphql.MutationOptions<Mutation$RemoveOrderLine> {
  WidgetOptions$Mutation$RemoveOrderLine(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RemoveOrderLine? onCompleted,
      graphql.OnMutationUpdate<Mutation$RemoveOrderLine>? update,
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
                        : _parserFn$Mutation$RemoveOrderLine(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRemoveOrderLine,
            parserFn: _parserFn$Mutation$RemoveOrderLine);

  final OnMutationCompleted$Mutation$RemoveOrderLine? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$RemoveOrderLine = graphql
        .MultiSourceResult<Mutation$RemoveOrderLine>
    Function(Variables$Mutation$RemoveOrderLine, {Object? optimisticResult});
typedef Builder$Mutation$RemoveOrderLine = widgets.Widget Function(
    RunMutation$Mutation$RemoveOrderLine,
    graphql.QueryResult<Mutation$RemoveOrderLine>?);

class Mutation$RemoveOrderLine$Widget
    extends graphql_flutter.Mutation<Mutation$RemoveOrderLine> {
  Mutation$RemoveOrderLine$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$RemoveOrderLine? options,
      required Builder$Mutation$RemoveOrderLine builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$RemoveOrderLine(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine {
  Mutation$RemoveOrderLine$removeOrderLine({required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$RemoveOrderLine$removeOrderLine$$Order.fromJson(json);
      case "OrderModificationError":
        return Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
            .fromJson(json);
      default:
        return _$Mutation$RemoveOrderLine$removeOrderLineFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLineToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveOrderLine$removeOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine
    on Mutation$RemoveOrderLine$removeOrderLine {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine<
          Mutation$RemoveOrderLine$removeOrderLine>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine(
          Mutation$RemoveOrderLine$removeOrderLine instance,
          TRes Function(Mutation$RemoveOrderLine$removeOrderLine) then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine<TRes>
    implements CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine _instance;

  final TRes Function(Mutation$RemoveOrderLine$removeOrderLine) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine<TRes>
    implements CopyWith$Mutation$RemoveOrderLine$removeOrderLine<TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine$$Order
    implements Fragment$Cart, Mutation$RemoveOrderLine$removeOrderLine {
  Mutation$RemoveOrderLine$removeOrderLine$$Order(
      {required this.$__typename,
      required this.id,
      required this.code,
      required this.state,
      required this.active,
      required this.lines,
      required this.totalQuantity,
      required this.subTotal,
      required this.subTotalWithTax,
      required this.total,
      required this.totalWithTax,
      required this.shipping,
      required this.shippingWithTax,
      required this.shippingLines,
      required this.discounts});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>
      shippingLines;

  final List<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$OrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
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
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$code,
      l$state,
      l$active,
      Object.hashAll(l$lines.map((v) => v)),
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$total,
      l$totalWithTax,
      l$shipping,
      l$shippingWithTax,
      Object.hashAll(l$shippingLines.map((v) => v)),
      Object.hashAll(l$discounts.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveOrderLine$removeOrderLine$$Order) ||
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

    return true;
  }
}

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order
    on Mutation$RemoveOrderLine$removeOrderLine$$Order {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order<
          Mutation$RemoveOrderLine$removeOrderLine$$Order>
      get copyWith => CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order(
          this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order<TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order(
          Mutation$RemoveOrderLine$removeOrderLine$$Order instance,
          TRes Function(Mutation$RemoveOrderLine$removeOrderLine$$Order) then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>?
          shippingLines,
      List<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<
                      Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
                      Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
                      Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order<TRes>
    implements CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order<TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order _instance;

  final TRes Function(Mutation$RemoveOrderLine$removeOrderLine$$Order) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? lines = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? shippingLines = _undefined,
          Object? discounts = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$Order(
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
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null
              ? _instance.totalQuantity
              : (totalQuantity as int),
          subTotal: subTotal == _undefined || subTotal == null
              ? _instance.subTotal
              : (subTotal as int),
          subTotalWithTax:
              subTotalWithTax == _undefined || subTotalWithTax == null
                  ? _instance.subTotalWithTax
                  : (subTotalWithTax as int),
          total: total == _undefined || total == null
              ? _instance.total
              : (total as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null
              ? _instance.totalWithTax
              : (totalWithTax as int),
          shipping: shipping == _undefined || shipping == null ? _instance.shipping : (shipping as int),
          shippingWithTax: shippingWithTax == _undefined || shippingWithTax == null ? _instance.shippingWithTax : (shippingWithTax as int),
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<
                          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
                          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
                          Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order<TRes>
    implements CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order<TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>?
              shippingLines,
          List<Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
      {required this.id,
      this.featuredAsset,
      required this.unitPrice,
      required this.unitPriceWithTax,
      required this.quantity,
      required this.linePriceWithTax,
      required this.discountedLinePriceWithTax,
      required this.productVariant,
      required this.discounts,
      required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
      productVariant;

  final List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$linesToJson(this);
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
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveOrderLine$removeOrderLine$$Order$lines) ||
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$lines {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines instance,
          TRes Function(Mutation$RemoveOrderLine$removeOrderLine$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant?
          productVariant,
      List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
                      Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$lines _instance;

  final TRes Function(Mutation$RemoveOrderLine$removeOrderLine$$Order$lines)
      _then;

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
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
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
                  as Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
                          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines<TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines(
      this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant?
              productVariant,
          List<Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariantToJson(
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
            is Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
              id: id == _undefined || id == null
                  ? _instance.id
                  : (id as String),
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discountsFromJson(
          json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discountsToJson(
          this);
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
    if (!(other
            is Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts
      _instance;

  final TRes Function(
      Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$lines$discounts(
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
class Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLinesToJson(
          this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines _instance;

  final TRes Function(
      Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$shippingLines$shippingMethod(
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
class Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$Order$discountsToJson(this);
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
    if (!(other is Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts
    on Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
          Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
          Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts _instance;

  final TRes Function(Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$Order$discounts(
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
class Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
    implements Mutation$RemoveOrderLine$removeOrderLine {
  Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationErrorToJson(
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
            is Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError) ||
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

extension UtilityExtension$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
    on Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError {
  CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
          Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError>
      get copyWith =>
          CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
    TRes> {
  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
          Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError instance,
          TRes Function(
                  Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError)
              then) =
      _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError;

  factory CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
            TRes> {
  _CopyWithImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
      this._instance, this._then);

  final Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError
      _instance;

  final TRes Function(
      Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
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

class _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveOrderLine$removeOrderLine$$OrderModificationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines {
  Mutation$RemoveAllOrderLines(
      {required this.removeAllOrderLines, required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines.fromJson(Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLinesFromJson(json);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines removeAllOrderLines;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$RemoveAllOrderLinesToJson(this);
  int get hashCode {
    final l$removeAllOrderLines = removeAllOrderLines;
    final l$$__typename = $__typename;
    return Object.hashAll([l$removeAllOrderLines, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveAllOrderLines) ||
        runtimeType != other.runtimeType) return false;
    final l$removeAllOrderLines = removeAllOrderLines;
    final lOther$removeAllOrderLines = other.removeAllOrderLines;
    if (l$removeAllOrderLines != lOther$removeAllOrderLines) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveAllOrderLines
    on Mutation$RemoveAllOrderLines {
  CopyWith$Mutation$RemoveAllOrderLines<Mutation$RemoveAllOrderLines>
      get copyWith => CopyWith$Mutation$RemoveAllOrderLines(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines<TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines(
          Mutation$RemoveAllOrderLines instance,
          TRes Function(Mutation$RemoveAllOrderLines) then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines;

  factory CopyWith$Mutation$RemoveAllOrderLines.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines;

  TRes call(
      {Mutation$RemoveAllOrderLines$removeAllOrderLines? removeAllOrderLines,
      String? $__typename});
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes>
      get removeAllOrderLines;
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines<TRes>
    implements CopyWith$Mutation$RemoveAllOrderLines<TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines(this._instance, this._then);

  final Mutation$RemoveAllOrderLines _instance;

  final TRes Function(Mutation$RemoveAllOrderLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? removeAllOrderLines = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines(
          removeAllOrderLines:
              removeAllOrderLines == _undefined || removeAllOrderLines == null
                  ? _instance.removeAllOrderLines
                  : (removeAllOrderLines
                      as Mutation$RemoveAllOrderLines$removeAllOrderLines),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes>
      get removeAllOrderLines {
    final local$removeAllOrderLines = _instance.removeAllOrderLines;
    return CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines(
        local$removeAllOrderLines, (e) => call(removeAllOrderLines: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines<TRes>
    implements CopyWith$Mutation$RemoveAllOrderLines<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines(this._res);

  TRes _res;

  call(
          {Mutation$RemoveAllOrderLines$removeAllOrderLines?
              removeAllOrderLines,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes>
      get removeAllOrderLines =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines.stub(_res);
}

const documentNodeMutationRemoveAllOrderLines = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveAllOrderLines'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'removeAllOrderLines'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ErrorResult'),
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
                  ]))
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
]);
Mutation$RemoveAllOrderLines _parserFn$Mutation$RemoveAllOrderLines(
        Map<String, dynamic> data) =>
    Mutation$RemoveAllOrderLines.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveAllOrderLines = FutureOr<void>
    Function(dynamic, Mutation$RemoveAllOrderLines?);

class Options$Mutation$RemoveAllOrderLines
    extends graphql.MutationOptions<Mutation$RemoveAllOrderLines> {
  Options$Mutation$RemoveAllOrderLines(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RemoveAllOrderLines? onCompleted,
      graphql.OnMutationUpdate<Mutation$RemoveAllOrderLines>? update,
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
                        : _parserFn$Mutation$RemoveAllOrderLines(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRemoveAllOrderLines,
            parserFn: _parserFn$Mutation$RemoveAllOrderLines);

  final OnMutationCompleted$Mutation$RemoveAllOrderLines? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$RemoveAllOrderLines
    extends graphql.WatchQueryOptions<Mutation$RemoveAllOrderLines> {
  WatchOptions$Mutation$RemoveAllOrderLines(
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
            document: documentNodeMutationRemoveAllOrderLines,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$RemoveAllOrderLines);
}

extension ClientExtension$Mutation$RemoveAllOrderLines
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveAllOrderLines>>
      mutate$RemoveAllOrderLines(
              [Options$Mutation$RemoveAllOrderLines? options]) async =>
          await this.mutate(options ?? Options$Mutation$RemoveAllOrderLines());
  graphql.ObservableQuery<Mutation$RemoveAllOrderLines>
      watchMutation$RemoveAllOrderLines(
              [WatchOptions$Mutation$RemoveAllOrderLines? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$RemoveAllOrderLines());
}

class Mutation$RemoveAllOrderLines$HookResult {
  Mutation$RemoveAllOrderLines$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$RemoveAllOrderLines runMutation;

  final graphql.QueryResult<Mutation$RemoveAllOrderLines> result;
}

Mutation$RemoveAllOrderLines$HookResult useMutation$RemoveAllOrderLines(
    [WidgetOptions$Mutation$RemoveAllOrderLines? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RemoveAllOrderLines());
  return Mutation$RemoveAllOrderLines$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RemoveAllOrderLines>
    useWatchMutation$RemoveAllOrderLines(
            [WatchOptions$Mutation$RemoveAllOrderLines? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$RemoveAllOrderLines());

class WidgetOptions$Mutation$RemoveAllOrderLines
    extends graphql.MutationOptions<Mutation$RemoveAllOrderLines> {
  WidgetOptions$Mutation$RemoveAllOrderLines(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$RemoveAllOrderLines? onCompleted,
      graphql.OnMutationUpdate<Mutation$RemoveAllOrderLines>? update,
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
                        : _parserFn$Mutation$RemoveAllOrderLines(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationRemoveAllOrderLines,
            parserFn: _parserFn$Mutation$RemoveAllOrderLines);

  final OnMutationCompleted$Mutation$RemoveAllOrderLines? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$RemoveAllOrderLines
    = graphql.MultiSourceResult<Mutation$RemoveAllOrderLines> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$RemoveAllOrderLines = widgets.Widget Function(
    RunMutation$Mutation$RemoveAllOrderLines,
    graphql.QueryResult<Mutation$RemoveAllOrderLines>?);

class Mutation$RemoveAllOrderLines$Widget
    extends graphql_flutter.Mutation<Mutation$RemoveAllOrderLines> {
  Mutation$RemoveAllOrderLines$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$RemoveAllOrderLines? options,
      required Builder$Mutation$RemoveAllOrderLines builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$RemoveAllOrderLines(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines {
  Mutation$RemoveAllOrderLines$removeAllOrderLines({required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order.fromJson(
            json);
      case "OrderModificationError":
        return Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
            .fromJson(json);
      default:
        return _$Mutation$RemoveAllOrderLines$removeAllOrderLinesFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLinesToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveAllOrderLines$removeAllOrderLines) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines
    on Mutation$RemoveAllOrderLines$removeAllOrderLines {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<
          Mutation$RemoveAllOrderLines$removeAllOrderLines>
      get copyWith => CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines(
          this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines(
          Mutation$RemoveAllOrderLines$removeAllOrderLines instance,
          TRes Function(Mutation$RemoveAllOrderLines$removeAllOrderLines)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes>
    implements CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines _instance;

  final TRes Function(Mutation$RemoveAllOrderLines$removeAllOrderLines) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines$removeAllOrderLines(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes>
    implements CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order
    implements Fragment$Cart, Mutation$RemoveAllOrderLines$removeAllOrderLines {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
      {required this.$__typename,
      required this.id,
      required this.code,
      required this.state,
      required this.active,
      required this.lines,
      required this.totalQuantity,
      required this.subTotal,
      required this.subTotalWithTax,
      required this.total,
      required this.totalWithTax,
      required this.shipping,
      required this.shippingWithTax,
      required this.shippingLines,
      required this.discounts});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>
      lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>
      shippingLines;

  final List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
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
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$code,
      l$state,
      l$active,
      Object.hashAll(l$lines.map((v) => v)),
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$total,
      l$totalWithTax,
      l$shipping,
      l$shippingWithTax,
      Object.hashAll(l$shippingLines.map((v) => v)),
      Object.hashAll(l$discounts.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order) ||
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

    return true;
  }
}

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order instance,
          TRes Function(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>?
          lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>?
          shippingLines,
      List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
                      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
                      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
                      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order _instance;

  final TRes Function(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? lines = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? shippingLines = _undefined,
          Object? discounts = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
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
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>),
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
          totalWithTax:
              totalWithTax == _undefined || totalWithTax == null ? _instance.totalWithTax : (totalWithTax as int),
          shipping: shipping == _undefined || shipping == null ? _instance.shipping : (shipping as int),
          shippingWithTax: shippingWithTax == _undefined || shippingWithTax == null ? _instance.shippingWithTax : (shippingWithTax as int),
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
                          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
                          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
                          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order<TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>?
              lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>?
              shippingLines,
          List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
      {required this.id,
      this.featuredAsset,
      required this.unitPrice,
      required this.unitPriceWithTax,
      required this.quantity,
      required this.linePriceWithTax,
      required this.discountedLinePriceWithTax,
      required this.productVariant,
      required this.discounts,
      required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$linesFromJson(
          json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
      productVariant;

  final List<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$linesToJson(
          this);
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
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines) ||
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant?
          productVariant,
      List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
                      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines _instance;

  final TRes Function(
      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines) _then;

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
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
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
                  as Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
                          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines(
      this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant?
              productVariant,
          List<Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariantToJson(
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
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
              id: id == _undefined || id == null
                  ? _instance.id
                  : (id as String),
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discountsFromJson(
          json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discountsToJson(
          this);
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
    if (!(other
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts
      _instance;

  final TRes Function(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
              amount: amount == _undefined || amount == null
                  ? _instance.amount
                  : (amount as int),
              amountWithTax:
                  amountWithTax == _undefined || amountWithTax == null
                      ? _instance.amountWithTax
                      : (amountWithTax as int),
              description: description == _undefined || description == null
                  ? _instance.description
                  : (description as String),
              adjustmentSource: adjustmentSource == _undefined ||
                      adjustmentSource == null
                  ? _instance.adjustmentSource
                  : (adjustmentSource as String),
              type: type == _undefined || type == null
                  ? _instance.type
                  : (type as Enum$AdjustmentType),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$lines$discounts(
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
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLinesToJson(
          this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines
      _instance;

  final TRes Function(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$shippingLines$shippingMethod(
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
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discountsFromJson(
          json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discountsToJson(
          this);
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
    if (!(other
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts
      _instance;

  final TRes Function(
      Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$Order$discounts(
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
class Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
    implements Mutation$RemoveAllOrderLines$removeAllOrderLines {
  Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationErrorToJson(
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
            is Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError) ||
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

extension UtilityExtension$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
    on Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError {
  CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError>
      get copyWith =>
          CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
    TRes> {
  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
              instance,
          TRes Function(
                  Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError)
              then) =
      _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError;

  factory CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
            TRes> {
  _CopyWithImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
      this._instance, this._then);

  final Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError
      _instance;

  final TRes Function(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
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

class _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveAllOrderLines$removeAllOrderLines$$OrderModificationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$AdjustOrderLine {
  Variables$Mutation$AdjustOrderLine(
      {required this.orderLineId, required this.quantity});

  @override
  factory Variables$Mutation$AdjustOrderLine.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$AdjustOrderLineFromJson(json);

  final String orderLineId;

  final int quantity;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$AdjustOrderLineToJson(this);
  int get hashCode {
    final l$orderLineId = orderLineId;
    final l$quantity = quantity;
    return Object.hashAll([l$orderLineId, l$quantity]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$AdjustOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$orderLineId = orderLineId;
    final lOther$orderLineId = other.orderLineId;
    if (l$orderLineId != lOther$orderLineId) return false;
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) return false;
    return true;
  }

  CopyWith$Variables$Mutation$AdjustOrderLine<
          Variables$Mutation$AdjustOrderLine>
      get copyWith =>
          CopyWith$Variables$Mutation$AdjustOrderLine(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$AdjustOrderLine<TRes> {
  factory CopyWith$Variables$Mutation$AdjustOrderLine(
          Variables$Mutation$AdjustOrderLine instance,
          TRes Function(Variables$Mutation$AdjustOrderLine) then) =
      _CopyWithImpl$Variables$Mutation$AdjustOrderLine;

  factory CopyWith$Variables$Mutation$AdjustOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AdjustOrderLine;

  TRes call({String? orderLineId, int? quantity});
}

class _CopyWithImpl$Variables$Mutation$AdjustOrderLine<TRes>
    implements CopyWith$Variables$Mutation$AdjustOrderLine<TRes> {
  _CopyWithImpl$Variables$Mutation$AdjustOrderLine(this._instance, this._then);

  final Variables$Mutation$AdjustOrderLine _instance;

  final TRes Function(Variables$Mutation$AdjustOrderLine) _then;

  static const _undefined = {};

  TRes call(
          {Object? orderLineId = _undefined, Object? quantity = _undefined}) =>
      _then(Variables$Mutation$AdjustOrderLine(
          orderLineId: orderLineId == _undefined || orderLineId == null
              ? _instance.orderLineId
              : (orderLineId as String),
          quantity: quantity == _undefined || quantity == null
              ? _instance.quantity
              : (quantity as int)));
}

class _CopyWithStubImpl$Variables$Mutation$AdjustOrderLine<TRes>
    implements CopyWith$Variables$Mutation$AdjustOrderLine<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AdjustOrderLine(this._res);

  TRes _res;

  call({String? orderLineId, int? quantity}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine {
  Mutation$AdjustOrderLine(
      {required this.adjustOrderLine, required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine.fromJson(Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLineFromJson(json);

  final Mutation$AdjustOrderLine$adjustOrderLine adjustOrderLine;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$AdjustOrderLineToJson(this);
  int get hashCode {
    final l$adjustOrderLine = adjustOrderLine;
    final l$$__typename = $__typename;
    return Object.hashAll([l$adjustOrderLine, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AdjustOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$adjustOrderLine = adjustOrderLine;
    final lOther$adjustOrderLine = other.adjustOrderLine;
    if (l$adjustOrderLine != lOther$adjustOrderLine) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine
    on Mutation$AdjustOrderLine {
  CopyWith$Mutation$AdjustOrderLine<Mutation$AdjustOrderLine> get copyWith =>
      CopyWith$Mutation$AdjustOrderLine(this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine<TRes> {
  factory CopyWith$Mutation$AdjustOrderLine(Mutation$AdjustOrderLine instance,
          TRes Function(Mutation$AdjustOrderLine) then) =
      _CopyWithImpl$Mutation$AdjustOrderLine;

  factory CopyWith$Mutation$AdjustOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine;

  TRes call(
      {Mutation$AdjustOrderLine$adjustOrderLine? adjustOrderLine,
      String? $__typename});
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> get adjustOrderLine;
}

class _CopyWithImpl$Mutation$AdjustOrderLine<TRes>
    implements CopyWith$Mutation$AdjustOrderLine<TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine(this._instance, this._then);

  final Mutation$AdjustOrderLine _instance;

  final TRes Function(Mutation$AdjustOrderLine) _then;

  static const _undefined = {};

  TRes call(
          {Object? adjustOrderLine = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine(
          adjustOrderLine: adjustOrderLine == _undefined ||
                  adjustOrderLine == null
              ? _instance.adjustOrderLine
              : (adjustOrderLine as Mutation$AdjustOrderLine$adjustOrderLine),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> get adjustOrderLine {
    final local$adjustOrderLine = _instance.adjustOrderLine;
    return CopyWith$Mutation$AdjustOrderLine$adjustOrderLine(
        local$adjustOrderLine, (e) => call(adjustOrderLine: e));
  }
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine<TRes>
    implements CopyWith$Mutation$AdjustOrderLine<TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine(this._res);

  TRes _res;

  call(
          {Mutation$AdjustOrderLine$adjustOrderLine? adjustOrderLine,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> get adjustOrderLine =>
      CopyWith$Mutation$AdjustOrderLine$adjustOrderLine.stub(_res);
}

const documentNodeMutationAdjustOrderLine = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AdjustOrderLine'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'orderLineId')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'quantity')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'adjustOrderLine'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'orderLineId'),
                  value: VariableNode(name: NameNode(value: 'orderLineId'))),
              ArgumentNode(
                  name: NameNode(value: 'quantity'),
                  value: VariableNode(name: NameNode(value: 'quantity')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'ErrorResult'),
                          isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'message'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'errorCode'),
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
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionCart,
  fragmentDefinitionAsset,
]);
Mutation$AdjustOrderLine _parserFn$Mutation$AdjustOrderLine(
        Map<String, dynamic> data) =>
    Mutation$AdjustOrderLine.fromJson(data);
typedef OnMutationCompleted$Mutation$AdjustOrderLine = FutureOr<void> Function(
    dynamic, Mutation$AdjustOrderLine?);

class Options$Mutation$AdjustOrderLine
    extends graphql.MutationOptions<Mutation$AdjustOrderLine> {
  Options$Mutation$AdjustOrderLine(
      {String? operationName,
      required Variables$Mutation$AdjustOrderLine variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AdjustOrderLine? onCompleted,
      graphql.OnMutationUpdate<Mutation$AdjustOrderLine>? update,
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
                        : _parserFn$Mutation$AdjustOrderLine(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAdjustOrderLine,
            parserFn: _parserFn$Mutation$AdjustOrderLine);

  final OnMutationCompleted$Mutation$AdjustOrderLine? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$AdjustOrderLine
    extends graphql.WatchQueryOptions<Mutation$AdjustOrderLine> {
  WatchOptions$Mutation$AdjustOrderLine(
      {String? operationName,
      required Variables$Mutation$AdjustOrderLine variables,
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
            document: documentNodeMutationAdjustOrderLine,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$AdjustOrderLine);
}

extension ClientExtension$Mutation$AdjustOrderLine on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AdjustOrderLine>> mutate$AdjustOrderLine(
          Options$Mutation$AdjustOrderLine options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AdjustOrderLine>
      watchMutation$AdjustOrderLine(
              WatchOptions$Mutation$AdjustOrderLine options) =>
          this.watchMutation(options);
}

class Mutation$AdjustOrderLine$HookResult {
  Mutation$AdjustOrderLine$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$AdjustOrderLine runMutation;

  final graphql.QueryResult<Mutation$AdjustOrderLine> result;
}

Mutation$AdjustOrderLine$HookResult useMutation$AdjustOrderLine(
    [WidgetOptions$Mutation$AdjustOrderLine? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AdjustOrderLine());
  return Mutation$AdjustOrderLine$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AdjustOrderLine>
    useWatchMutation$AdjustOrderLine(
            WatchOptions$Mutation$AdjustOrderLine options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AdjustOrderLine
    extends graphql.MutationOptions<Mutation$AdjustOrderLine> {
  WidgetOptions$Mutation$AdjustOrderLine(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AdjustOrderLine? onCompleted,
      graphql.OnMutationUpdate<Mutation$AdjustOrderLine>? update,
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
                        : _parserFn$Mutation$AdjustOrderLine(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAdjustOrderLine,
            parserFn: _parserFn$Mutation$AdjustOrderLine);

  final OnMutationCompleted$Mutation$AdjustOrderLine? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$AdjustOrderLine = graphql
        .MultiSourceResult<Mutation$AdjustOrderLine>
    Function(Variables$Mutation$AdjustOrderLine, {Object? optimisticResult});
typedef Builder$Mutation$AdjustOrderLine = widgets.Widget Function(
    RunMutation$Mutation$AdjustOrderLine,
    graphql.QueryResult<Mutation$AdjustOrderLine>?);

class Mutation$AdjustOrderLine$Widget
    extends graphql_flutter.Mutation<Mutation$AdjustOrderLine> {
  Mutation$AdjustOrderLine$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$AdjustOrderLine? options,
      required Builder$Mutation$AdjustOrderLine builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$AdjustOrderLine(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine({required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$AdjustOrderLine$adjustOrderLine$$Order.fromJson(json);
      case "OrderLimitError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError
            .fromJson(json);
      case "NegativeQuantityError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
            .fromJson(json);
      case "InsufficientStockError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
            .fromJson(json);
      case "OrderModificationError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
            .fromJson(json);
      default:
        return _$Mutation$AdjustOrderLine$adjustOrderLineFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLineToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AdjustOrderLine$adjustOrderLine) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine
    on Mutation$AdjustOrderLine$adjustOrderLine {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<
          Mutation$AdjustOrderLine$adjustOrderLine>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine(this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine(
          Mutation$AdjustOrderLine$adjustOrderLine instance,
          TRes Function(Mutation$AdjustOrderLine$adjustOrderLine) then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine<TRes>
    implements CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine _instance;

  final TRes Function(Mutation$AdjustOrderLine$adjustOrderLine) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine<TRes>
    implements CopyWith$Mutation$AdjustOrderLine$adjustOrderLine<TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$Order
    implements Fragment$Cart, Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order(
      {required this.$__typename,
      required this.id,
      required this.code,
      required this.state,
      required this.active,
      required this.lines,
      required this.totalQuantity,
      required this.subTotal,
      required this.subTotalWithTax,
      required this.total,
      required this.totalWithTax,
      required this.shipping,
      required this.shippingWithTax,
      required this.shippingLines,
      required this.discounts});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>
      shippingLines;

  final List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$code = code;
    final l$state = state;
    final l$active = active;
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
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$code,
      l$state,
      l$active,
      Object.hashAll(l$lines.map((v) => v)),
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$total,
      l$totalWithTax,
      l$shipping,
      l$shippingWithTax,
      Object.hashAll(l$shippingLines.map((v) => v)),
      Object.hashAll(l$discounts.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AdjustOrderLine$adjustOrderLine$$Order) ||
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

    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order>
      get copyWith => CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order(
          this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order<TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order instance,
          TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$Order) then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>?
          shippingLines,
      List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<
                      Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
                      Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
                      Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order<TRes>
    implements CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order<TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order _instance;

  final TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$Order) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? id = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? lines = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? shippingLines = _undefined,
          Object? discounts = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$Order(
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
          lines: lines == _undefined || lines == null
              ? _instance.lines
              : (lines as List<
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>),
          totalQuantity: totalQuantity == _undefined || totalQuantity == null
              ? _instance.totalQuantity
              : (totalQuantity as int),
          subTotal: subTotal == _undefined || subTotal == null
              ? _instance.subTotal
              : (subTotal as int),
          subTotalWithTax:
              subTotalWithTax == _undefined || subTotalWithTax == null
                  ? _instance.subTotalWithTax
                  : (subTotalWithTax as int),
          total: total == _undefined || total == null
              ? _instance.total
              : (total as int),
          totalWithTax: totalWithTax == _undefined || totalWithTax == null
              ? _instance.totalWithTax
              : (totalWithTax as int),
          shipping: shipping == _undefined || shipping == null ? _instance.shipping : (shipping as int),
          shippingWithTax: shippingWithTax == _undefined || shippingWithTax == null ? _instance.shippingWithTax : (shippingWithTax as int),
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<
                          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
                          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
                          Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order<TRes>
    implements CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order<TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>?
              shippingLines,
          List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
      {required this.id,
      this.featuredAsset,
      required this.unitPrice,
      required this.unitPriceWithTax,
      required this.quantity,
      required this.linePriceWithTax,
      required this.discountedLinePriceWithTax,
      required this.productVariant,
      required this.discounts,
      required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
      productVariant;

  final List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$linesToJson(this);
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
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines) ||
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

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines instance,
          TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant?
          productVariant,
      List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
                      Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines _instance;

  final TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines)
      _then;

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
          Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
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
                  as Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
                          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines<TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines(
      this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant?
              productVariant,
          List<Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariantToJson(
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
            is Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
              id: id == _undefined || id == null
                  ? _instance.id
                  : (id as String),
              name: name == _undefined || name == null
                  ? _instance.name
                  : (name as String),
              $__typename: $__typename == _undefined || $__typename == null
                  ? _instance.$__typename
                  : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discountsFromJson(
          json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discountsToJson(
          this);
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
    if (!(other
            is Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts
      _instance;

  final TRes Function(
      Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$lines$discounts(
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
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLinesToJson(
          this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines _instance;

  final TRes Function(
      Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$shippingLines$shippingMethod(
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
class Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discountsToJson(this);
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
    if (!(other is Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts) ||
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

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts
    on Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
          Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts _instance;

  final TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$Order$discounts(
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
class Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError
    implements Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
      {required this.$__typename,
      required this.message,
      required this.errorCode});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String message;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$errorCode = errorCode;
    return Object.hashAll([l$$__typename, l$message, l$errorCode]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError
    on Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
          Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
          Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError;

  TRes call({String? $__typename, String? message, Enum$ErrorCode? errorCode});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError _instance;

  final TRes Function(Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? message = _undefined,
          Object? errorCode = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError(
      this._res);

  TRes _res;

  call({String? $__typename, String? message, Enum$ErrorCode? errorCode}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
    implements Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
      {required this.$__typename,
      required this.message,
      required this.errorCode});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String message;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$errorCode = errorCode;
    return Object.hashAll([l$$__typename, l$message, l$errorCode]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
    on Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
          Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
          Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError;

  TRes call({String? $__typename, String? message, Enum$ErrorCode? errorCode});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
      _instance;

  final TRes Function(
      Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? message = _undefined,
          Object? errorCode = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError(
      this._res);

  TRes _res;

  call({String? $__typename, String? message, Enum$ErrorCode? errorCode}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
    implements Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
      {required this.$__typename,
      required this.message,
      required this.errorCode});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String message;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$errorCode = errorCode;
    return Object.hashAll([l$$__typename, l$message, l$errorCode]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
    on Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
          Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
          Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError;

  TRes call({String? $__typename, String? message, Enum$ErrorCode? errorCode});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
      _instance;

  final TRes Function(
      Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? message = _undefined,
          Object? errorCode = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError(
      this._res);

  TRes _res;

  call({String? $__typename, String? message, Enum$ErrorCode? errorCode}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
    implements Mutation$AdjustOrderLine$adjustOrderLine {
  Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
      {required this.$__typename,
      required this.message,
      required this.errorCode});

  @override
  factory Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String message;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  Map<String, dynamic> toJson() =>
      _$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationErrorToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$message = message;
    final l$errorCode = errorCode;
    return Object.hashAll([l$$__typename, l$message, l$errorCode]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) return false;
    final l$errorCode = errorCode;
    final lOther$errorCode = other.errorCode;
    if (l$errorCode != lOther$errorCode) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
    on Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError {
  CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
          Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError>
      get copyWith =>
          CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
    TRes> {
  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
          Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError instance,
          TRes Function(
                  Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError)
              then) =
      _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError;

  factory CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError;

  TRes call({String? $__typename, String? message, Enum$ErrorCode? errorCode});
}

class _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
            TRes> {
  _CopyWithImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
      this._instance, this._then);

  final Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError
      _instance;

  final TRes Function(
      Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? message = _undefined,
          Object? errorCode = _undefined}) =>
      _then(Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          errorCode: errorCode == _undefined || errorCode == null
              ? _instance.errorCode
              : (errorCode as Enum$ErrorCode)));
}

class _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError<
            TRes> {
  _CopyWithStubImpl$Mutation$AdjustOrderLine$adjustOrderLine$$OrderModificationError(
      this._res);

  TRes _res;

  call({String? $__typename, String? message, Enum$ErrorCode? errorCode}) =>
      _res;
}
