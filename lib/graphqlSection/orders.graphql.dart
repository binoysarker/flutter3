import 'cart_data.graphql.dart';
import 'collections.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
import 'schema.graphql.dart';
part 'orders.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Fragment$OrderAddress {
  Fragment$OrderAddress(
      {this.fullName,
      this.company,
      this.streetLine1,
      this.streetLine2,
      this.city,
      this.province,
      this.postalCode,
      this.country,
      this.phoneNumber,
      required this.$__typename});

  @override
  factory Fragment$OrderAddress.fromJson(Map<String, dynamic> json) =>
      _$Fragment$OrderAddressFromJson(json);

  final String? fullName;

  final String? company;

  final String? streetLine1;

  final String? streetLine2;

  final String? city;

  final String? province;

  final String? postalCode;

  final String? country;

  final String? phoneNumber;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Fragment$OrderAddressToJson(this);
  int get hashCode {
    final l$fullName = fullName;
    final l$company = company;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$city = city;
    final l$province = province;
    final l$postalCode = postalCode;
    final l$country = country;
    final l$phoneNumber = phoneNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$fullName,
      l$company,
      l$streetLine1,
      l$streetLine2,
      l$city,
      l$province,
      l$postalCode,
      l$country,
      l$phoneNumber,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Fragment$OrderAddress) || runtimeType != other.runtimeType)
      return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$company = company;
    final lOther$company = other.company;
    if (l$company != lOther$company) return false;
    final l$streetLine1 = streetLine1;
    final lOther$streetLine1 = other.streetLine1;
    if (l$streetLine1 != lOther$streetLine1) return false;
    final l$streetLine2 = streetLine2;
    final lOther$streetLine2 = other.streetLine2;
    if (l$streetLine2 != lOther$streetLine2) return false;
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) return false;
    final l$province = province;
    final lOther$province = other.province;
    if (l$province != lOther$province) return false;
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (l$postalCode != lOther$postalCode) return false;
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Fragment$OrderAddress on Fragment$OrderAddress {
  CopyWith$Fragment$OrderAddress<Fragment$OrderAddress> get copyWith =>
      CopyWith$Fragment$OrderAddress(this, (i) => i);
}

abstract class CopyWith$Fragment$OrderAddress<TRes> {
  factory CopyWith$Fragment$OrderAddress(Fragment$OrderAddress instance,
          TRes Function(Fragment$OrderAddress) then) =
      _CopyWithImpl$Fragment$OrderAddress;

  factory CopyWith$Fragment$OrderAddress.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderAddress;

  TRes call(
      {String? fullName,
      String? company,
      String? streetLine1,
      String? streetLine2,
      String? city,
      String? province,
      String? postalCode,
      String? country,
      String? phoneNumber,
      String? $__typename});
}

class _CopyWithImpl$Fragment$OrderAddress<TRes>
    implements CopyWith$Fragment$OrderAddress<TRes> {
  _CopyWithImpl$Fragment$OrderAddress(this._instance, this._then);

  final Fragment$OrderAddress _instance;

  final TRes Function(Fragment$OrderAddress) _then;

  static const _undefined = {};

  TRes call(
          {Object? fullName = _undefined,
          Object? company = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? city = _undefined,
          Object? province = _undefined,
          Object? postalCode = _undefined,
          Object? country = _undefined,
          Object? phoneNumber = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Fragment$OrderAddress(
          fullName: fullName == _undefined
              ? _instance.fullName
              : (fullName as String?),
          company:
              company == _undefined ? _instance.company : (company as String?),
          streetLine1: streetLine1 == _undefined
              ? _instance.streetLine1
              : (streetLine1 as String?),
          streetLine2: streetLine2 == _undefined
              ? _instance.streetLine2
              : (streetLine2 as String?),
          city: city == _undefined ? _instance.city : (city as String?),
          province: province == _undefined
              ? _instance.province
              : (province as String?),
          postalCode: postalCode == _undefined
              ? _instance.postalCode
              : (postalCode as String?),
          country:
              country == _undefined ? _instance.country : (country as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$OrderAddress<TRes>
    implements CopyWith$Fragment$OrderAddress<TRes> {
  _CopyWithStubImpl$Fragment$OrderAddress(this._res);

  TRes _res;

  call(
          {String? fullName,
          String? company,
          String? streetLine1,
          String? streetLine2,
          String? city,
          String? province,
          String? postalCode,
          String? country,
          String? phoneNumber,
          String? $__typename}) =>
      _res;
}

const fragmentDefinitionOrderAddress = FragmentDefinitionNode(
    name: NameNode(value: 'OrderAddress'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
            name: NameNode(value: 'OrderAddress'), isNonNull: false)),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
          name: NameNode(value: 'fullName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'company'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'streetLine1'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'streetLine2'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'city'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'province'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'postalCode'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'country'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      FieldNode(
          name: NameNode(value: 'phoneNumber'),
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
const documentNodeFragmentOrderAddress = DocumentNode(definitions: [
  fragmentDefinitionOrderAddress,
]);

extension ClientExtension$Fragment$OrderAddress on graphql.GraphQLClient {
  void writeFragment$OrderAddress(
          {required Fragment$OrderAddress data,
          required Map<String, dynamic> idFields,
          bool broadcast = true}) =>
      this.writeFragment(
          graphql.FragmentRequest(
              idFields: idFields,
              fragment: const graphql.Fragment(
                  fragmentName: 'OrderAddress',
                  document: documentNodeFragmentOrderAddress)),
          data: data.toJson(),
          broadcast: broadcast);
  Fragment$OrderAddress? readFragment$OrderAddress(
      {required Map<String, dynamic> idFields, bool optimistic = true}) {
    final result = this.readFragment(
        graphql.FragmentRequest(
            idFields: idFields,
            fragment: const graphql.Fragment(
                fragmentName: 'OrderAddress',
                document: documentNodeFragmentOrderAddress)),
        optimistic: optimistic);
    return result == null ? null : Fragment$OrderAddress.fromJson(result);
  }
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

  final Query$GetActiveOrder$activeOrder? activeOrder;

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

  TRes call(
      {Query$GetActiveOrder$activeOrder? activeOrder, String? $__typename});
  CopyWith$Query$GetActiveOrder$activeOrder<TRes> get activeOrder;
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
              : (activeOrder as Query$GetActiveOrder$activeOrder?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveOrder$activeOrder<TRes> get activeOrder {
    final local$activeOrder = _instance.activeOrder;
    return local$activeOrder == null
        ? CopyWith$Query$GetActiveOrder$activeOrder.stub(_then(_instance))
        : CopyWith$Query$GetActiveOrder$activeOrder(
            local$activeOrder, (e) => call(activeOrder: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveOrder<TRes>
    implements CopyWith$Query$GetActiveOrder<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder(this._res);

  TRes _res;

  call({Query$GetActiveOrder$activeOrder? activeOrder, String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveOrder$activeOrder<TRes> get activeOrder =>
      CopyWith$Query$GetActiveOrder$activeOrder.stub(_res);
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
              FieldNode(
                  name: NameNode(value: 'currencyCode'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
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
class Query$GetActiveOrder$activeOrder implements Fragment$Cart {
  Query$GetActiveOrder$activeOrder(
      {required this.currencyCode,
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
      required this.discounts,
      required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrderFromJson(json);

  @JsonKey(unknownEnumValue: Enum$CurrencyCode.$unknown)
  final Enum$CurrencyCode currencyCode;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Query$GetActiveOrder$activeOrder$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Query$GetActiveOrder$activeOrder$shippingLines> shippingLines;

  final List<Query$GetActiveOrder$activeOrder$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrderToJson(this);
  int get hashCode {
    final l$currencyCode = currencyCode;
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
      l$currencyCode,
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
    if (!(other is Query$GetActiveOrder$activeOrder) ||
        runtimeType != other.runtimeType) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder
    on Query$GetActiveOrder$activeOrder {
  CopyWith$Query$GetActiveOrder$activeOrder<Query$GetActiveOrder$activeOrder>
      get copyWith => CopyWith$Query$GetActiveOrder$activeOrder(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder<TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder(
          Query$GetActiveOrder$activeOrder instance,
          TRes Function(Query$GetActiveOrder$activeOrder) then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder;

  factory CopyWith$Query$GetActiveOrder$activeOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder;

  TRes call(
      {Enum$CurrencyCode? currencyCode,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Query$GetActiveOrder$activeOrder$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Query$GetActiveOrder$activeOrder$shippingLines>? shippingLines,
      List<Query$GetActiveOrder$activeOrder$discounts>? discounts,
      String? $__typename});
  TRes lines(
      Iterable<Query$GetActiveOrder$activeOrder$lines> Function(
              Iterable<
                  CopyWith$Query$GetActiveOrder$activeOrder$lines<
                      Query$GetActiveOrder$activeOrder$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Query$GetActiveOrder$activeOrder$shippingLines> Function(
              Iterable<
                  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<
                      Query$GetActiveOrder$activeOrder$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Query$GetActiveOrder$activeOrder$discounts> Function(
              Iterable<
                  CopyWith$Query$GetActiveOrder$activeOrder$discounts<
                      Query$GetActiveOrder$activeOrder$discounts>>)
          _fn);
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder(this._instance, this._then);

  final Query$GetActiveOrder$activeOrder _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder) _then;

  static const _undefined = {};

  TRes call(
          {Object? currencyCode = _undefined,
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
          Object? discounts = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder(
          currencyCode: currencyCode == _undefined || currencyCode == null
              ? _instance.currencyCode
              : (currencyCode as Enum$CurrencyCode),
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
              : (lines as List<Query$GetActiveOrder$activeOrder$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Query$GetActiveOrder$activeOrder$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Query$GetActiveOrder$activeOrder$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  TRes lines(
          Iterable<Query$GetActiveOrder$activeOrder$lines> Function(
                  Iterable<
                      CopyWith$Query$GetActiveOrder$activeOrder$lines<
                          Query$GetActiveOrder$activeOrder$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
                  CopyWith$Query$GetActiveOrder$activeOrder$lines(e, (i) => i)))
              .toList());
  TRes shippingLines(
          Iterable<Query$GetActiveOrder$activeOrder$shippingLines> Function(
                  Iterable<
                      CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<
                          Query$GetActiveOrder$activeOrder$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Query$GetActiveOrder$activeOrder$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Query$GetActiveOrder$activeOrder$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetActiveOrder$activeOrder$discounts<
                          Query$GetActiveOrder$activeOrder$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetActiveOrder$activeOrder$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder(this._res);

  TRes _res;

  call(
          {Enum$CurrencyCode? currencyCode,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Query$GetActiveOrder$activeOrder$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Query$GetActiveOrder$activeOrder$shippingLines>? shippingLines,
          List<Query$GetActiveOrder$activeOrder$discounts>? discounts,
          String? $__typename}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveOrder$activeOrder$lines implements Fragment$Cart$lines {
  Query$GetActiveOrder$activeOrder$lines(
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
  factory Query$GetActiveOrder$activeOrder$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Query$GetActiveOrder$activeOrder$lines$productVariant productVariant;

  final List<Query$GetActiveOrder$activeOrder$lines$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$linesToJson(this);
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
    if (!(other is Query$GetActiveOrder$activeOrder$lines) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$lines
    on Query$GetActiveOrder$activeOrder$lines {
  CopyWith$Query$GetActiveOrder$activeOrder$lines<
          Query$GetActiveOrder$activeOrder$lines>
      get copyWith =>
          CopyWith$Query$GetActiveOrder$activeOrder$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$lines<TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$lines(
          Query$GetActiveOrder$activeOrder$lines instance,
          TRes Function(Query$GetActiveOrder$activeOrder$lines) then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines;

  factory CopyWith$Query$GetActiveOrder$activeOrder$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Query$GetActiveOrder$activeOrder$lines$productVariant? productVariant,
      List<Query$GetActiveOrder$activeOrder$lines$discounts>? discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes>
      get productVariant;
  TRes discounts(
      Iterable<Query$GetActiveOrder$activeOrder$lines$discounts> Function(
              Iterable<
                  CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<
                      Query$GetActiveOrder$activeOrder$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$lines<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$lines _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder$lines) _then;

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
      _then(Query$GetActiveOrder$activeOrder$lines(
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
                  as Query$GetActiveOrder$activeOrder$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Query$GetActiveOrder$activeOrder$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes>
      get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Query$GetActiveOrder$activeOrder$lines$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<
                          Query$GetActiveOrder$activeOrder$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$lines<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines(this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Query$GetActiveOrder$activeOrder$lines$productVariant? productVariant,
          List<Query$GetActiveOrder$activeOrder$lines$discounts>? discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes>
      get productVariant =>
          CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant.stub(
              _res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveOrder$activeOrder$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Query$GetActiveOrder$activeOrder$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$lines$productVariantFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$lines$productVariantToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveOrder$activeOrder$lines$productVariant) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$lines$productVariant
    on Query$GetActiveOrder$activeOrder$lines$productVariant {
  CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<
          Query$GetActiveOrder$activeOrder$lines$productVariant>
      get copyWith =>
          CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<
    TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant(
          Query$GetActiveOrder$activeOrder$lines$productVariant instance,
          TRes Function(Query$GetActiveOrder$activeOrder$lines$productVariant)
              then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$productVariant;

  factory CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes>
    implements
        CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$productVariant(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$lines$productVariant _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetActiveOrder$activeOrder$lines$productVariant<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveOrder$activeOrder$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Query$GetActiveOrder$activeOrder$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$lines$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$lines$discountsToJson(this);
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
    if (!(other is Query$GetActiveOrder$activeOrder$lines$discounts) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$lines$discounts
    on Query$GetActiveOrder$activeOrder$lines$discounts {
  CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<
          Query$GetActiveOrder$activeOrder$lines$discounts>
      get copyWith => CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts(
          this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts(
          Query$GetActiveOrder$activeOrder$lines$discounts instance,
          TRes Function(Query$GetActiveOrder$activeOrder$lines$discounts)
              then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$discounts;

  factory CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$discounts<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$lines$discounts(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$lines$discounts _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder$lines$discounts(
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

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$discounts<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$lines$discounts<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$lines$discounts(this._res);

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
class Query$GetActiveOrder$activeOrder$shippingLines
    implements Fragment$Cart$shippingLines {
  Query$GetActiveOrder$activeOrder$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$shippingLinesFromJson(json);

  final int priceWithTax;

  final Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$shippingLinesToJson(this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetActiveOrder$activeOrder$shippingLines) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$shippingLines
    on Query$GetActiveOrder$activeOrder$shippingLines {
  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<
          Query$GetActiveOrder$activeOrder$shippingLines>
      get copyWith => CopyWith$Query$GetActiveOrder$activeOrder$shippingLines(
          this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$shippingLines(
          Query$GetActiveOrder$activeOrder$shippingLines instance,
          TRes Function(Query$GetActiveOrder$activeOrder$shippingLines) then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines;

  factory CopyWith$Query$GetActiveOrder$activeOrder$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines;

  TRes call(
      {int? priceWithTax,
      Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<TRes>
      get shippingMethod;
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$shippingLines _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<TRes>
      get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$shippingLines<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines(this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<TRes>
      get shippingMethod =>
          CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethodToJson(
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
            is Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod
    on Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod {
  CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
          Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
          Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod instance,
          TRes Function(
                  Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod;

  factory CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod _instance;

  final TRes Function(
      Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$shippingLines$shippingMethod(
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
class Query$GetActiveOrder$activeOrder$discounts
    implements Fragment$Cart$discounts {
  Query$GetActiveOrder$activeOrder$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetActiveOrder$activeOrder$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetActiveOrder$activeOrder$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetActiveOrder$activeOrder$discountsToJson(this);
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
    if (!(other is Query$GetActiveOrder$activeOrder$discounts) ||
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

extension UtilityExtension$Query$GetActiveOrder$activeOrder$discounts
    on Query$GetActiveOrder$activeOrder$discounts {
  CopyWith$Query$GetActiveOrder$activeOrder$discounts<
          Query$GetActiveOrder$activeOrder$discounts>
      get copyWith =>
          CopyWith$Query$GetActiveOrder$activeOrder$discounts(this, (i) => i);
}

abstract class CopyWith$Query$GetActiveOrder$activeOrder$discounts<TRes> {
  factory CopyWith$Query$GetActiveOrder$activeOrder$discounts(
          Query$GetActiveOrder$activeOrder$discounts instance,
          TRes Function(Query$GetActiveOrder$activeOrder$discounts) then) =
      _CopyWithImpl$Query$GetActiveOrder$activeOrder$discounts;

  factory CopyWith$Query$GetActiveOrder$activeOrder$discounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetActiveOrder$activeOrder$discounts<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$discounts<TRes> {
  _CopyWithImpl$Query$GetActiveOrder$activeOrder$discounts(
      this._instance, this._then);

  final Query$GetActiveOrder$activeOrder$discounts _instance;

  final TRes Function(Query$GetActiveOrder$activeOrder$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetActiveOrder$activeOrder$discounts(
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

class _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$discounts<TRes>
    implements CopyWith$Query$GetActiveOrder$activeOrder$discounts<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrder$activeOrder$discounts(this._res);

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
class Query$GetOrderForCheckout {
  Query$GetOrderForCheckout({this.activeOrder, required this.$__typename});

  @override
  factory Query$GetOrderForCheckout.fromJson(Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckoutFromJson(json);

  final Query$GetOrderForCheckout$activeOrder? activeOrder;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetOrderForCheckoutToJson(this);
  int get hashCode {
    final l$activeOrder = activeOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$activeOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderForCheckout) ||
        runtimeType != other.runtimeType) return false;
    final l$activeOrder = activeOrder;
    final lOther$activeOrder = other.activeOrder;
    if (l$activeOrder != lOther$activeOrder) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderForCheckout
    on Query$GetOrderForCheckout {
  CopyWith$Query$GetOrderForCheckout<Query$GetOrderForCheckout> get copyWith =>
      CopyWith$Query$GetOrderForCheckout(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout<TRes> {
  factory CopyWith$Query$GetOrderForCheckout(Query$GetOrderForCheckout instance,
          TRes Function(Query$GetOrderForCheckout) then) =
      _CopyWithImpl$Query$GetOrderForCheckout;

  factory CopyWith$Query$GetOrderForCheckout.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout;

  TRes call(
      {Query$GetOrderForCheckout$activeOrder? activeOrder,
      String? $__typename});
  CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> get activeOrder;
}

class _CopyWithImpl$Query$GetOrderForCheckout<TRes>
    implements CopyWith$Query$GetOrderForCheckout<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout(this._instance, this._then);

  final Query$GetOrderForCheckout _instance;

  final TRes Function(Query$GetOrderForCheckout) _then;

  static const _undefined = {};

  TRes call(
          {Object? activeOrder = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout(
          activeOrder: activeOrder == _undefined
              ? _instance.activeOrder
              : (activeOrder as Query$GetOrderForCheckout$activeOrder?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> get activeOrder {
    final local$activeOrder = _instance.activeOrder;
    return local$activeOrder == null
        ? CopyWith$Query$GetOrderForCheckout$activeOrder.stub(_then(_instance))
        : CopyWith$Query$GetOrderForCheckout$activeOrder(
            local$activeOrder, (e) => call(activeOrder: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderForCheckout<TRes>
    implements CopyWith$Query$GetOrderForCheckout<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout(this._res);

  TRes _res;

  call(
          {Query$GetOrderForCheckout$activeOrder? activeOrder,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> get activeOrder =>
      CopyWith$Query$GetOrderForCheckout$activeOrder.stub(_res);
}

const documentNodeQueryGetOrderForCheckout = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetOrderForCheckout'),
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
                  name: NameNode(value: 'shippingAddress'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                        name: NameNode(value: 'OrderAddress'), directives: []),
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
  fragmentDefinitionOrderAddress,
]);
Query$GetOrderForCheckout _parserFn$Query$GetOrderForCheckout(
        Map<String, dynamic> data) =>
    Query$GetOrderForCheckout.fromJson(data);

class Options$Query$GetOrderForCheckout
    extends graphql.QueryOptions<Query$GetOrderForCheckout> {
  Options$Query$GetOrderForCheckout(
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
            document: documentNodeQueryGetOrderForCheckout,
            parserFn: _parserFn$Query$GetOrderForCheckout);
}

class WatchOptions$Query$GetOrderForCheckout
    extends graphql.WatchQueryOptions<Query$GetOrderForCheckout> {
  WatchOptions$Query$GetOrderForCheckout(
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
            document: documentNodeQueryGetOrderForCheckout,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetOrderForCheckout);
}

class FetchMoreOptions$Query$GetOrderForCheckout
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrderForCheckout(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetOrderForCheckout);
}

extension ClientExtension$Query$GetOrderForCheckout on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrderForCheckout>>
      query$GetOrderForCheckout(
              [Options$Query$GetOrderForCheckout? options]) async =>
          await this.query(options ?? Options$Query$GetOrderForCheckout());
  graphql.ObservableQuery<Query$GetOrderForCheckout>
      watchQuery$GetOrderForCheckout(
              [WatchOptions$Query$GetOrderForCheckout? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetOrderForCheckout());
  void writeQuery$GetOrderForCheckout(
          {required Query$GetOrderForCheckout data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetOrderForCheckout)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetOrderForCheckout? readQuery$GetOrderForCheckout(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetOrderForCheckout)),
        optimistic: optimistic);
    return result == null ? null : Query$GetOrderForCheckout.fromJson(result);
  }
}

graphql_flutter
    .QueryHookResult<Query$GetOrderForCheckout> useQuery$GetOrderForCheckout(
        [Options$Query$GetOrderForCheckout? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetOrderForCheckout());
graphql.ObservableQuery<Query$GetOrderForCheckout>
    useWatchQuery$GetOrderForCheckout(
            [WatchOptions$Query$GetOrderForCheckout? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetOrderForCheckout());

class Query$GetOrderForCheckout$Widget
    extends graphql_flutter.Query<Query$GetOrderForCheckout> {
  Query$GetOrderForCheckout$Widget(
      {widgets.Key? key,
      Options$Query$GetOrderForCheckout? options,
      required graphql_flutter.QueryBuilder<Query$GetOrderForCheckout> builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetOrderForCheckout(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderForCheckout$activeOrder implements Fragment$Cart {
  Query$GetOrderForCheckout$activeOrder(
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
      required this.$__typename,
      this.shippingAddress});

  @override
  factory Query$GetOrderForCheckout$activeOrder.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrderFromJson(json);

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Query$GetOrderForCheckout$activeOrder$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Query$GetOrderForCheckout$activeOrder$shippingLines> shippingLines;

  final List<Query$GetOrderForCheckout$activeOrder$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  final Fragment$OrderAddress? shippingAddress;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrderToJson(this);
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
    final l$shippingAddress = shippingAddress;
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
      l$$__typename,
      l$shippingAddress
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderForCheckout$activeOrder) ||
        runtimeType != other.runtimeType) return false;
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
    final l$shippingAddress = shippingAddress;
    final lOther$shippingAddress = other.shippingAddress;
    if (l$shippingAddress != lOther$shippingAddress) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder
    on Query$GetOrderForCheckout$activeOrder {
  CopyWith$Query$GetOrderForCheckout$activeOrder<
          Query$GetOrderForCheckout$activeOrder>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder(
          Query$GetOrderForCheckout$activeOrder instance,
          TRes Function(Query$GetOrderForCheckout$activeOrder) then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder;

  TRes call(
      {String? id,
      String? code,
      String? state,
      bool? active,
      List<Query$GetOrderForCheckout$activeOrder$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Query$GetOrderForCheckout$activeOrder$shippingLines>? shippingLines,
      List<Query$GetOrderForCheckout$activeOrder$discounts>? discounts,
      String? $__typename,
      Fragment$OrderAddress? shippingAddress});
  TRes lines(
      Iterable<Query$GetOrderForCheckout$activeOrder$lines> Function(
              Iterable<
                  CopyWith$Query$GetOrderForCheckout$activeOrder$lines<
                      Query$GetOrderForCheckout$activeOrder$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Query$GetOrderForCheckout$activeOrder$shippingLines> Function(
              Iterable<
                  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<
                      Query$GetOrderForCheckout$activeOrder$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Query$GetOrderForCheckout$activeOrder$discounts> Function(
              Iterable<
                  CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<
                      Query$GetOrderForCheckout$activeOrder$discounts>>)
          _fn);
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress;
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder _instance;

  final TRes Function(Query$GetOrderForCheckout$activeOrder) _then;

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
          Object? $__typename = _undefined,
          Object? shippingAddress = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder(
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
              : (lines as List<Query$GetOrderForCheckout$activeOrder$lines>),
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
              shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Query$GetOrderForCheckout$activeOrder$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Query$GetOrderForCheckout$activeOrder$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String),
          shippingAddress: shippingAddress == _undefined ? _instance.shippingAddress : (shippingAddress as Fragment$OrderAddress?)));
  TRes lines(
          Iterable<Query$GetOrderForCheckout$activeOrder$lines> Function(
                  Iterable<
                      CopyWith$Query$GetOrderForCheckout$activeOrder$lines<
                          Query$GetOrderForCheckout$activeOrder$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Query$GetOrderForCheckout$activeOrder$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Query$GetOrderForCheckout$activeOrder$shippingLines> Function(
                  Iterable<
                      CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<
                          Query$GetOrderForCheckout$activeOrder$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Query$GetOrderForCheckout$activeOrder$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<
                          Query$GetOrderForCheckout$activeOrder$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetOrderForCheckout$activeOrder$discounts(
                  e, (i) => i))).toList());
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress {
    final local$shippingAddress = _instance.shippingAddress;
    return local$shippingAddress == null
        ? CopyWith$Fragment$OrderAddress.stub(_then(_instance))
        : CopyWith$Fragment$OrderAddress(
            local$shippingAddress, (e) => call(shippingAddress: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder(this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? state,
          bool? active,
          List<Query$GetOrderForCheckout$activeOrder$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Query$GetOrderForCheckout$activeOrder$shippingLines>?
              shippingLines,
          List<Query$GetOrderForCheckout$activeOrder$discounts>? discounts,
          String? $__typename,
          Fragment$OrderAddress? shippingAddress}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress =>
      CopyWith$Fragment$OrderAddress.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderForCheckout$activeOrder$lines
    implements Fragment$Cart$lines {
  Query$GetOrderForCheckout$activeOrder$lines(
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
  factory Query$GetOrderForCheckout$activeOrder$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Query$GetOrderForCheckout$activeOrder$lines$productVariant
      productVariant;

  final List<Query$GetOrderForCheckout$activeOrder$lines$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$linesToJson(this);
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
    if (!(other is Query$GetOrderForCheckout$activeOrder$lines) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$lines
    on Query$GetOrderForCheckout$activeOrder$lines {
  CopyWith$Query$GetOrderForCheckout$activeOrder$lines<
          Query$GetOrderForCheckout$activeOrder$lines>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$lines<TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines(
          Query$GetOrderForCheckout$activeOrder$lines instance,
          TRes Function(Query$GetOrderForCheckout$activeOrder$lines) then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Query$GetOrderForCheckout$activeOrder$lines$productVariant?
          productVariant,
      List<Query$GetOrderForCheckout$activeOrder$lines$discounts>? discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<TRes>
      get productVariant;
  TRes discounts(
      Iterable<Query$GetOrderForCheckout$activeOrder$lines$discounts> Function(
              Iterable<
                  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<
                      Query$GetOrderForCheckout$activeOrder$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder$lines<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$lines _instance;

  final TRes Function(Query$GetOrderForCheckout$activeOrder$lines) _then;

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
      _then(Query$GetOrderForCheckout$activeOrder$lines(
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
                  as Query$GetOrderForCheckout$activeOrder$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Query$GetOrderForCheckout$activeOrder$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<TRes>
      get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Query$GetOrderForCheckout$activeOrder$lines$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<
                          Query$GetOrderForCheckout$activeOrder$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder$lines<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines(this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Query$GetOrderForCheckout$activeOrder$lines$productVariant?
              productVariant,
          List<Query$GetOrderForCheckout$activeOrder$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<TRes>
      get productVariant =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderForCheckout$activeOrder$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Query$GetOrderForCheckout$activeOrder$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$GetOrderForCheckout$activeOrder$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$lines$productVariantToJson(this);
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
            is Query$GetOrderForCheckout$activeOrder$lines$productVariant) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$lines$productVariant
    on Query$GetOrderForCheckout$activeOrder$lines$productVariant {
  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
          Query$GetOrderForCheckout$activeOrder$lines$productVariant>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
    TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant(
          Query$GetOrderForCheckout$activeOrder$lines$productVariant instance,
          TRes Function(
                  Query$GetOrderForCheckout$activeOrder$lines$productVariant)
              then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
            TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$lines$productVariant _instance;

  final TRes Function(
      Query$GetOrderForCheckout$activeOrder$lines$productVariant) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderForCheckout$activeOrder$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Query$GetOrderForCheckout$activeOrder$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetOrderForCheckout$activeOrder$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$lines$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$lines$discountsToJson(this);
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
    if (!(other is Query$GetOrderForCheckout$activeOrder$lines$discounts) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$lines$discounts
    on Query$GetOrderForCheckout$activeOrder$lines$discounts {
  CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<
          Query$GetOrderForCheckout$activeOrder$lines$discounts>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<
    TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts(
          Query$GetOrderForCheckout$activeOrder$lines$discounts instance,
          TRes Function(Query$GetOrderForCheckout$activeOrder$lines$discounts)
              then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts<TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$lines$discounts _instance;

  final TRes Function(Query$GetOrderForCheckout$activeOrder$lines$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder$lines$discounts(
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

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$lines$discounts<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$lines$discounts(
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
class Query$GetOrderForCheckout$activeOrder$shippingLines
    implements Fragment$Cart$shippingLines {
  Query$GetOrderForCheckout$activeOrder$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Query$GetOrderForCheckout$activeOrder$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$shippingLinesFromJson(json);

  final int priceWithTax;

  final Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$shippingLinesToJson(this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderForCheckout$activeOrder$shippingLines) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$shippingLines
    on Query$GetOrderForCheckout$activeOrder$shippingLines {
  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<
          Query$GetOrderForCheckout$activeOrder$shippingLines>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<
    TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines(
          Query$GetOrderForCheckout$activeOrder$shippingLines instance,
          TRes Function(Query$GetOrderForCheckout$activeOrder$shippingLines)
              then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines;

  TRes call(
      {int? priceWithTax,
      Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines<TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$shippingLines _instance;

  final TRes Function(Query$GetOrderForCheckout$activeOrder$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethodToJson(
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
            is Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
    on Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod {
  CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
          Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
          Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod
      _instance;

  final TRes Function(
      Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$shippingLines$shippingMethod(
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
class Query$GetOrderForCheckout$activeOrder$discounts
    implements Fragment$Cart$discounts {
  Query$GetOrderForCheckout$activeOrder$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetOrderForCheckout$activeOrder$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderForCheckout$activeOrder$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderForCheckout$activeOrder$discountsToJson(this);
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
    if (!(other is Query$GetOrderForCheckout$activeOrder$discounts) ||
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

extension UtilityExtension$Query$GetOrderForCheckout$activeOrder$discounts
    on Query$GetOrderForCheckout$activeOrder$discounts {
  CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<
          Query$GetOrderForCheckout$activeOrder$discounts>
      get copyWith => CopyWith$Query$GetOrderForCheckout$activeOrder$discounts(
          this, (i) => i);
}

abstract class CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<TRes> {
  factory CopyWith$Query$GetOrderForCheckout$activeOrder$discounts(
          Query$GetOrderForCheckout$activeOrder$discounts instance,
          TRes Function(Query$GetOrderForCheckout$activeOrder$discounts) then) =
      _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$discounts;

  factory CopyWith$Query$GetOrderForCheckout$activeOrder$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$discounts<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<TRes> {
  _CopyWithImpl$Query$GetOrderForCheckout$activeOrder$discounts(
      this._instance, this._then);

  final Query$GetOrderForCheckout$activeOrder$discounts _instance;

  final TRes Function(Query$GetOrderForCheckout$activeOrder$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderForCheckout$activeOrder$discounts(
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

class _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$discounts<TRes>
    implements CopyWith$Query$GetOrderForCheckout$activeOrder$discounts<TRes> {
  _CopyWithStubImpl$Query$GetOrderForCheckout$activeOrder$discounts(this._res);

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
class Query$GetEligibleShippingMethods {
  Query$GetEligibleShippingMethods(
      {required this.eligibleShippingMethods, required this.$__typename});

  @override
  factory Query$GetEligibleShippingMethods.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetEligibleShippingMethodsFromJson(json);

  final List<Query$GetEligibleShippingMethods$eligibleShippingMethods>
      eligibleShippingMethods;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetEligibleShippingMethodsToJson(this);
  int get hashCode {
    final l$eligibleShippingMethods = eligibleShippingMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$eligibleShippingMethods.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetEligibleShippingMethods) ||
        runtimeType != other.runtimeType) return false;
    final l$eligibleShippingMethods = eligibleShippingMethods;
    final lOther$eligibleShippingMethods = other.eligibleShippingMethods;
    if (l$eligibleShippingMethods.length !=
        lOther$eligibleShippingMethods.length) return false;
    for (int i = 0; i < l$eligibleShippingMethods.length; i++) {
      final l$eligibleShippingMethods$entry = l$eligibleShippingMethods[i];
      final lOther$eligibleShippingMethods$entry =
          lOther$eligibleShippingMethods[i];
      if (l$eligibleShippingMethods$entry !=
          lOther$eligibleShippingMethods$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetEligibleShippingMethods
    on Query$GetEligibleShippingMethods {
  CopyWith$Query$GetEligibleShippingMethods<Query$GetEligibleShippingMethods>
      get copyWith => CopyWith$Query$GetEligibleShippingMethods(this, (i) => i);
}

abstract class CopyWith$Query$GetEligibleShippingMethods<TRes> {
  factory CopyWith$Query$GetEligibleShippingMethods(
          Query$GetEligibleShippingMethods instance,
          TRes Function(Query$GetEligibleShippingMethods) then) =
      _CopyWithImpl$Query$GetEligibleShippingMethods;

  factory CopyWith$Query$GetEligibleShippingMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEligibleShippingMethods;

  TRes call(
      {List<Query$GetEligibleShippingMethods$eligibleShippingMethods>?
          eligibleShippingMethods,
      String? $__typename});
  TRes eligibleShippingMethods(
      Iterable<Query$GetEligibleShippingMethods$eligibleShippingMethods> Function(
              Iterable<
                  CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
                      Query$GetEligibleShippingMethods$eligibleShippingMethods>>)
          _fn);
}

class _CopyWithImpl$Query$GetEligibleShippingMethods<TRes>
    implements CopyWith$Query$GetEligibleShippingMethods<TRes> {
  _CopyWithImpl$Query$GetEligibleShippingMethods(this._instance, this._then);

  final Query$GetEligibleShippingMethods _instance;

  final TRes Function(Query$GetEligibleShippingMethods) _then;

  static const _undefined = {};

  TRes call(
          {Object? eligibleShippingMethods = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetEligibleShippingMethods(
          eligibleShippingMethods: eligibleShippingMethods == _undefined ||
                  eligibleShippingMethods == null
              ? _instance.eligibleShippingMethods
              : (eligibleShippingMethods as List<
                  Query$GetEligibleShippingMethods$eligibleShippingMethods>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes eligibleShippingMethods(
          Iterable<Query$GetEligibleShippingMethods$eligibleShippingMethods> Function(
                  Iterable<
                      CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
                          Query$GetEligibleShippingMethods$eligibleShippingMethods>>)
              _fn) =>
      call(
          eligibleShippingMethods: _fn(_instance.eligibleShippingMethods.map((e) =>
              CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetEligibleShippingMethods<TRes>
    implements CopyWith$Query$GetEligibleShippingMethods<TRes> {
  _CopyWithStubImpl$Query$GetEligibleShippingMethods(this._res);

  TRes _res;

  call(
          {List<Query$GetEligibleShippingMethods$eligibleShippingMethods>?
              eligibleShippingMethods,
          String? $__typename}) =>
      _res;
  eligibleShippingMethods(_fn) => _res;
}

const documentNodeQueryGetEligibleShippingMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetEligibleShippingMethods'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'eligibleShippingMethods'),
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
                  name: NameNode(value: 'code'),
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
                  name: NameNode(value: 'price'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'priceWithTax'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'metadata'),
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
Query$GetEligibleShippingMethods _parserFn$Query$GetEligibleShippingMethods(
        Map<String, dynamic> data) =>
    Query$GetEligibleShippingMethods.fromJson(data);

class Options$Query$GetEligibleShippingMethods
    extends graphql.QueryOptions<Query$GetEligibleShippingMethods> {
  Options$Query$GetEligibleShippingMethods(
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
            document: documentNodeQueryGetEligibleShippingMethods,
            parserFn: _parserFn$Query$GetEligibleShippingMethods);
}

class WatchOptions$Query$GetEligibleShippingMethods
    extends graphql.WatchQueryOptions<Query$GetEligibleShippingMethods> {
  WatchOptions$Query$GetEligibleShippingMethods(
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
            document: documentNodeQueryGetEligibleShippingMethods,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetEligibleShippingMethods);
}

class FetchMoreOptions$Query$GetEligibleShippingMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEligibleShippingMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetEligibleShippingMethods);
}

extension ClientExtension$Query$GetEligibleShippingMethods
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEligibleShippingMethods>>
      query$GetEligibleShippingMethods(
              [Options$Query$GetEligibleShippingMethods? options]) async =>
          await this
              .query(options ?? Options$Query$GetEligibleShippingMethods());
  graphql.ObservableQuery<Query$GetEligibleShippingMethods>
      watchQuery$GetEligibleShippingMethods(
              [WatchOptions$Query$GetEligibleShippingMethods? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetEligibleShippingMethods());
  void writeQuery$GetEligibleShippingMethods(
          {required Query$GetEligibleShippingMethods data,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetEligibleShippingMethods)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetEligibleShippingMethods? readQuery$GetEligibleShippingMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetEligibleShippingMethods)),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$GetEligibleShippingMethods.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEligibleShippingMethods>
    useQuery$GetEligibleShippingMethods(
            [Options$Query$GetEligibleShippingMethods? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetEligibleShippingMethods());
graphql.ObservableQuery<Query$GetEligibleShippingMethods>
    useWatchQuery$GetEligibleShippingMethods(
            [WatchOptions$Query$GetEligibleShippingMethods? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetEligibleShippingMethods());

class Query$GetEligibleShippingMethods$Widget
    extends graphql_flutter.Query<Query$GetEligibleShippingMethods> {
  Query$GetEligibleShippingMethods$Widget(
      {widgets.Key? key,
      Options$Query$GetEligibleShippingMethods? options,
      required graphql_flutter.QueryBuilder<Query$GetEligibleShippingMethods>
          builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetEligibleShippingMethods(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetEligibleShippingMethods$eligibleShippingMethods {
  Query$GetEligibleShippingMethods$eligibleShippingMethods(
      {required this.id,
      required this.name,
      required this.code,
      required this.description,
      required this.price,
      required this.priceWithTax,
      this.metadata,
      required this.$__typename});

  @override
  factory Query$GetEligibleShippingMethods$eligibleShippingMethods.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetEligibleShippingMethods$eligibleShippingMethodsFromJson(json);

  final String id;

  final String name;

  final String code;

  final String description;

  final int price;

  final int priceWithTax;

  final String? metadata;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetEligibleShippingMethods$eligibleShippingMethodsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$description = description;
    final l$price = price;
    final l$priceWithTax = priceWithTax;
    final l$metadata = metadata;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$code,
      l$description,
      l$price,
      l$priceWithTax,
      l$metadata,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetEligibleShippingMethods$eligibleShippingMethods) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetEligibleShippingMethods$eligibleShippingMethods
    on Query$GetEligibleShippingMethods$eligibleShippingMethods {
  CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
          Query$GetEligibleShippingMethods$eligibleShippingMethods>
      get copyWith =>
          CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods(
              this, (i) => i);
}

abstract class CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
    TRes> {
  factory CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods(
          Query$GetEligibleShippingMethods$eligibleShippingMethods instance,
          TRes Function(
                  Query$GetEligibleShippingMethods$eligibleShippingMethods)
              then) =
      _CopyWithImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods;

  factory CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods;

  TRes call(
      {String? id,
      String? name,
      String? code,
      String? description,
      int? price,
      int? priceWithTax,
      String? metadata,
      String? $__typename});
}

class _CopyWithImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods<
        TRes>
    implements
        CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
            TRes> {
  _CopyWithImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods(
      this._instance, this._then);

  final Query$GetEligibleShippingMethods$eligibleShippingMethods _instance;

  final TRes Function(Query$GetEligibleShippingMethods$eligibleShippingMethods)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? code = _undefined,
          Object? description = _undefined,
          Object? price = _undefined,
          Object? priceWithTax = _undefined,
          Object? metadata = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetEligibleShippingMethods$eligibleShippingMethods(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          description: description == _undefined || description == null
              ? _instance.description
              : (description as String),
          price: price == _undefined || price == null
              ? _instance.price
              : (price as int),
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          metadata: metadata == _undefined
              ? _instance.metadata
              : (metadata as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods<
        TRes>
    implements
        CopyWith$Query$GetEligibleShippingMethods$eligibleShippingMethods<
            TRes> {
  _CopyWithStubImpl$Query$GetEligibleShippingMethods$eligibleShippingMethods(
      this._res);

  TRes _res;

  call(
          {String? id,
          String? name,
          String? code,
          String? description,
          int? price,
          int? priceWithTax,
          String? metadata,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetEligiblePaymentMethods {
  Query$GetEligiblePaymentMethods(
      {required this.eligiblePaymentMethods, required this.$__typename});

  @override
  factory Query$GetEligiblePaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$Query$GetEligiblePaymentMethodsFromJson(json);

  final List<Query$GetEligiblePaymentMethods$eligiblePaymentMethods>
      eligiblePaymentMethods;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetEligiblePaymentMethodsToJson(this);
  int get hashCode {
    final l$eligiblePaymentMethods = eligiblePaymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$eligiblePaymentMethods.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetEligiblePaymentMethods) ||
        runtimeType != other.runtimeType) return false;
    final l$eligiblePaymentMethods = eligiblePaymentMethods;
    final lOther$eligiblePaymentMethods = other.eligiblePaymentMethods;
    if (l$eligiblePaymentMethods.length != lOther$eligiblePaymentMethods.length)
      return false;
    for (int i = 0; i < l$eligiblePaymentMethods.length; i++) {
      final l$eligiblePaymentMethods$entry = l$eligiblePaymentMethods[i];
      final lOther$eligiblePaymentMethods$entry =
          lOther$eligiblePaymentMethods[i];
      if (l$eligiblePaymentMethods$entry != lOther$eligiblePaymentMethods$entry)
        return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetEligiblePaymentMethods
    on Query$GetEligiblePaymentMethods {
  CopyWith$Query$GetEligiblePaymentMethods<Query$GetEligiblePaymentMethods>
      get copyWith => CopyWith$Query$GetEligiblePaymentMethods(this, (i) => i);
}

abstract class CopyWith$Query$GetEligiblePaymentMethods<TRes> {
  factory CopyWith$Query$GetEligiblePaymentMethods(
          Query$GetEligiblePaymentMethods instance,
          TRes Function(Query$GetEligiblePaymentMethods) then) =
      _CopyWithImpl$Query$GetEligiblePaymentMethods;

  factory CopyWith$Query$GetEligiblePaymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEligiblePaymentMethods;

  TRes call(
      {List<Query$GetEligiblePaymentMethods$eligiblePaymentMethods>?
          eligiblePaymentMethods,
      String? $__typename});
  TRes eligiblePaymentMethods(
      Iterable<Query$GetEligiblePaymentMethods$eligiblePaymentMethods> Function(
              Iterable<
                  CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<
                      Query$GetEligiblePaymentMethods$eligiblePaymentMethods>>)
          _fn);
}

class _CopyWithImpl$Query$GetEligiblePaymentMethods<TRes>
    implements CopyWith$Query$GetEligiblePaymentMethods<TRes> {
  _CopyWithImpl$Query$GetEligiblePaymentMethods(this._instance, this._then);

  final Query$GetEligiblePaymentMethods _instance;

  final TRes Function(Query$GetEligiblePaymentMethods) _then;

  static const _undefined = {};

  TRes call(
          {Object? eligiblePaymentMethods = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetEligiblePaymentMethods(
          eligiblePaymentMethods: eligiblePaymentMethods == _undefined ||
                  eligiblePaymentMethods == null
              ? _instance.eligiblePaymentMethods
              : (eligiblePaymentMethods as List<
                  Query$GetEligiblePaymentMethods$eligiblePaymentMethods>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  TRes eligiblePaymentMethods(
          Iterable<Query$GetEligiblePaymentMethods$eligiblePaymentMethods> Function(
                  Iterable<
                      CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<
                          Query$GetEligiblePaymentMethods$eligiblePaymentMethods>>)
              _fn) =>
      call(
          eligiblePaymentMethods: _fn(_instance.eligiblePaymentMethods.map((e) =>
              CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetEligiblePaymentMethods<TRes>
    implements CopyWith$Query$GetEligiblePaymentMethods<TRes> {
  _CopyWithStubImpl$Query$GetEligiblePaymentMethods(this._res);

  TRes _res;

  call(
          {List<Query$GetEligiblePaymentMethods$eligiblePaymentMethods>?
              eligiblePaymentMethods,
          String? $__typename}) =>
      _res;
  eligiblePaymentMethods(_fn) => _res;
}

const documentNodeQueryGetEligiblePaymentMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetEligiblePaymentMethods'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'eligiblePaymentMethods'),
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
                  name: NameNode(value: 'eligibilityMessage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'isEligible'),
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
Query$GetEligiblePaymentMethods _parserFn$Query$GetEligiblePaymentMethods(
        Map<String, dynamic> data) =>
    Query$GetEligiblePaymentMethods.fromJson(data);

class Options$Query$GetEligiblePaymentMethods
    extends graphql.QueryOptions<Query$GetEligiblePaymentMethods> {
  Options$Query$GetEligiblePaymentMethods(
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
            document: documentNodeQueryGetEligiblePaymentMethods,
            parserFn: _parserFn$Query$GetEligiblePaymentMethods);
}

class WatchOptions$Query$GetEligiblePaymentMethods
    extends graphql.WatchQueryOptions<Query$GetEligiblePaymentMethods> {
  WatchOptions$Query$GetEligiblePaymentMethods(
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
            document: documentNodeQueryGetEligiblePaymentMethods,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetEligiblePaymentMethods);
}

class FetchMoreOptions$Query$GetEligiblePaymentMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetEligiblePaymentMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
            updateQuery: updateQuery,
            document: documentNodeQueryGetEligiblePaymentMethods);
}

extension ClientExtension$Query$GetEligiblePaymentMethods
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetEligiblePaymentMethods>>
      query$GetEligiblePaymentMethods(
              [Options$Query$GetEligiblePaymentMethods? options]) async =>
          await this
              .query(options ?? Options$Query$GetEligiblePaymentMethods());
  graphql.ObservableQuery<Query$GetEligiblePaymentMethods>
      watchQuery$GetEligiblePaymentMethods(
              [WatchOptions$Query$GetEligiblePaymentMethods? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetEligiblePaymentMethods());
  void writeQuery$GetEligiblePaymentMethods(
          {required Query$GetEligiblePaymentMethods data,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: documentNodeQueryGetEligiblePaymentMethods)),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetEligiblePaymentMethods? readQuery$GetEligiblePaymentMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetEligiblePaymentMethods)),
        optimistic: optimistic);
    return result == null
        ? null
        : Query$GetEligiblePaymentMethods.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetEligiblePaymentMethods>
    useQuery$GetEligiblePaymentMethods(
            [Options$Query$GetEligiblePaymentMethods? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetEligiblePaymentMethods());
graphql.ObservableQuery<Query$GetEligiblePaymentMethods>
    useWatchQuery$GetEligiblePaymentMethods(
            [WatchOptions$Query$GetEligiblePaymentMethods? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetEligiblePaymentMethods());

class Query$GetEligiblePaymentMethods$Widget
    extends graphql_flutter.Query<Query$GetEligiblePaymentMethods> {
  Query$GetEligiblePaymentMethods$Widget(
      {widgets.Key? key,
      Options$Query$GetEligiblePaymentMethods? options,
      required graphql_flutter.QueryBuilder<Query$GetEligiblePaymentMethods>
          builder})
      : super(
            key: key,
            options: options ?? Options$Query$GetEligiblePaymentMethods(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetEligiblePaymentMethods$eligiblePaymentMethods {
  Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
      {required this.id,
      required this.code,
      this.eligibilityMessage,
      required this.isEligible,
      required this.$__typename});

  @override
  factory Query$GetEligiblePaymentMethods$eligiblePaymentMethods.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetEligiblePaymentMethods$eligiblePaymentMethodsFromJson(json);

  final String id;

  final String code;

  final String? eligibilityMessage;

  final bool isEligible;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetEligiblePaymentMethods$eligiblePaymentMethodsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$eligibilityMessage = eligibilityMessage;
    final l$isEligible = isEligible;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$code, l$eligibilityMessage, l$isEligible, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetEligiblePaymentMethods$eligiblePaymentMethods) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$eligibilityMessage = eligibilityMessage;
    final lOther$eligibilityMessage = other.eligibilityMessage;
    if (l$eligibilityMessage != lOther$eligibilityMessage) return false;
    final l$isEligible = isEligible;
    final lOther$isEligible = other.isEligible;
    if (l$isEligible != lOther$isEligible) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetEligiblePaymentMethods$eligiblePaymentMethods
    on Query$GetEligiblePaymentMethods$eligiblePaymentMethods {
  CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<
          Query$GetEligiblePaymentMethods$eligiblePaymentMethods>
      get copyWith =>
          CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
              this, (i) => i);
}

abstract class CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<
    TRes> {
  factory CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
          Query$GetEligiblePaymentMethods$eligiblePaymentMethods instance,
          TRes Function(Query$GetEligiblePaymentMethods$eligiblePaymentMethods)
              then) =
      _CopyWithImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods;

  factory CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods;

  TRes call(
      {String? id,
      String? code,
      String? eligibilityMessage,
      bool? isEligible,
      String? $__typename});
}

class _CopyWithImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<TRes>
    implements
        CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<TRes> {
  _CopyWithImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
      this._instance, this._then);

  final Query$GetEligiblePaymentMethods$eligiblePaymentMethods _instance;

  final TRes Function(Query$GetEligiblePaymentMethods$eligiblePaymentMethods)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? eligibilityMessage = _undefined,
          Object? isEligible = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          eligibilityMessage: eligibilityMessage == _undefined
              ? _instance.eligibilityMessage
              : (eligibilityMessage as String?),
          isEligible: isEligible == _undefined || isEligible == null
              ? _instance.isEligible
              : (isEligible as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<
        TRes>
    implements
        CopyWith$Query$GetEligiblePaymentMethods$eligiblePaymentMethods<TRes> {
  _CopyWithStubImpl$Query$GetEligiblePaymentMethods$eligiblePaymentMethods(
      this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? eligibilityMessage,
          bool? isEligible,
          String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Query$GetOrderByCode {
  Variables$Query$GetOrderByCode({required this.code});

  @override
  factory Variables$Query$GetOrderByCode.fromJson(Map<String, dynamic> json) =>
      _$Variables$Query$GetOrderByCodeFromJson(json);

  final String code;

  Map<String, dynamic> toJson() => _$Variables$Query$GetOrderByCodeToJson(this);
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Query$GetOrderByCode) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    return true;
  }

  CopyWith$Variables$Query$GetOrderByCode<Variables$Query$GetOrderByCode>
      get copyWith => CopyWith$Variables$Query$GetOrderByCode(this, (i) => i);
}

abstract class CopyWith$Variables$Query$GetOrderByCode<TRes> {
  factory CopyWith$Variables$Query$GetOrderByCode(
          Variables$Query$GetOrderByCode instance,
          TRes Function(Variables$Query$GetOrderByCode) then) =
      _CopyWithImpl$Variables$Query$GetOrderByCode;

  factory CopyWith$Variables$Query$GetOrderByCode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetOrderByCode;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Query$GetOrderByCode<TRes>
    implements CopyWith$Variables$Query$GetOrderByCode<TRes> {
  _CopyWithImpl$Variables$Query$GetOrderByCode(this._instance, this._then);

  final Variables$Query$GetOrderByCode _instance;

  final TRes Function(Variables$Query$GetOrderByCode) _then;

  static const _undefined = {};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Query$GetOrderByCode(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String)));
}

class _CopyWithStubImpl$Variables$Query$GetOrderByCode<TRes>
    implements CopyWith$Variables$Query$GetOrderByCode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetOrderByCode(this._res);

  TRes _res;

  call({String? code}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode {
  Query$GetOrderByCode({this.orderByCode, required this.$__typename});

  @override
  factory Query$GetOrderByCode.fromJson(Map<String, dynamic> json) =>
      _$Query$GetOrderByCodeFromJson(json);

  final Query$GetOrderByCode$orderByCode? orderByCode;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Query$GetOrderByCodeToJson(this);
  int get hashCode {
    final l$orderByCode = orderByCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$orderByCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode) || runtimeType != other.runtimeType)
      return false;
    final l$orderByCode = orderByCode;
    final lOther$orderByCode = other.orderByCode;
    if (l$orderByCode != lOther$orderByCode) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderByCode on Query$GetOrderByCode {
  CopyWith$Query$GetOrderByCode<Query$GetOrderByCode> get copyWith =>
      CopyWith$Query$GetOrderByCode(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode<TRes> {
  factory CopyWith$Query$GetOrderByCode(Query$GetOrderByCode instance,
          TRes Function(Query$GetOrderByCode) then) =
      _CopyWithImpl$Query$GetOrderByCode;

  factory CopyWith$Query$GetOrderByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode;

  TRes call(
      {Query$GetOrderByCode$orderByCode? orderByCode, String? $__typename});
  CopyWith$Query$GetOrderByCode$orderByCode<TRes> get orderByCode;
}

class _CopyWithImpl$Query$GetOrderByCode<TRes>
    implements CopyWith$Query$GetOrderByCode<TRes> {
  _CopyWithImpl$Query$GetOrderByCode(this._instance, this._then);

  final Query$GetOrderByCode _instance;

  final TRes Function(Query$GetOrderByCode) _then;

  static const _undefined = {};

  TRes call(
          {Object? orderByCode = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode(
          orderByCode: orderByCode == _undefined
              ? _instance.orderByCode
              : (orderByCode as Query$GetOrderByCode$orderByCode?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetOrderByCode$orderByCode<TRes> get orderByCode {
    final local$orderByCode = _instance.orderByCode;
    return local$orderByCode == null
        ? CopyWith$Query$GetOrderByCode$orderByCode.stub(_then(_instance))
        : CopyWith$Query$GetOrderByCode$orderByCode(
            local$orderByCode, (e) => call(orderByCode: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderByCode<TRes>
    implements CopyWith$Query$GetOrderByCode<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode(this._res);

  TRes _res;

  call({Query$GetOrderByCode$orderByCode? orderByCode, String? $__typename}) =>
      _res;
  CopyWith$Query$GetOrderByCode$orderByCode<TRes> get orderByCode =>
      CopyWith$Query$GetOrderByCode$orderByCode.stub(_res);
}

const documentNodeQueryGetOrderByCode = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetOrderByCode'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'code')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'orderByCode'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'code'),
                  value: VariableNode(name: NameNode(value: 'code')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FieldNode(
                  name: NameNode(value: 'updatedAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'customer'),
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
                        name: NameNode(value: 'emailAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'firstName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'lastName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'user'),
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
                              name: NameNode(value: 'identifier'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'verified'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
  fragmentDefinitionCart,
  fragmentDefinitionAsset,
]);
Query$GetOrderByCode _parserFn$Query$GetOrderByCode(
        Map<String, dynamic> data) =>
    Query$GetOrderByCode.fromJson(data);

class Options$Query$GetOrderByCode
    extends graphql.QueryOptions<Query$GetOrderByCode> {
  Options$Query$GetOrderByCode(
      {String? operationName,
      required Variables$Query$GetOrderByCode variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: documentNodeQueryGetOrderByCode,
            parserFn: _parserFn$Query$GetOrderByCode);
}

class WatchOptions$Query$GetOrderByCode
    extends graphql.WatchQueryOptions<Query$GetOrderByCode> {
  WatchOptions$Query$GetOrderByCode(
      {String? operationName,
      required Variables$Query$GetOrderByCode variables,
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
            document: documentNodeQueryGetOrderByCode,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Query$GetOrderByCode);
}

class FetchMoreOptions$Query$GetOrderByCode extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrderByCode(
      {required graphql.UpdateQuery updateQuery,
      required Variables$Query$GetOrderByCode variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: documentNodeQueryGetOrderByCode);
}

extension ClientExtension$Query$GetOrderByCode on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrderByCode>> query$GetOrderByCode(
          Options$Query$GetOrderByCode options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetOrderByCode> watchQuery$GetOrderByCode(
          WatchOptions$Query$GetOrderByCode options) =>
      this.watchQuery(options);
  void writeQuery$GetOrderByCode(
          {required Query$GetOrderByCode data,
          required Variables$Query$GetOrderByCode variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: documentNodeQueryGetOrderByCode),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  Query$GetOrderByCode? readQuery$GetOrderByCode(
      {required Variables$Query$GetOrderByCode variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetOrderByCode),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : Query$GetOrderByCode.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetOrderByCode> useQuery$GetOrderByCode(
        Options$Query$GetOrderByCode options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetOrderByCode> useWatchQuery$GetOrderByCode(
        WatchOptions$Query$GetOrderByCode options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetOrderByCode$Widget
    extends graphql_flutter.Query<Query$GetOrderByCode> {
  Query$GetOrderByCode$Widget(
      {widgets.Key? key,
      required Options$Query$GetOrderByCode options,
      required graphql_flutter.QueryBuilder<Query$GetOrderByCode> builder})
      : super(key: key, options: options, builder: builder);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode implements Fragment$Cart {
  Query$GetOrderByCode$orderByCode(
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
      required this.$__typename,
      required this.updatedAt,
      this.customer});

  @override
  factory Query$GetOrderByCode$orderByCode.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCodeFromJson(json);

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Query$GetOrderByCode$orderByCode$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Query$GetOrderByCode$orderByCode$shippingLines> shippingLines;

  final List<Query$GetOrderByCode$orderByCode$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  final String updatedAt;

  final Query$GetOrderByCode$orderByCode$customer? customer;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCodeToJson(this);
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
    final l$updatedAt = updatedAt;
    final l$customer = customer;
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
      l$$__typename,
      l$updatedAt,
      l$customer
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode$orderByCode) ||
        runtimeType != other.runtimeType) return false;
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$customer = customer;
    final lOther$customer = other.customer;
    if (l$customer != lOther$customer) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderByCode$orderByCode
    on Query$GetOrderByCode$orderByCode {
  CopyWith$Query$GetOrderByCode$orderByCode<Query$GetOrderByCode$orderByCode>
      get copyWith => CopyWith$Query$GetOrderByCode$orderByCode(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode(
          Query$GetOrderByCode$orderByCode instance,
          TRes Function(Query$GetOrderByCode$orderByCode) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode;

  factory CopyWith$Query$GetOrderByCode$orderByCode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode;

  TRes call(
      {String? id,
      String? code,
      String? state,
      bool? active,
      List<Query$GetOrderByCode$orderByCode$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Query$GetOrderByCode$orderByCode$shippingLines>? shippingLines,
      List<Query$GetOrderByCode$orderByCode$discounts>? discounts,
      String? $__typename,
      String? updatedAt,
      Query$GetOrderByCode$orderByCode$customer? customer});
  TRes lines(
      Iterable<Query$GetOrderByCode$orderByCode$lines> Function(
              Iterable<
                  CopyWith$Query$GetOrderByCode$orderByCode$lines<
                      Query$GetOrderByCode$orderByCode$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Query$GetOrderByCode$orderByCode$shippingLines> Function(
              Iterable<
                  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<
                      Query$GetOrderByCode$orderByCode$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Query$GetOrderByCode$orderByCode$discounts> Function(
              Iterable<
                  CopyWith$Query$GetOrderByCode$orderByCode$discounts<
                      Query$GetOrderByCode$orderByCode$discounts>>)
          _fn);
  CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> get customer;
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode(this._instance, this._then);

  final Query$GetOrderByCode$orderByCode _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode) _then;

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
          Object? $__typename = _undefined,
          Object? updatedAt = _undefined,
          Object? customer = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode(
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
              : (lines as List<Query$GetOrderByCode$orderByCode$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null
              ? _instance.shippingLines
              : (shippingLines as List<Query$GetOrderByCode$orderByCode$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Query$GetOrderByCode$orderByCode$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String),
          updatedAt: updatedAt == _undefined || updatedAt == null ? _instance.updatedAt : (updatedAt as String),
          customer: customer == _undefined ? _instance.customer : (customer as Query$GetOrderByCode$orderByCode$customer?)));
  TRes lines(
          Iterable<Query$GetOrderByCode$orderByCode$lines> Function(
                  Iterable<
                      CopyWith$Query$GetOrderByCode$orderByCode$lines<
                          Query$GetOrderByCode$orderByCode$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
                  CopyWith$Query$GetOrderByCode$orderByCode$lines(e, (i) => i)))
              .toList());
  TRes shippingLines(
          Iterable<Query$GetOrderByCode$orderByCode$shippingLines> Function(
                  Iterable<
                      CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<
                          Query$GetOrderByCode$orderByCode$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Query$GetOrderByCode$orderByCode$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Query$GetOrderByCode$orderByCode$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetOrderByCode$orderByCode$discounts<
                          Query$GetOrderByCode$orderByCode$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetOrderByCode$orderByCode$discounts(
                  e, (i) => i))).toList());
  CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> get customer {
    final local$customer = _instance.customer;
    return local$customer == null
        ? CopyWith$Query$GetOrderByCode$orderByCode$customer.stub(
            _then(_instance))
        : CopyWith$Query$GetOrderByCode$orderByCode$customer(
            local$customer, (e) => call(customer: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode(this._res);

  TRes _res;

  call(
          {String? id,
          String? code,
          String? state,
          bool? active,
          List<Query$GetOrderByCode$orderByCode$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Query$GetOrderByCode$orderByCode$shippingLines>? shippingLines,
          List<Query$GetOrderByCode$orderByCode$discounts>? discounts,
          String? $__typename,
          String? updatedAt,
          Query$GetOrderByCode$orderByCode$customer? customer}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> get customer =>
      CopyWith$Query$GetOrderByCode$orderByCode$customer.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode$lines implements Fragment$Cart$lines {
  Query$GetOrderByCode$orderByCode$lines(
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
  factory Query$GetOrderByCode$orderByCode$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Query$GetOrderByCode$orderByCode$lines$productVariant productVariant;

  final List<Query$GetOrderByCode$orderByCode$lines$discounts> discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$linesToJson(this);
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
    if (!(other is Query$GetOrderByCode$orderByCode$lines) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$lines
    on Query$GetOrderByCode$orderByCode$lines {
  CopyWith$Query$GetOrderByCode$orderByCode$lines<
          Query$GetOrderByCode$orderByCode$lines>
      get copyWith =>
          CopyWith$Query$GetOrderByCode$orderByCode$lines(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$lines<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$lines(
          Query$GetOrderByCode$orderByCode$lines instance,
          TRes Function(Query$GetOrderByCode$orderByCode$lines) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines;

  factory CopyWith$Query$GetOrderByCode$orderByCode$lines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Query$GetOrderByCode$orderByCode$lines$productVariant? productVariant,
      List<Query$GetOrderByCode$orderByCode$lines$discounts>? discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes>
      get productVariant;
  TRes discounts(
      Iterable<Query$GetOrderByCode$orderByCode$lines$discounts> Function(
              Iterable<
                  CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<
                      Query$GetOrderByCode$orderByCode$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$lines<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$lines _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$lines) _then;

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
      _then(Query$GetOrderByCode$orderByCode$lines(
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
                  as Query$GetOrderByCode$orderByCode$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Query$GetOrderByCode$orderByCode$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes>
      get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Query$GetOrderByCode$orderByCode$lines$discounts> Function(
                  Iterable<
                      CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<
                          Query$GetOrderByCode$orderByCode$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$lines<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines(this._res);

  TRes _res;

  call(
          {String? id,
          Fragment$Asset? featuredAsset,
          int? unitPrice,
          int? unitPriceWithTax,
          int? quantity,
          int? linePriceWithTax,
          int? discountedLinePriceWithTax,
          Query$GetOrderByCode$orderByCode$lines$productVariant? productVariant,
          List<Query$GetOrderByCode$orderByCode$lines$discounts>? discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes>
      get productVariant =>
          CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant.stub(
              _res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Query$GetOrderByCode$orderByCode$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$lines$productVariantFromJson(json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$lines$productVariantToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode$orderByCode$lines$productVariant) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$lines$productVariant
    on Query$GetOrderByCode$orderByCode$lines$productVariant {
  CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<
          Query$GetOrderByCode$orderByCode$lines$productVariant>
      get copyWith =>
          CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<
    TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant(
          Query$GetOrderByCode$orderByCode$lines$productVariant instance,
          TRes Function(Query$GetOrderByCode$orderByCode$lines$productVariant)
              then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$productVariant;

  factory CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes>
    implements
        CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$productVariant(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$lines$productVariant _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$productVariant<
        TRes>
    implements
        CopyWith$Query$GetOrderByCode$orderByCode$lines$productVariant<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Query$GetOrderByCode$orderByCode$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$lines$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$lines$discountsToJson(this);
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
    if (!(other is Query$GetOrderByCode$orderByCode$lines$discounts) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$lines$discounts
    on Query$GetOrderByCode$orderByCode$lines$discounts {
  CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<
          Query$GetOrderByCode$orderByCode$lines$discounts>
      get copyWith => CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts(
          this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts(
          Query$GetOrderByCode$orderByCode$lines$discounts instance,
          TRes Function(Query$GetOrderByCode$orderByCode$lines$discounts)
              then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$discounts;

  factory CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$discounts<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$lines$discounts(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$lines$discounts _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$lines$discounts(
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

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$discounts<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$lines$discounts<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$lines$discounts(this._res);

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
class Query$GetOrderByCode$orderByCode$shippingLines
    implements Fragment$Cart$shippingLines {
  Query$GetOrderByCode$orderByCode$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$shippingLinesFromJson(json);

  final int priceWithTax;

  final Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$shippingLinesToJson(this);
  int get hashCode {
    final l$priceWithTax = priceWithTax;
    final l$shippingMethod = shippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priceWithTax, l$shippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode$orderByCode$shippingLines) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$shippingLines
    on Query$GetOrderByCode$orderByCode$shippingLines {
  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<
          Query$GetOrderByCode$orderByCode$shippingLines>
      get copyWith => CopyWith$Query$GetOrderByCode$orderByCode$shippingLines(
          this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$shippingLines(
          Query$GetOrderByCode$orderByCode$shippingLines instance,
          TRes Function(Query$GetOrderByCode$orderByCode$shippingLines) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines;

  factory CopyWith$Query$GetOrderByCode$orderByCode$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines;

  TRes call(
      {int? priceWithTax,
      Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<TRes>
      get shippingMethod;
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$shippingLines _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<TRes>
      get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$shippingLines<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines(this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<TRes>
      get shippingMethod =>
          CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethodToJson(
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
            is Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod
    on Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod {
  CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
          Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
          Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod instance,
          TRes Function(
                  Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod;

  factory CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod _instance;

  final TRes Function(
      Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$shippingLines$shippingMethod(
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
class Query$GetOrderByCode$orderByCode$discounts
    implements Fragment$Cart$discounts {
  Query$GetOrderByCode$orderByCode$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$discountsToJson(this);
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
    if (!(other is Query$GetOrderByCode$orderByCode$discounts) ||
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

extension UtilityExtension$Query$GetOrderByCode$orderByCode$discounts
    on Query$GetOrderByCode$orderByCode$discounts {
  CopyWith$Query$GetOrderByCode$orderByCode$discounts<
          Query$GetOrderByCode$orderByCode$discounts>
      get copyWith =>
          CopyWith$Query$GetOrderByCode$orderByCode$discounts(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$discounts<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$discounts(
          Query$GetOrderByCode$orderByCode$discounts instance,
          TRes Function(Query$GetOrderByCode$orderByCode$discounts) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$discounts;

  factory CopyWith$Query$GetOrderByCode$orderByCode$discounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$discounts<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$discounts<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$discounts(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$discounts _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$discounts(
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

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$discounts<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$discounts<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$discounts(this._res);

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
class Query$GetOrderByCode$orderByCode$customer {
  Query$GetOrderByCode$orderByCode$customer(
      {required this.id,
      required this.emailAddress,
      required this.firstName,
      required this.lastName,
      this.user,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$customer.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$customerFromJson(json);

  final String id;

  final String emailAddress;

  final String firstName;

  final String lastName;

  final Query$GetOrderByCode$orderByCode$customer$user? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$customerToJson(this);
  int get hashCode {
    final l$id = id;
    final l$emailAddress = emailAddress;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$emailAddress, l$firstName, l$lastName, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode$orderByCode$customer) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderByCode$orderByCode$customer
    on Query$GetOrderByCode$orderByCode$customer {
  CopyWith$Query$GetOrderByCode$orderByCode$customer<
          Query$GetOrderByCode$orderByCode$customer>
      get copyWith =>
          CopyWith$Query$GetOrderByCode$orderByCode$customer(this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$customer(
          Query$GetOrderByCode$orderByCode$customer instance,
          TRes Function(Query$GetOrderByCode$orderByCode$customer) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer;

  factory CopyWith$Query$GetOrderByCode$orderByCode$customer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer;

  TRes call(
      {String? id,
      String? emailAddress,
      String? firstName,
      String? lastName,
      Query$GetOrderByCode$orderByCode$customer$user? user,
      String? $__typename});
  CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> get user;
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$customer _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$customer) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? emailAddress = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? user = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$customer(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          emailAddress: emailAddress == _undefined || emailAddress == null
              ? _instance.emailAddress
              : (emailAddress as String),
          firstName: firstName == _undefined || firstName == null
              ? _instance.firstName
              : (firstName as String),
          lastName: lastName == _undefined || lastName == null
              ? _instance.lastName
              : (lastName as String),
          user: user == _undefined
              ? _instance.user
              : (user as Query$GetOrderByCode$orderByCode$customer$user?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetOrderByCode$orderByCode$customer$user.stub(
            _then(_instance))
        : CopyWith$Query$GetOrderByCode$orderByCode$customer$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$customer<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer(this._res);

  TRes _res;

  call(
          {String? id,
          String? emailAddress,
          String? firstName,
          String? lastName,
          Query$GetOrderByCode$orderByCode$customer$user? user,
          String? $__typename}) =>
      _res;
  CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> get user =>
      CopyWith$Query$GetOrderByCode$orderByCode$customer$user.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Query$GetOrderByCode$orderByCode$customer$user {
  Query$GetOrderByCode$orderByCode$customer$user(
      {required this.id,
      required this.identifier,
      required this.verified,
      required this.$__typename});

  @override
  factory Query$GetOrderByCode$orderByCode$customer$user.fromJson(
          Map<String, dynamic> json) =>
      _$Query$GetOrderByCode$orderByCode$customer$userFromJson(json);

  final String id;

  final String identifier;

  final bool verified;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Query$GetOrderByCode$orderByCode$customer$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$identifier = identifier;
    final l$verified = verified;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$identifier, l$verified, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Query$GetOrderByCode$orderByCode$customer$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$identifier = identifier;
    final lOther$identifier = other.identifier;
    if (l$identifier != lOther$identifier) return false;
    final l$verified = verified;
    final lOther$verified = other.verified;
    if (l$verified != lOther$verified) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Query$GetOrderByCode$orderByCode$customer$user
    on Query$GetOrderByCode$orderByCode$customer$user {
  CopyWith$Query$GetOrderByCode$orderByCode$customer$user<
          Query$GetOrderByCode$orderByCode$customer$user>
      get copyWith => CopyWith$Query$GetOrderByCode$orderByCode$customer$user(
          this, (i) => i);
}

abstract class CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> {
  factory CopyWith$Query$GetOrderByCode$orderByCode$customer$user(
          Query$GetOrderByCode$orderByCode$customer$user instance,
          TRes Function(Query$GetOrderByCode$orderByCode$customer$user) then) =
      _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer$user;

  factory CopyWith$Query$GetOrderByCode$orderByCode$customer$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer$user;

  TRes call(
      {String? id, String? identifier, bool? verified, String? $__typename});
}

class _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer$user<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> {
  _CopyWithImpl$Query$GetOrderByCode$orderByCode$customer$user(
      this._instance, this._then);

  final Query$GetOrderByCode$orderByCode$customer$user _instance;

  final TRes Function(Query$GetOrderByCode$orderByCode$customer$user) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? identifier = _undefined,
          Object? verified = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Query$GetOrderByCode$orderByCode$customer$user(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          identifier: identifier == _undefined || identifier == null
              ? _instance.identifier
              : (identifier as String),
          verified: verified == _undefined || verified == null
              ? _instance.verified
              : (verified as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer$user<TRes>
    implements CopyWith$Query$GetOrderByCode$orderByCode$customer$user<TRes> {
  _CopyWithStubImpl$Query$GetOrderByCode$orderByCode$customer$user(this._res);

  TRes _res;

  call({String? id, String? identifier, bool? verified, String? $__typename}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$AddPayment {
  Variables$Mutation$AddPayment({required this.input});

  @override
  factory Variables$Mutation$AddPayment.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$AddPaymentFromJson(json);

  final Input$PaymentInput input;

  Map<String, dynamic> toJson() => _$Variables$Mutation$AddPaymentToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$AddPayment) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$AddPayment<Variables$Mutation$AddPayment>
      get copyWith => CopyWith$Variables$Mutation$AddPayment(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$AddPayment<TRes> {
  factory CopyWith$Variables$Mutation$AddPayment(
          Variables$Mutation$AddPayment instance,
          TRes Function(Variables$Mutation$AddPayment) then) =
      _CopyWithImpl$Variables$Mutation$AddPayment;

  factory CopyWith$Variables$Mutation$AddPayment.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddPayment;

  TRes call({Input$PaymentInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddPayment<TRes>
    implements CopyWith$Variables$Mutation$AddPayment<TRes> {
  _CopyWithImpl$Variables$Mutation$AddPayment(this._instance, this._then);

  final Variables$Mutation$AddPayment _instance;

  final TRes Function(Variables$Mutation$AddPayment) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$AddPayment(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$PaymentInput)));
}

class _CopyWithStubImpl$Variables$Mutation$AddPayment<TRes>
    implements CopyWith$Variables$Mutation$AddPayment<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddPayment(this._res);

  TRes _res;

  call({Input$PaymentInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment {
  Mutation$AddPayment(
      {required this.addPaymentToOrder, required this.$__typename});

  @override
  factory Mutation$AddPayment.fromJson(Map<String, dynamic> json) =>
      _$Mutation$AddPaymentFromJson(json);

  final Mutation$AddPayment$addPaymentToOrder addPaymentToOrder;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$AddPaymentToJson(this);
  int get hashCode {
    final l$addPaymentToOrder = addPaymentToOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addPaymentToOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddPayment) || runtimeType != other.runtimeType)
      return false;
    final l$addPaymentToOrder = addPaymentToOrder;
    final lOther$addPaymentToOrder = other.addPaymentToOrder;
    if (l$addPaymentToOrder != lOther$addPaymentToOrder) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddPayment on Mutation$AddPayment {
  CopyWith$Mutation$AddPayment<Mutation$AddPayment> get copyWith =>
      CopyWith$Mutation$AddPayment(this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment<TRes> {
  factory CopyWith$Mutation$AddPayment(Mutation$AddPayment instance,
          TRes Function(Mutation$AddPayment) then) =
      _CopyWithImpl$Mutation$AddPayment;

  factory CopyWith$Mutation$AddPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment;

  TRes call(
      {Mutation$AddPayment$addPaymentToOrder? addPaymentToOrder,
      String? $__typename});
  CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> get addPaymentToOrder;
}

class _CopyWithImpl$Mutation$AddPayment<TRes>
    implements CopyWith$Mutation$AddPayment<TRes> {
  _CopyWithImpl$Mutation$AddPayment(this._instance, this._then);

  final Mutation$AddPayment _instance;

  final TRes Function(Mutation$AddPayment) _then;

  static const _undefined = {};

  TRes call(
          {Object? addPaymentToOrder = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment(
          addPaymentToOrder: addPaymentToOrder == _undefined ||
                  addPaymentToOrder == null
              ? _instance.addPaymentToOrder
              : (addPaymentToOrder as Mutation$AddPayment$addPaymentToOrder),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> get addPaymentToOrder {
    final local$addPaymentToOrder = _instance.addPaymentToOrder;
    return CopyWith$Mutation$AddPayment$addPaymentToOrder(
        local$addPaymentToOrder, (e) => call(addPaymentToOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$AddPayment<TRes>
    implements CopyWith$Mutation$AddPayment<TRes> {
  _CopyWithStubImpl$Mutation$AddPayment(this._res);

  TRes _res;

  call(
          {Mutation$AddPayment$addPaymentToOrder? addPaymentToOrder,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> get addPaymentToOrder =>
      CopyWith$Mutation$AddPayment$addPaymentToOrder.stub(_res);
}

const documentNodeMutationAddPayment = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddPayment'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'PaymentInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'addPaymentToOrder'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
Mutation$AddPayment _parserFn$Mutation$AddPayment(Map<String, dynamic> data) =>
    Mutation$AddPayment.fromJson(data);
typedef OnMutationCompleted$Mutation$AddPayment = FutureOr<void> Function(
    dynamic, Mutation$AddPayment?);

class Options$Mutation$AddPayment
    extends graphql.MutationOptions<Mutation$AddPayment> {
  Options$Mutation$AddPayment(
      {String? operationName,
      required Variables$Mutation$AddPayment variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AddPayment? onCompleted,
      graphql.OnMutationUpdate<Mutation$AddPayment>? update,
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
                    data == null ? null : _parserFn$Mutation$AddPayment(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAddPayment,
            parserFn: _parserFn$Mutation$AddPayment);

  final OnMutationCompleted$Mutation$AddPayment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$AddPayment
    extends graphql.WatchQueryOptions<Mutation$AddPayment> {
  WatchOptions$Mutation$AddPayment(
      {String? operationName,
      required Variables$Mutation$AddPayment variables,
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
            document: documentNodeMutationAddPayment,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$AddPayment);
}

extension ClientExtension$Mutation$AddPayment on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddPayment>> mutate$AddPayment(
          Options$Mutation$AddPayment options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddPayment> watchMutation$AddPayment(
          WatchOptions$Mutation$AddPayment options) =>
      this.watchMutation(options);
}

class Mutation$AddPayment$HookResult {
  Mutation$AddPayment$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$AddPayment runMutation;

  final graphql.QueryResult<Mutation$AddPayment> result;
}

Mutation$AddPayment$HookResult useMutation$AddPayment(
    [WidgetOptions$Mutation$AddPayment? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddPayment());
  return Mutation$AddPayment$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddPayment> useWatchMutation$AddPayment(
        WatchOptions$Mutation$AddPayment options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddPayment
    extends graphql.MutationOptions<Mutation$AddPayment> {
  WidgetOptions$Mutation$AddPayment(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$AddPayment? onCompleted,
      graphql.OnMutationUpdate<Mutation$AddPayment>? update,
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
                    data == null ? null : _parserFn$Mutation$AddPayment(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAddPayment,
            parserFn: _parserFn$Mutation$AddPayment);

  final OnMutationCompleted$Mutation$AddPayment? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$AddPayment
    = graphql.MultiSourceResult<Mutation$AddPayment>
        Function(Variables$Mutation$AddPayment, {Object? optimisticResult});
typedef Builder$Mutation$AddPayment = widgets.Widget Function(
    RunMutation$Mutation$AddPayment, graphql.QueryResult<Mutation$AddPayment>?);

class Mutation$AddPayment$Widget
    extends graphql_flutter.Mutation<Mutation$AddPayment> {
  Mutation$AddPayment$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$AddPayment? options,
      required Builder$Mutation$AddPayment builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$AddPayment(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder({required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$AddPayment$addPaymentToOrder$$Order.fromJson(json);
      case "IneligiblePaymentMethodError":
        return Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
            .fromJson(json);
      case "NoActiveOrderError":
        return Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError
            .fromJson(json);
      case "OrderPaymentStateError":
        return Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError
            .fromJson(json);
      case "OrderStateTransitionError":
        return Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
            .fromJson(json);
      case "PaymentDeclinedError":
        return Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError
            .fromJson(json);
      case "PaymentFailedError":
        return Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError
            .fromJson(json);
      default:
        return _$Mutation$AddPayment$addPaymentToOrderFromJson(json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrderToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddPayment$addPaymentToOrder) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder
    on Mutation$AddPayment$addPaymentToOrder {
  CopyWith$Mutation$AddPayment$addPaymentToOrder<
          Mutation$AddPayment$addPaymentToOrder>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder(this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder(
          Mutation$AddPayment$addPaymentToOrder instance,
          TRes Function(Mutation$AddPayment$addPaymentToOrder) then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder<TRes>
    implements CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder<TRes>
    implements CopyWith$Mutation$AddPayment$addPaymentToOrder<TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$Order
    implements Fragment$Cart, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$Order(
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
  factory Mutation$AddPayment$addPaymentToOrder$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$AddPayment$addPaymentToOrder$$Order$lines> lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>
      shippingLines;

  final List<Mutation$AddPayment$addPaymentToOrder$$Order$discounts> discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderToJson(this);
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
    if (!(other is Mutation$AddPayment$addPaymentToOrder$$Order) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order
    on Mutation$AddPayment$addPaymentToOrder$$Order {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order<
          Mutation$AddPayment$addPaymentToOrder$$Order>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order(this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order<TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order(
          Mutation$AddPayment$addPaymentToOrder$$Order instance,
          TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order) then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$AddPayment$addPaymentToOrder$$Order$lines>? lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>?
          shippingLines,
      List<Mutation$AddPayment$addPaymentToOrder$$Order$discounts>? discounts});
  TRes lines(
      Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<
                      Mutation$AddPayment$addPaymentToOrder$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
                      Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<
                      Mutation$AddPayment$addPaymentToOrder$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order<TRes>
    implements CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order<TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order) _then;

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
      _then(Mutation$AddPayment$addPaymentToOrder$$Order(
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
              : (lines
                  as List<Mutation$AddPayment$addPaymentToOrder$$Order$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$AddPayment$addPaymentToOrder$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<
                          Mutation$AddPayment$addPaymentToOrder$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
                          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<
                          Mutation$AddPayment$addPaymentToOrder$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order<TRes>
    implements CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order<TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order(this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$AddPayment$addPaymentToOrder$$Order$lines>? lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>?
              shippingLines,
          List<Mutation$AddPayment$addPaymentToOrder$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$AddPayment$addPaymentToOrder$$Order$lines(
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
  factory Mutation$AddPayment$addPaymentToOrder$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$linesFromJson(json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
      productVariant;

  final List<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$linesToJson(this);
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
    if (!(other is Mutation$AddPayment$addPaymentToOrder$$Order$lines) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$lines
    on Mutation$AddPayment$addPaymentToOrder$$Order$lines {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<
          Mutation$AddPayment$addPaymentToOrder$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines(
          Mutation$AddPayment$addPaymentToOrder$$Order$lines instance,
          TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant?
          productVariant,
      List<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
                      Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines<TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$lines _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order$lines) _then;

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
      _then(Mutation$AddPayment$addPaymentToOrder$$Order$lines(
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
                  as Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
                          Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines<TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines<TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines(
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
          Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant?
              productVariant,
          List<Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariantToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
    on Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
          Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
          Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant
      _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discountsFromJson(
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
      _$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discountsToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts
    on Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
          Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
          Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$lines$discounts(
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
class Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLinesToJson(this);
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
            is Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines
    on Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines) _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
    on Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$shippingLines$shippingMethod(
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
class Mutation$AddPayment$addPaymentToOrder$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$discountsFromJson(json);

  final int amount;

  final int amountWithTax;

  final String description;

  final String adjustmentSource;

  @JsonKey(unknownEnumValue: Enum$AdjustmentType.$unknown)
  final Enum$AdjustmentType type;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$Order$discountsToJson(this);
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
    if (!(other is Mutation$AddPayment$addPaymentToOrder$$Order$discounts) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$Order$discounts
    on Mutation$AddPayment$addPaymentToOrder$$Order$discounts {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<
          Mutation$AddPayment$addPaymentToOrder$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
          Mutation$AddPayment$addPaymentToOrder$$Order$discounts instance,
          TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$Order$discounts _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder$$Order$discounts)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$Order$discounts<TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$Order$discounts(
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
class Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodErrorToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
    on Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
          Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
          Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
              instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError
      _instance;

  final TRes Function(
          Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$IneligiblePaymentMethodError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError
    on Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
          Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
          Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$NoActiveOrderError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateErrorToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError
    on Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
          Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
          Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderPaymentStateError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionErrorToJson(
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
            is Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
    on Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
          Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
          Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError
      _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$OrderStateTransitionError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedErrorToJson(this);
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
            is Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError
    on Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
          Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
          Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError _instance;

  final TRes Function(
      Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError) _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentDeclinedError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError
    implements Fragment$ErrorResult, Mutation$AddPayment$addPaymentToOrder {
  Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedErrorFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedErrorToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    final l$errorCode = errorCode;
    final l$message = message;
    return Object.hashAll([l$$__typename, l$errorCode, l$message]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError) ||
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

extension UtilityExtension$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError
    on Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError {
  CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
          Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError>
      get copyWith =>
          CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
    TRes> {
  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
          Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError instance,
          TRes Function(
                  Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError)
              then) =
      _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError;

  factory CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
            TRes> {
  _CopyWithImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
      this._instance, this._then);

  final Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError _instance;

  final TRes Function(Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
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

class _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
        TRes>
    implements
        CopyWith$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError<
            TRes> {
  _CopyWithStubImpl$Mutation$AddPayment$addPaymentToOrder$$PaymentFailedError(
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
      case "InsufficientStockError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$InsufficientStockError
            .fromJson(json);
      case "NegativeQuantityError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$NegativeQuantityError
            .fromJson(json);
      case "OrderLimitError":
        return Mutation$AdjustOrderLine$adjustOrderLine$$OrderLimitError
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

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$SetShippingAddress {
  Variables$Mutation$SetShippingAddress({required this.input});

  @override
  factory Variables$Mutation$SetShippingAddress.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$SetShippingAddressFromJson(json);

  final Input$CreateAddressInput input;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$SetShippingAddressToJson(this);
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$SetShippingAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) return false;
    return true;
  }

  CopyWith$Variables$Mutation$SetShippingAddress<
          Variables$Mutation$SetShippingAddress>
      get copyWith =>
          CopyWith$Variables$Mutation$SetShippingAddress(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$SetShippingAddress<TRes> {
  factory CopyWith$Variables$Mutation$SetShippingAddress(
          Variables$Mutation$SetShippingAddress instance,
          TRes Function(Variables$Mutation$SetShippingAddress) then) =
      _CopyWithImpl$Variables$Mutation$SetShippingAddress;

  factory CopyWith$Variables$Mutation$SetShippingAddress.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetShippingAddress;

  TRes call({Input$CreateAddressInput? input});
}

class _CopyWithImpl$Variables$Mutation$SetShippingAddress<TRes>
    implements CopyWith$Variables$Mutation$SetShippingAddress<TRes> {
  _CopyWithImpl$Variables$Mutation$SetShippingAddress(
      this._instance, this._then);

  final Variables$Mutation$SetShippingAddress _instance;

  final TRes Function(Variables$Mutation$SetShippingAddress) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SetShippingAddress(
          input: input == _undefined || input == null
              ? _instance.input
              : (input as Input$CreateAddressInput)));
}

class _CopyWithStubImpl$Variables$Mutation$SetShippingAddress<TRes>
    implements CopyWith$Variables$Mutation$SetShippingAddress<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetShippingAddress(this._res);

  TRes _res;

  call({Input$CreateAddressInput? input}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress {
  Mutation$SetShippingAddress(
      {required this.setOrderShippingAddress, required this.$__typename});

  @override
  factory Mutation$SetShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddressFromJson(json);

  final Mutation$SetShippingAddress$setOrderShippingAddress
      setOrderShippingAddress;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$SetShippingAddressToJson(this);
  int get hashCode {
    final l$setOrderShippingAddress = setOrderShippingAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setOrderShippingAddress, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SetShippingAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$setOrderShippingAddress = setOrderShippingAddress;
    final lOther$setOrderShippingAddress = other.setOrderShippingAddress;
    if (l$setOrderShippingAddress != lOther$setOrderShippingAddress)
      return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SetShippingAddress
    on Mutation$SetShippingAddress {
  CopyWith$Mutation$SetShippingAddress<Mutation$SetShippingAddress>
      get copyWith => CopyWith$Mutation$SetShippingAddress(this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress<TRes> {
  factory CopyWith$Mutation$SetShippingAddress(
          Mutation$SetShippingAddress instance,
          TRes Function(Mutation$SetShippingAddress) then) =
      _CopyWithImpl$Mutation$SetShippingAddress;

  factory CopyWith$Mutation$SetShippingAddress.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress;

  TRes call(
      {Mutation$SetShippingAddress$setOrderShippingAddress?
          setOrderShippingAddress,
      String? $__typename});
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<TRes>
      get setOrderShippingAddress;
}

class _CopyWithImpl$Mutation$SetShippingAddress<TRes>
    implements CopyWith$Mutation$SetShippingAddress<TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress(this._instance, this._then);

  final Mutation$SetShippingAddress _instance;

  final TRes Function(Mutation$SetShippingAddress) _then;

  static const _undefined = {};

  TRes call(
          {Object? setOrderShippingAddress = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingAddress(
          setOrderShippingAddress: setOrderShippingAddress == _undefined ||
                  setOrderShippingAddress == null
              ? _instance.setOrderShippingAddress
              : (setOrderShippingAddress
                  as Mutation$SetShippingAddress$setOrderShippingAddress),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<TRes>
      get setOrderShippingAddress {
    final local$setOrderShippingAddress = _instance.setOrderShippingAddress;
    return CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress(
        local$setOrderShippingAddress, (e) => call(setOrderShippingAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$SetShippingAddress<TRes>
    implements CopyWith$Mutation$SetShippingAddress<TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress(this._res);

  TRes _res;

  call(
          {Mutation$SetShippingAddress$setOrderShippingAddress?
              setOrderShippingAddress,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<TRes>
      get setOrderShippingAddress =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress.stub(
              _res);
}

const documentNodeMutationSetShippingAddress = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SetShippingAddress'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'input')),
            type: NamedTypeNode(
                name: NameNode(value: 'CreateAddressInput'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'setOrderShippingAddress'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'input'),
                  value: VariableNode(name: NameNode(value: 'input')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                      on: NamedTypeNode(
                          name: NameNode(value: 'Order'), isNonNull: false)),
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'shippingAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                              name: NameNode(value: 'OrderAddress'),
                              directives: []),
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
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
  fragmentDefinitionOrderAddress,
  fragmentDefinitionErrorResult,
]);
Mutation$SetShippingAddress _parserFn$Mutation$SetShippingAddress(
        Map<String, dynamic> data) =>
    Mutation$SetShippingAddress.fromJson(data);
typedef OnMutationCompleted$Mutation$SetShippingAddress = FutureOr<void>
    Function(dynamic, Mutation$SetShippingAddress?);

class Options$Mutation$SetShippingAddress
    extends graphql.MutationOptions<Mutation$SetShippingAddress> {
  Options$Mutation$SetShippingAddress(
      {String? operationName,
      required Variables$Mutation$SetShippingAddress variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SetShippingAddress? onCompleted,
      graphql.OnMutationUpdate<Mutation$SetShippingAddress>? update,
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
                        : _parserFn$Mutation$SetShippingAddress(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSetShippingAddress,
            parserFn: _parserFn$Mutation$SetShippingAddress);

  final OnMutationCompleted$Mutation$SetShippingAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$SetShippingAddress
    extends graphql.WatchQueryOptions<Mutation$SetShippingAddress> {
  WatchOptions$Mutation$SetShippingAddress(
      {String? operationName,
      required Variables$Mutation$SetShippingAddress variables,
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
            document: documentNodeMutationSetShippingAddress,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$SetShippingAddress);
}

extension ClientExtension$Mutation$SetShippingAddress on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetShippingAddress>>
      mutate$SetShippingAddress(
              Options$Mutation$SetShippingAddress options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetShippingAddress>
      watchMutation$SetShippingAddress(
              WatchOptions$Mutation$SetShippingAddress options) =>
          this.watchMutation(options);
}

class Mutation$SetShippingAddress$HookResult {
  Mutation$SetShippingAddress$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SetShippingAddress runMutation;

  final graphql.QueryResult<Mutation$SetShippingAddress> result;
}

Mutation$SetShippingAddress$HookResult useMutation$SetShippingAddress(
    [WidgetOptions$Mutation$SetShippingAddress? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SetShippingAddress());
  return Mutation$SetShippingAddress$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SetShippingAddress>
    useWatchMutation$SetShippingAddress(
            WatchOptions$Mutation$SetShippingAddress options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SetShippingAddress
    extends graphql.MutationOptions<Mutation$SetShippingAddress> {
  WidgetOptions$Mutation$SetShippingAddress(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SetShippingAddress? onCompleted,
      graphql.OnMutationUpdate<Mutation$SetShippingAddress>? update,
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
                        : _parserFn$Mutation$SetShippingAddress(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSetShippingAddress,
            parserFn: _parserFn$Mutation$SetShippingAddress);

  final OnMutationCompleted$Mutation$SetShippingAddress? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$SetShippingAddress = graphql
        .MultiSourceResult<Mutation$SetShippingAddress>
    Function(Variables$Mutation$SetShippingAddress, {Object? optimisticResult});
typedef Builder$Mutation$SetShippingAddress = widgets.Widget Function(
    RunMutation$Mutation$SetShippingAddress,
    graphql.QueryResult<Mutation$SetShippingAddress>?);

class Mutation$SetShippingAddress$Widget
    extends graphql_flutter.Mutation<Mutation$SetShippingAddress> {
  Mutation$SetShippingAddress$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$SetShippingAddress? options,
      required Builder$Mutation$SetShippingAddress builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$SetShippingAddress(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress {
  Mutation$SetShippingAddress$setOrderShippingAddress(
      {required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$SetShippingAddress$setOrderShippingAddress$$Order
            .fromJson(json);
      case "NoActiveOrderError":
        return Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
            .fromJson(json);
      default:
        return _$Mutation$SetShippingAddress$setOrderShippingAddressFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddressToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SetShippingAddress$setOrderShippingAddress) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress
    on Mutation$SetShippingAddress$setOrderShippingAddress {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<
          Mutation$SetShippingAddress$setOrderShippingAddress>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress(
          Mutation$SetShippingAddress$setOrderShippingAddress instance,
          TRes Function(Mutation$SetShippingAddress$setOrderShippingAddress)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress<TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress _instance;

  final TRes Function(Mutation$SetShippingAddress$setOrderShippingAddress)
      _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingAddress$setOrderShippingAddress(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress<TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order
    implements
        Fragment$Cart,
        Mutation$SetShippingAddress$setOrderShippingAddress {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
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
      required this.discounts,
      this.shippingAddress});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$OrderFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>
      lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>
      shippingLines;

  final List<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>
      discounts;

  final Fragment$OrderAddress? shippingAddress;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$OrderToJson(this);
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
    final l$shippingAddress = shippingAddress;
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
      Object.hashAll(l$discounts.map((v) => v)),
      l$shippingAddress
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order) ||
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

    final l$shippingAddress = shippingAddress;
    final lOther$shippingAddress = other.shippingAddress;
    if (l$shippingAddress != lOther$shippingAddress) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>?
          lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>?
          shippingLines,
      List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>?
          discounts,
      Fragment$OrderAddress? shippingAddress});
  TRes lines(
      Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
                      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
                      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
                      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>>)
          _fn);
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress;
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order _instance;

  final TRes Function(
      Mutation$SetShippingAddress$setOrderShippingAddress$$Order) _then;

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
          Object? discounts = _undefined,
          Object? shippingAddress = _undefined}) =>
      _then(Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
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
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>),
          shippingAddress: shippingAddress == _undefined ? _instance.shippingAddress : (shippingAddress as Fragment$OrderAddress?)));
  TRes lines(
          Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
                          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
                          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
                          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
                  e, (i) => i))).toList());
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress {
    final local$shippingAddress = _instance.shippingAddress;
    return local$shippingAddress == null
        ? CopyWith$Fragment$OrderAddress.stub(_then(_instance))
        : CopyWith$Fragment$OrderAddress(
            local$shippingAddress, (e) => call(shippingAddress: e));
  }
}

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>?
              lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>?
              shippingLines,
          List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>?
              discounts,
          Fragment$OrderAddress? shippingAddress}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
  CopyWith$Fragment$OrderAddress<TRes> get shippingAddress =>
      CopyWith$Fragment$OrderAddress.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
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
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$linesFromJson(
          json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
      productVariant;

  final List<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$linesToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant?
          productVariant,
      List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
                      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines
      _instance;

  final TRes Function(
      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines) _then;

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
      _then(Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
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
                  as Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
                          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines(
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
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant?
              productVariant,
          List<Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariantToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
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

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discountsFromJson(
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
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discountsToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts)
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
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$lines$discounts(
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
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLinesToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$shippingLines$shippingMethod(
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
class Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discountsFromJson(
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
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discountsToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
    on Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts)
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
          Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$Order$discounts(
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
class Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
    implements
        Fragment$ErrorResult,
        Mutation$SetShippingAddress$setOrderShippingAddress {
  Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderErrorToJson(
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
            is Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError) ||
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

extension UtilityExtension$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
    on Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError {
  CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
          Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError>
      get copyWith =>
          CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
    TRes> {
  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
          Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
              instance,
          TRes Function(
                  Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError)
              then) =
      _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError;

  factory CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
      this._instance, this._then);

  final Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError
      _instance;

  final TRes Function(
          Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
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

class _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingAddress$setOrderShippingAddress$$NoActiveOrderError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$SetShippingMethod {
  Variables$Mutation$SetShippingMethod({required this.id});

  @override
  factory Variables$Mutation$SetShippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Variables$Mutation$SetShippingMethodFromJson(json);

  final String id;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$SetShippingMethodToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$SetShippingMethod) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }

  CopyWith$Variables$Mutation$SetShippingMethod<
          Variables$Mutation$SetShippingMethod>
      get copyWith =>
          CopyWith$Variables$Mutation$SetShippingMethod(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$SetShippingMethod<TRes> {
  factory CopyWith$Variables$Mutation$SetShippingMethod(
          Variables$Mutation$SetShippingMethod instance,
          TRes Function(Variables$Mutation$SetShippingMethod) then) =
      _CopyWithImpl$Variables$Mutation$SetShippingMethod;

  factory CopyWith$Variables$Mutation$SetShippingMethod.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetShippingMethod;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$SetShippingMethod<TRes>
    implements CopyWith$Variables$Mutation$SetShippingMethod<TRes> {
  _CopyWithImpl$Variables$Mutation$SetShippingMethod(
      this._instance, this._then);

  final Variables$Mutation$SetShippingMethod _instance;

  final TRes Function(Variables$Mutation$SetShippingMethod) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$SetShippingMethod(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Variables$Mutation$SetShippingMethod<TRes>
    implements CopyWith$Variables$Mutation$SetShippingMethod<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetShippingMethod(this._res);

  TRes _res;

  call({String? id}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod {
  Mutation$SetShippingMethod(
      {required this.setOrderShippingMethod, required this.$__typename});

  @override
  factory Mutation$SetShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethodFromJson(json);

  final Mutation$SetShippingMethod$setOrderShippingMethod
      setOrderShippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$SetShippingMethodToJson(this);
  int get hashCode {
    final l$setOrderShippingMethod = setOrderShippingMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setOrderShippingMethod, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SetShippingMethod) ||
        runtimeType != other.runtimeType) return false;
    final l$setOrderShippingMethod = setOrderShippingMethod;
    final lOther$setOrderShippingMethod = other.setOrderShippingMethod;
    if (l$setOrderShippingMethod != lOther$setOrderShippingMethod) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SetShippingMethod
    on Mutation$SetShippingMethod {
  CopyWith$Mutation$SetShippingMethod<Mutation$SetShippingMethod>
      get copyWith => CopyWith$Mutation$SetShippingMethod(this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod<TRes> {
  factory CopyWith$Mutation$SetShippingMethod(
          Mutation$SetShippingMethod instance,
          TRes Function(Mutation$SetShippingMethod) then) =
      _CopyWithImpl$Mutation$SetShippingMethod;

  factory CopyWith$Mutation$SetShippingMethod.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod;

  TRes call(
      {Mutation$SetShippingMethod$setOrderShippingMethod?
          setOrderShippingMethod,
      String? $__typename});
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<TRes>
      get setOrderShippingMethod;
}

class _CopyWithImpl$Mutation$SetShippingMethod<TRes>
    implements CopyWith$Mutation$SetShippingMethod<TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod(this._instance, this._then);

  final Mutation$SetShippingMethod _instance;

  final TRes Function(Mutation$SetShippingMethod) _then;

  static const _undefined = {};

  TRes call(
          {Object? setOrderShippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingMethod(
          setOrderShippingMethod: setOrderShippingMethod == _undefined ||
                  setOrderShippingMethod == null
              ? _instance.setOrderShippingMethod
              : (setOrderShippingMethod
                  as Mutation$SetShippingMethod$setOrderShippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<TRes>
      get setOrderShippingMethod {
    final local$setOrderShippingMethod = _instance.setOrderShippingMethod;
    return CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod(
        local$setOrderShippingMethod, (e) => call(setOrderShippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$SetShippingMethod<TRes>
    implements CopyWith$Mutation$SetShippingMethod<TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod(this._res);

  TRes _res;

  call(
          {Mutation$SetShippingMethod$setOrderShippingMethod?
              setOrderShippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<TRes>
      get setOrderShippingMethod =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod.stub(_res);
}

const documentNodeMutationSetShippingMethod = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SetShippingMethod'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'setOrderShippingMethod'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'shippingMethodId'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
Mutation$SetShippingMethod _parserFn$Mutation$SetShippingMethod(
        Map<String, dynamic> data) =>
    Mutation$SetShippingMethod.fromJson(data);
typedef OnMutationCompleted$Mutation$SetShippingMethod = FutureOr<void>
    Function(dynamic, Mutation$SetShippingMethod?);

class Options$Mutation$SetShippingMethod
    extends graphql.MutationOptions<Mutation$SetShippingMethod> {
  Options$Mutation$SetShippingMethod(
      {String? operationName,
      required Variables$Mutation$SetShippingMethod variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SetShippingMethod? onCompleted,
      graphql.OnMutationUpdate<Mutation$SetShippingMethod>? update,
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
                        : _parserFn$Mutation$SetShippingMethod(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSetShippingMethod,
            parserFn: _parserFn$Mutation$SetShippingMethod);

  final OnMutationCompleted$Mutation$SetShippingMethod? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$SetShippingMethod
    extends graphql.WatchQueryOptions<Mutation$SetShippingMethod> {
  WatchOptions$Mutation$SetShippingMethod(
      {String? operationName,
      required Variables$Mutation$SetShippingMethod variables,
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
            document: documentNodeMutationSetShippingMethod,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$SetShippingMethod);
}

extension ClientExtension$Mutation$SetShippingMethod on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetShippingMethod>>
      mutate$SetShippingMethod(
              Options$Mutation$SetShippingMethod options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetShippingMethod>
      watchMutation$SetShippingMethod(
              WatchOptions$Mutation$SetShippingMethod options) =>
          this.watchMutation(options);
}

class Mutation$SetShippingMethod$HookResult {
  Mutation$SetShippingMethod$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SetShippingMethod runMutation;

  final graphql.QueryResult<Mutation$SetShippingMethod> result;
}

Mutation$SetShippingMethod$HookResult useMutation$SetShippingMethod(
    [WidgetOptions$Mutation$SetShippingMethod? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SetShippingMethod());
  return Mutation$SetShippingMethod$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SetShippingMethod>
    useWatchMutation$SetShippingMethod(
            WatchOptions$Mutation$SetShippingMethod options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SetShippingMethod
    extends graphql.MutationOptions<Mutation$SetShippingMethod> {
  WidgetOptions$Mutation$SetShippingMethod(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$SetShippingMethod? onCompleted,
      graphql.OnMutationUpdate<Mutation$SetShippingMethod>? update,
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
                        : _parserFn$Mutation$SetShippingMethod(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationSetShippingMethod,
            parserFn: _parserFn$Mutation$SetShippingMethod);

  final OnMutationCompleted$Mutation$SetShippingMethod? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$SetShippingMethod = graphql
        .MultiSourceResult<Mutation$SetShippingMethod>
    Function(Variables$Mutation$SetShippingMethod, {Object? optimisticResult});
typedef Builder$Mutation$SetShippingMethod = widgets.Widget Function(
    RunMutation$Mutation$SetShippingMethod,
    graphql.QueryResult<Mutation$SetShippingMethod>?);

class Mutation$SetShippingMethod$Widget
    extends graphql_flutter.Mutation<Mutation$SetShippingMethod> {
  Mutation$SetShippingMethod$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$SetShippingMethod? options,
      required Builder$Mutation$SetShippingMethod builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$SetShippingMethod(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod(
      {required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$SetShippingMethod$setOrderShippingMethod$$Order
            .fromJson(json);
      case "IneligibleShippingMethodError":
        return Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
            .fromJson(json);
      case "NoActiveOrderError":
        return Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
            .fromJson(json);
      case "OrderModificationError":
        return Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
            .fromJson(json);
      default:
        return _$Mutation$SetShippingMethod$setOrderShippingMethodFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethodToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$SetShippingMethod$setOrderShippingMethod) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod
    on Mutation$SetShippingMethod$setOrderShippingMethod {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<
          Mutation$SetShippingMethod$setOrderShippingMethod>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod(
          Mutation$SetShippingMethod$setOrderShippingMethod instance,
          TRes Function(Mutation$SetShippingMethod$setOrderShippingMethod)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod<TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod _instance;

  final TRes Function(Mutation$SetShippingMethod$setOrderShippingMethod) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingMethod$setOrderShippingMethod(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod<TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod<TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order
    implements
        Fragment$Cart,
        Mutation$SetShippingMethod$setOrderShippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
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
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderFromJson(json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>
      lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>
      shippingLines;

  final List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderToJson(this);
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
    if (!(other is Mutation$SetShippingMethod$setOrderShippingMethod$$Order) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>?
          lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>?
          shippingLines,
      List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
                      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
                      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
                      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order _instance;

  final TRes Function(Mutation$SetShippingMethod$setOrderShippingMethod$$Order)
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
      _then(Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
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
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
                          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
                          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
                          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>?
              lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>?
              shippingLines,
          List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
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
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$linesFromJson(
          json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
      productVariant;

  final List<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$linesToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant?
          productVariant,
      List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
                      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines
      _instance;

  final TRes Function(
      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines) _then;

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
      _then(Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
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
                  as Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
                          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines(
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
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant?
              productVariant,
          List<Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariantToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discountsFromJson(
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
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discountsToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts)
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
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$lines$discounts(
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
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLinesToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$shippingLines$shippingMethod(
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
class Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discountsFromJson(
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
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discountsToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
    on Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
          Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts
      _instance;

  final TRes Function(
      Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts) _then;

  static const _undefined = {};

  TRes call(
          {Object? amount = _undefined,
          Object? amountWithTax = _undefined,
          Object? description = _undefined,
          Object? adjustmentSource = _undefined,
          Object? type = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$Order$discounts(
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
class Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
    implements
        Fragment$ErrorResult,
        Mutation$SetShippingMethod$setOrderShippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodErrorToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
    on Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
          Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
          Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$IneligibleShippingMethodError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
    implements
        Fragment$ErrorResult,
        Mutation$SetShippingMethod$setOrderShippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderErrorToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
    on Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
          Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
          Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$NoActiveOrderError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
    implements
        Fragment$ErrorResult,
        Mutation$SetShippingMethod$setOrderShippingMethod {
  Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationErrorToJson(
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
            is Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError) ||
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

extension UtilityExtension$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
    on Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError {
  CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
          Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError>
      get copyWith =>
          CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
    TRes> {
  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
          Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
              instance,
          TRes Function(
                  Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError)
              then) =
      _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError;

  factory CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
            TRes> {
  _CopyWithImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
      this._instance, this._then);

  final Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError
      _instance;

  final TRes Function(
          Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
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

class _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
        TRes>
    implements
        CopyWith$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError<
            TRes> {
  _CopyWithStubImpl$Mutation$SetShippingMethod$setOrderShippingMethod$$OrderModificationError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment {
  Mutation$TransitionToArrangingPayment(
      {this.transitionOrderToState, required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPaymentFromJson(json);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState?
      transitionOrderToState;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPaymentToJson(this);
  int get hashCode {
    final l$transitionOrderToState = transitionOrderToState;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transitionOrderToState, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$TransitionToArrangingPayment) ||
        runtimeType != other.runtimeType) return false;
    final l$transitionOrderToState = transitionOrderToState;
    final lOther$transitionOrderToState = other.transitionOrderToState;
    if (l$transitionOrderToState != lOther$transitionOrderToState) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$TransitionToArrangingPayment
    on Mutation$TransitionToArrangingPayment {
  CopyWith$Mutation$TransitionToArrangingPayment<
          Mutation$TransitionToArrangingPayment>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment(this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment<TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment(
          Mutation$TransitionToArrangingPayment instance,
          TRes Function(Mutation$TransitionToArrangingPayment) then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment;

  factory CopyWith$Mutation$TransitionToArrangingPayment.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment;

  TRes call(
      {Mutation$TransitionToArrangingPayment$transitionOrderToState?
          transitionOrderToState,
      String? $__typename});
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<TRes>
      get transitionOrderToState;
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment<TRes>
    implements CopyWith$Mutation$TransitionToArrangingPayment<TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment _instance;

  final TRes Function(Mutation$TransitionToArrangingPayment) _then;

  static const _undefined = {};

  TRes call(
          {Object? transitionOrderToState = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToArrangingPayment(
          transitionOrderToState: transitionOrderToState == _undefined
              ? _instance.transitionOrderToState
              : (transitionOrderToState
                  as Mutation$TransitionToArrangingPayment$transitionOrderToState?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<TRes>
      get transitionOrderToState {
    final local$transitionOrderToState = _instance.transitionOrderToState;
    return local$transitionOrderToState == null
        ? CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState
            .stub(_then(_instance))
        : CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState(
            local$transitionOrderToState,
            (e) => call(transitionOrderToState: e));
  }
}

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment<TRes>
    implements CopyWith$Mutation$TransitionToArrangingPayment<TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment(this._res);

  TRes _res;

  call(
          {Mutation$TransitionToArrangingPayment$transitionOrderToState?
              transitionOrderToState,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<TRes>
      get transitionOrderToState =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState
              .stub(_res);
}

const documentNodeMutationTransitionToArrangingPayment =
    DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TransitionToArrangingPayment'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'transitionOrderToState'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'state'),
                  value: StringValueNode(
                      value: 'ArrangingPayment', isBlock: false))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
Mutation$TransitionToArrangingPayment
    _parserFn$Mutation$TransitionToArrangingPayment(
            Map<String, dynamic> data) =>
        Mutation$TransitionToArrangingPayment.fromJson(data);
typedef OnMutationCompleted$Mutation$TransitionToArrangingPayment
    = FutureOr<void> Function(dynamic, Mutation$TransitionToArrangingPayment?);

class Options$Mutation$TransitionToArrangingPayment
    extends graphql.MutationOptions<Mutation$TransitionToArrangingPayment> {
  Options$Mutation$TransitionToArrangingPayment(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$TransitionToArrangingPayment? onCompleted,
      graphql.OnMutationUpdate<Mutation$TransitionToArrangingPayment>? update,
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
                        : _parserFn$Mutation$TransitionToArrangingPayment(
                            data)),
            update: update,
            onError: onError,
            document: documentNodeMutationTransitionToArrangingPayment,
            parserFn: _parserFn$Mutation$TransitionToArrangingPayment);

  final OnMutationCompleted$Mutation$TransitionToArrangingPayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$TransitionToArrangingPayment
    extends graphql.WatchQueryOptions<Mutation$TransitionToArrangingPayment> {
  WatchOptions$Mutation$TransitionToArrangingPayment(
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
            document: documentNodeMutationTransitionToArrangingPayment,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$TransitionToArrangingPayment);
}

extension ClientExtension$Mutation$TransitionToArrangingPayment
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TransitionToArrangingPayment>>
      mutate$TransitionToArrangingPayment(
              [Options$Mutation$TransitionToArrangingPayment? options]) async =>
          await this.mutate(
              options ?? Options$Mutation$TransitionToArrangingPayment());
  graphql.ObservableQuery<Mutation$TransitionToArrangingPayment>
      watchMutation$TransitionToArrangingPayment(
              [WatchOptions$Mutation$TransitionToArrangingPayment? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$TransitionToArrangingPayment());
}

class Mutation$TransitionToArrangingPayment$HookResult {
  Mutation$TransitionToArrangingPayment$HookResult(
      this.runMutation, this.result);

  final RunMutation$Mutation$TransitionToArrangingPayment runMutation;

  final graphql.QueryResult<Mutation$TransitionToArrangingPayment> result;
}

Mutation$TransitionToArrangingPayment$HookResult
    useMutation$TransitionToArrangingPayment(
        [WidgetOptions$Mutation$TransitionToArrangingPayment? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$TransitionToArrangingPayment());
  return Mutation$TransitionToArrangingPayment$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TransitionToArrangingPayment>
    useWatchMutation$TransitionToArrangingPayment(
            [WatchOptions$Mutation$TransitionToArrangingPayment? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$TransitionToArrangingPayment());

class WidgetOptions$Mutation$TransitionToArrangingPayment
    extends graphql.MutationOptions<Mutation$TransitionToArrangingPayment> {
  WidgetOptions$Mutation$TransitionToArrangingPayment(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$TransitionToArrangingPayment? onCompleted,
      graphql.OnMutationUpdate<Mutation$TransitionToArrangingPayment>? update,
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
                        : _parserFn$Mutation$TransitionToArrangingPayment(
                            data)),
            update: update,
            onError: onError,
            document: documentNodeMutationTransitionToArrangingPayment,
            parserFn: _parserFn$Mutation$TransitionToArrangingPayment);

  final OnMutationCompleted$Mutation$TransitionToArrangingPayment?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$TransitionToArrangingPayment
    = graphql.MultiSourceResult<Mutation$TransitionToArrangingPayment> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$TransitionToArrangingPayment = widgets.Widget Function(
    RunMutation$Mutation$TransitionToArrangingPayment,
    graphql.QueryResult<Mutation$TransitionToArrangingPayment>?);

class Mutation$TransitionToArrangingPayment$Widget
    extends graphql_flutter.Mutation<Mutation$TransitionToArrangingPayment> {
  Mutation$TransitionToArrangingPayment$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$TransitionToArrangingPayment? options,
      required Builder$Mutation$TransitionToArrangingPayment builder})
      : super(
            key: key,
            options: options ??
                WidgetOptions$Mutation$TransitionToArrangingPayment(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState {
  Mutation$TransitionToArrangingPayment$transitionOrderToState(
      {required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
            .fromJson(json);
      case "OrderStateTransitionError":
        return Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
            .fromJson(json);
      default:
        return _$Mutation$TransitionToArrangingPayment$transitionOrderToStateFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToStateToJson(
          this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is Mutation$TransitionToArrangingPayment$transitionOrderToState) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState
    on Mutation$TransitionToArrangingPayment$transitionOrderToState {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<
          Mutation$TransitionToArrangingPayment$transitionOrderToState>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState(
          Mutation$TransitionToArrangingPayment$transitionOrderToState instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState _instance;

  final TRes Function(
      Mutation$TransitionToArrangingPayment$transitionOrderToState) _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToArrangingPayment$transitionOrderToState(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
    implements
        Fragment$Cart,
        Mutation$TransitionToArrangingPayment$transitionOrderToState {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
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
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>
      lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>
      shippingLines;

  final List<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderToJson(
          this);
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
    if (!(other
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>?
          lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>?
          shippingLines,
      List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
                      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
                      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
                      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order)
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
      _then(Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
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
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
                          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
                          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
                          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>?
              lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>?
              shippingLines,
          List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
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
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$linesFromJson(
          json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
      productVariant;

  final List<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$linesToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant?
          productVariant,
      List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
                      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines)
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
      _then(Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
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
                  as Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
                          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines(
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
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant?
              productVariant,
          List<Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariantToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
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

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discountsFromJson(
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
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discountsToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts)
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
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$lines$discounts(
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
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLinesToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$shippingLines$shippingMethod(
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
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discountsFromJson(
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
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discountsToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts)
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
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$Order$discounts(
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
class Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
    implements
        Fragment$ErrorResult,
        Mutation$TransitionToArrangingPayment$transitionOrderToState {
  Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionErrorToJson(
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
            is Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError) ||
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

extension UtilityExtension$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
    on Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError {
  CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError>
      get copyWith =>
          CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
    TRes> {
  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
              instance,
          TRes Function(
                  Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError)
              then) =
      _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError;

  factory CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
      this._instance, this._then);

  final Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError
      _instance;

  final TRes Function(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
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

class _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToArrangingPayment$transitionOrderToState$$OrderStateTransitionError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems {
  Mutation$TransitionToAddingItems(
      {this.transitionOrderToState, required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItemsFromJson(json);

  final Mutation$TransitionToAddingItems$transitionOrderToState?
      transitionOrderToState;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItemsToJson(this);
  int get hashCode {
    final l$transitionOrderToState = transitionOrderToState;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transitionOrderToState, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$TransitionToAddingItems) ||
        runtimeType != other.runtimeType) return false;
    final l$transitionOrderToState = transitionOrderToState;
    final lOther$transitionOrderToState = other.transitionOrderToState;
    if (l$transitionOrderToState != lOther$transitionOrderToState) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$TransitionToAddingItems
    on Mutation$TransitionToAddingItems {
  CopyWith$Mutation$TransitionToAddingItems<Mutation$TransitionToAddingItems>
      get copyWith => CopyWith$Mutation$TransitionToAddingItems(this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems<TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems(
          Mutation$TransitionToAddingItems instance,
          TRes Function(Mutation$TransitionToAddingItems) then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems;

  factory CopyWith$Mutation$TransitionToAddingItems.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems;

  TRes call(
      {Mutation$TransitionToAddingItems$transitionOrderToState?
          transitionOrderToState,
      String? $__typename});
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<TRes>
      get transitionOrderToState;
}

class _CopyWithImpl$Mutation$TransitionToAddingItems<TRes>
    implements CopyWith$Mutation$TransitionToAddingItems<TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems(this._instance, this._then);

  final Mutation$TransitionToAddingItems _instance;

  final TRes Function(Mutation$TransitionToAddingItems) _then;

  static const _undefined = {};

  TRes call(
          {Object? transitionOrderToState = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToAddingItems(
          transitionOrderToState: transitionOrderToState == _undefined
              ? _instance.transitionOrderToState
              : (transitionOrderToState
                  as Mutation$TransitionToAddingItems$transitionOrderToState?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<TRes>
      get transitionOrderToState {
    final local$transitionOrderToState = _instance.transitionOrderToState;
    return local$transitionOrderToState == null
        ? CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState.stub(
            _then(_instance))
        : CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState(
            local$transitionOrderToState,
            (e) => call(transitionOrderToState: e));
  }
}

class _CopyWithStubImpl$Mutation$TransitionToAddingItems<TRes>
    implements CopyWith$Mutation$TransitionToAddingItems<TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems(this._res);

  TRes _res;

  call(
          {Mutation$TransitionToAddingItems$transitionOrderToState?
              transitionOrderToState,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<TRes>
      get transitionOrderToState =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState.stub(
              _res);
}

const documentNodeMutationTransitionToAddingItems = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TransitionToAddingItems'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'transitionOrderToState'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'state'),
                  value: StringValueNode(value: 'AddingItems', isBlock: false))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(name: NameNode(value: 'Cart'), directives: []),
              FragmentSpreadNode(
                  name: NameNode(value: 'ErrorResult'), directives: []),
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
Mutation$TransitionToAddingItems _parserFn$Mutation$TransitionToAddingItems(
        Map<String, dynamic> data) =>
    Mutation$TransitionToAddingItems.fromJson(data);
typedef OnMutationCompleted$Mutation$TransitionToAddingItems = FutureOr<void>
    Function(dynamic, Mutation$TransitionToAddingItems?);

class Options$Mutation$TransitionToAddingItems
    extends graphql.MutationOptions<Mutation$TransitionToAddingItems> {
  Options$Mutation$TransitionToAddingItems(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$TransitionToAddingItems? onCompleted,
      graphql.OnMutationUpdate<Mutation$TransitionToAddingItems>? update,
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
                        : _parserFn$Mutation$TransitionToAddingItems(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationTransitionToAddingItems,
            parserFn: _parserFn$Mutation$TransitionToAddingItems);

  final OnMutationCompleted$Mutation$TransitionToAddingItems?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$TransitionToAddingItems
    extends graphql.WatchQueryOptions<Mutation$TransitionToAddingItems> {
  WatchOptions$Mutation$TransitionToAddingItems(
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
            document: documentNodeMutationTransitionToAddingItems,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$TransitionToAddingItems);
}

extension ClientExtension$Mutation$TransitionToAddingItems
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TransitionToAddingItems>>
      mutate$TransitionToAddingItems(
              [Options$Mutation$TransitionToAddingItems? options]) async =>
          await this
              .mutate(options ?? Options$Mutation$TransitionToAddingItems());
  graphql.ObservableQuery<Mutation$TransitionToAddingItems>
      watchMutation$TransitionToAddingItems(
              [WatchOptions$Mutation$TransitionToAddingItems? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$TransitionToAddingItems());
}

class Mutation$TransitionToAddingItems$HookResult {
  Mutation$TransitionToAddingItems$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$TransitionToAddingItems runMutation;

  final graphql.QueryResult<Mutation$TransitionToAddingItems> result;
}

Mutation$TransitionToAddingItems$HookResult useMutation$TransitionToAddingItems(
    [WidgetOptions$Mutation$TransitionToAddingItems? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$TransitionToAddingItems());
  return Mutation$TransitionToAddingItems$HookResult(
    ({optimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TransitionToAddingItems>
    useWatchMutation$TransitionToAddingItems(
            [WatchOptions$Mutation$TransitionToAddingItems? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$TransitionToAddingItems());

class WidgetOptions$Mutation$TransitionToAddingItems
    extends graphql.MutationOptions<Mutation$TransitionToAddingItems> {
  WidgetOptions$Mutation$TransitionToAddingItems(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$TransitionToAddingItems? onCompleted,
      graphql.OnMutationUpdate<Mutation$TransitionToAddingItems>? update,
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
                        : _parserFn$Mutation$TransitionToAddingItems(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationTransitionToAddingItems,
            parserFn: _parserFn$Mutation$TransitionToAddingItems);

  final OnMutationCompleted$Mutation$TransitionToAddingItems?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$TransitionToAddingItems
    = graphql.MultiSourceResult<Mutation$TransitionToAddingItems> Function(
        {Object? optimisticResult});
typedef Builder$Mutation$TransitionToAddingItems = widgets.Widget Function(
    RunMutation$Mutation$TransitionToAddingItems,
    graphql.QueryResult<Mutation$TransitionToAddingItems>?);

class Mutation$TransitionToAddingItems$Widget
    extends graphql_flutter.Mutation<Mutation$TransitionToAddingItems> {
  Mutation$TransitionToAddingItems$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$TransitionToAddingItems? options,
      required Builder$Mutation$TransitionToAddingItems builder})
      : super(
            key: key,
            options:
                options ?? WidgetOptions$Mutation$TransitionToAddingItems(),
            builder: (run, result) => builder(
                ({optimisticResult}) =>
                    run(const {}, optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState {
  Mutation$TransitionToAddingItems$transitionOrderToState(
      {required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Order":
        return Mutation$TransitionToAddingItems$transitionOrderToState$$Order
            .fromJson(json);
      case "OrderStateTransitionError":
        return Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
            .fromJson(json);
      default:
        return _$Mutation$TransitionToAddingItems$transitionOrderToStateFromJson(
            json);
    }
  }

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToStateToJson(this);
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$TransitionToAddingItems$transitionOrderToState) ||
        runtimeType != other.runtimeType) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState
    on Mutation$TransitionToAddingItems$transitionOrderToState {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<
          Mutation$TransitionToAddingItems$transitionOrderToState>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState(
          Mutation$TransitionToAddingItems$transitionOrderToState instance,
          TRes Function(Mutation$TransitionToAddingItems$transitionOrderToState)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState _instance;

  final TRes Function(Mutation$TransitionToAddingItems$transitionOrderToState)
      _then;

  static const _undefined = {};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToAddingItems$transitionOrderToState(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState<TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order
    implements
        Fragment$Cart,
        Mutation$TransitionToAddingItems$transitionOrderToState {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
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
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  final String id;

  final String code;

  final String state;

  final bool active;

  final List<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>
      lines;

  final int totalQuantity;

  final int subTotal;

  final int subTotalWithTax;

  final int total;

  final int totalWithTax;

  final int shipping;

  final int shippingWithTax;

  final List<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>
      shippingLines;

  final List<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>
      discounts;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderToJson(
          this);
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
    if (!(other
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order;

  TRes call(
      {String? $__typename,
      String? id,
      String? code,
      String? state,
      bool? active,
      List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>?
          lines,
      int? totalQuantity,
      int? subTotal,
      int? subTotalWithTax,
      int? total,
      int? totalWithTax,
      int? shipping,
      int? shippingWithTax,
      List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>?
          shippingLines,
      List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>?
          discounts});
  TRes lines(
      Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
                      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>>)
          _fn);
  TRes shippingLines(
      Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
                      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>>)
          _fn);
  TRes discounts(
      Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
                      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order
      _instance;

  final TRes Function(
      Mutation$TransitionToAddingItems$transitionOrderToState$$Order) _then;

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
      _then(Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
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
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>),
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
          shippingLines: shippingLines == _undefined || shippingLines == null ? _instance.shippingLines : (shippingLines as List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>),
          discounts: discounts == _undefined || discounts == null ? _instance.discounts : (discounts as List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>)));
  TRes lines(
          Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
                          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>>)
              _fn) =>
      call(
          lines: _fn(_instance.lines.map((e) =>
              CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
                  e, (i) => i))).toList());
  TRes shippingLines(
          Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
                          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>>)
              _fn) =>
      call(
          shippingLines: _fn(_instance.shippingLines.map((e) =>
              CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
                  e, (i) => i))).toList());
  TRes discounts(
          Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
                          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order(
      this._res);

  TRes _res;

  call(
          {String? $__typename,
          String? id,
          String? code,
          String? state,
          bool? active,
          List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>?
              lines,
          int? totalQuantity,
          int? subTotal,
          int? subTotalWithTax,
          int? total,
          int? totalWithTax,
          int? shipping,
          int? shippingWithTax,
          List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>?
              shippingLines,
          List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>?
              discounts}) =>
      _res;
  lines(_fn) => _res;
  shippingLines(_fn) => _res;
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
    implements Fragment$Cart$lines {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
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
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$linesFromJson(
          json);

  final String id;

  final Fragment$Asset? featuredAsset;

  final int unitPrice;

  final int unitPriceWithTax;

  final int quantity;

  final int linePriceWithTax;

  final int discountedLinePriceWithTax;

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
      productVariant;

  final List<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>
      discounts;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$linesToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines;

  TRes call(
      {String? id,
      Fragment$Asset? featuredAsset,
      int? unitPrice,
      int? unitPriceWithTax,
      int? quantity,
      int? linePriceWithTax,
      int? discountedLinePriceWithTax,
      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant?
          productVariant,
      List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>?
          discounts,
      String? $__typename});
  CopyWith$Fragment$Asset<TRes> get featuredAsset;
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
      TRes> get productVariant;
  TRes discounts(
      Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts> Function(
              Iterable<
                  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
                      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>>)
          _fn);
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines)
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
      _then(Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
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
                  as Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant),
          discounts: discounts == _undefined || discounts == null
              ? _instance.discounts
              : (discounts as List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>),
          $__typename: $__typename == _undefined || $__typename == null ? _instance.$__typename : ($__typename as String)));
  CopyWith$Fragment$Asset<TRes> get featuredAsset {
    final local$featuredAsset = _instance.featuredAsset;
    return local$featuredAsset == null
        ? CopyWith$Fragment$Asset.stub(_then(_instance))
        : CopyWith$Fragment$Asset(
            local$featuredAsset, (e) => call(featuredAsset: e));
  }

  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
      TRes> get productVariant {
    final local$productVariant = _instance.productVariant;
    return CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
        local$productVariant, (e) => call(productVariant: e));
  }

  TRes discounts(
          Iterable<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts> Function(
                  Iterable<
                      CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
                          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>>)
              _fn) =>
      call(
          discounts: _fn(_instance.discounts.map((e) =>
              CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
                  e, (i) => i))).toList());
}

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines(
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
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant?
              productVariant,
          List<Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>?
              discounts,
          String? $__typename}) =>
      _res;
  CopyWith$Fragment$Asset<TRes> get featuredAsset =>
      CopyWith$Fragment$Asset.stub(_res);
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
          TRes>
      get productVariant =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
              .stub(_res);
  discounts(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
    implements Fragment$Cart$lines$productVariant {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
      {required this.id, required this.name, required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariantFromJson(
          json);

  final String id;

  final String name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariantToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? name = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
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

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$productVariant(
      this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
    implements Fragment$Cart$lines$discounts {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discountsFromJson(
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
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discountsToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts)
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
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
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

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$lines$discounts(
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
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
    implements Fragment$Cart$shippingLines {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
      {required this.priceWithTax,
      required this.shippingMethod,
      required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLinesFromJson(
          json);

  final int priceWithTax;

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
      shippingMethod;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLinesToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines;

  TRes call(
      {int? priceWithTax,
      Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod?
          shippingMethod,
      String? $__typename});
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod;
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? priceWithTax = _undefined,
          Object? shippingMethod = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
          priceWithTax: priceWithTax == _undefined || priceWithTax == null
              ? _instance.priceWithTax
              : (priceWithTax as int),
          shippingMethod: shippingMethod == _undefined || shippingMethod == null
              ? _instance.shippingMethod
              : (shippingMethod
                  as Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
      TRes> get shippingMethod {
    final local$shippingMethod = _instance.shippingMethod;
    return CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
        local$shippingMethod, (e) => call(shippingMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines(
      this._res);

  TRes _res;

  call(
          {int? priceWithTax,
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod?
              shippingMethod,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
          TRes>
      get shippingMethod =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
              .stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
    implements Fragment$Cart$shippingLines$shippingMethod {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethodFromJson(
          json);

  final String id;

  final String code;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethodToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod;

  TRes call(
      {String? id,
      String? code,
      String? name,
      String? description,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? code = _undefined,
          Object? name = _undefined,
          Object? description = _undefined,
          Object? $__typename = _undefined}) =>
      _then(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
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

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$shippingLines$shippingMethod(
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
class Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
    implements Fragment$Cart$discounts {
  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
      {required this.amount,
      required this.amountWithTax,
      required this.description,
      required this.adjustmentSource,
      required this.type,
      required this.$__typename});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discountsFromJson(
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
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discountsToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
    on Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts;

  TRes call(
      {int? amount,
      int? amountWithTax,
      String? description,
      String? adjustmentSource,
      Enum$AdjustmentType? type,
      String? $__typename});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts)
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
          Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
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

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$Order$discounts(
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
class Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
    implements
        Fragment$ErrorResult,
        Mutation$TransitionToAddingItems$transitionOrderToState {
  Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
      {required this.$__typename,
      required this.errorCode,
      required this.message});

  @override
  factory Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionErrorFromJson(
          json);

  @JsonKey(name: '__typename')
  final String $__typename;

  @JsonKey(unknownEnumValue: Enum$ErrorCode.$unknown)
  final Enum$ErrorCode errorCode;

  final String message;

  Map<String, dynamic> toJson() =>
      _$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionErrorToJson(
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
            is Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError) ||
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

extension UtilityExtension$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
    on Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError {
  CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
          Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError>
      get copyWith =>
          CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
              this, (i) => i);
}

abstract class CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
    TRes> {
  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
          Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
              instance,
          TRes Function(
                  Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError)
              then) =
      _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError;

  factory CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError;

  TRes call({String? $__typename, Enum$ErrorCode? errorCode, String? message});
}

class _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
            TRes> {
  _CopyWithImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
      this._instance, this._then);

  final Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError
      _instance;

  final TRes Function(
          Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError)
      _then;

  static const _undefined = {};

  TRes call(
          {Object? $__typename = _undefined,
          Object? errorCode = _undefined,
          Object? message = _undefined}) =>
      _then(
          Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
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

class _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
        TRes>
    implements
        CopyWith$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError<
            TRes> {
  _CopyWithStubImpl$Mutation$TransitionToAddingItems$transitionOrderToState$$OrderStateTransitionError(
      this._res);

  TRes _res;

  call({String? $__typename, Enum$ErrorCode? errorCode, String? message}) =>
      _res;
}
