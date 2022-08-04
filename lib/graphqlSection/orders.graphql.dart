import 'cart_data.graphql.dart';
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
