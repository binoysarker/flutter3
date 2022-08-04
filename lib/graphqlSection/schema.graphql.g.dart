// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Input$ConfigArgInput _$Input$ConfigArgInputFromJson(
        Map<String, dynamic> json) =>
    Input$ConfigArgInput(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$Input$ConfigArgInputToJson(
        Input$ConfigArgInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

Input$ConfigurableOperationInput _$Input$ConfigurableOperationInputFromJson(
        Map<String, dynamic> json) =>
    Input$ConfigurableOperationInput(
      code: json['code'] as String,
      arguments: (json['arguments'] as List<dynamic>)
          .map((e) => Input$ConfigArgInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Input$ConfigurableOperationInputToJson(
        Input$ConfigurableOperationInput instance) =>
    <String, dynamic>{
      'code': instance.code,
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
    };

Input$StringOperators _$Input$StringOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$StringOperators(
      eq: json['eq'] as String?,
      notEq: json['notEq'] as String?,
      contains: json['contains'] as String?,
      notContains: json['notContains'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$Input$StringOperatorsToJson(
        Input$StringOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'notEq': instance.notEq,
      'contains': instance.contains,
      'notContains': instance.notContains,
      'in': instance.$in,
      'notIn': instance.notIn,
      'regex': instance.regex,
    };

Input$IDOperators _$Input$IDOperatorsFromJson(Map<String, dynamic> json) =>
    Input$IDOperators(
      eq: json['eq'] as String?,
      notEq: json['notEq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$IDOperatorsToJson(Input$IDOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'notEq': instance.notEq,
      'in': instance.$in,
      'notIn': instance.notIn,
    };

Input$BooleanOperators _$Input$BooleanOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$BooleanOperators(
      eq: json['eq'] as bool?,
    );

Map<String, dynamic> _$Input$BooleanOperatorsToJson(
        Input$BooleanOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
    };

Input$NumberRange _$Input$NumberRangeFromJson(Map<String, dynamic> json) =>
    Input$NumberRange(
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$NumberRangeToJson(Input$NumberRange instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

Input$NumberOperators _$Input$NumberOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$NumberOperators(
      eq: (json['eq'] as num?)?.toDouble(),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      between: json['between'] == null
          ? null
          : Input$NumberRange.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$NumberOperatorsToJson(
        Input$NumberOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'between': instance.between?.toJson(),
    };

Input$DateRange _$Input$DateRangeFromJson(Map<String, dynamic> json) =>
    Input$DateRange(
      start: json['start'] as String,
      end: json['end'] as String,
    );

Map<String, dynamic> _$Input$DateRangeToJson(Input$DateRange instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

Input$DateOperators _$Input$DateOperatorsFromJson(Map<String, dynamic> json) =>
    Input$DateOperators(
      eq: json['eq'] as String?,
      before: json['before'] as String?,
      after: json['after'] as String?,
      between: json['between'] == null
          ? null
          : Input$DateRange.fromJson(json['between'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$DateOperatorsToJson(
        Input$DateOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'before': instance.before,
      'after': instance.after,
      'between': instance.between?.toJson(),
    };

Input$StringListOperators _$Input$StringListOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$StringListOperators(
      inList: json['inList'] as String,
    );

Map<String, dynamic> _$Input$StringListOperatorsToJson(
        Input$StringListOperators instance) =>
    <String, dynamic>{
      'inList': instance.inList,
    };

Input$NumberListOperators _$Input$NumberListOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$NumberListOperators(
      inList: (json['inList'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$NumberListOperatorsToJson(
        Input$NumberListOperators instance) =>
    <String, dynamic>{
      'inList': instance.inList,
    };

Input$BooleanListOperators _$Input$BooleanListOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$BooleanListOperators(
      inList: json['inList'] as bool,
    );

Map<String, dynamic> _$Input$BooleanListOperatorsToJson(
        Input$BooleanListOperators instance) =>
    <String, dynamic>{
      'inList': instance.inList,
    };

Input$IDListOperators _$Input$IDListOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$IDListOperators(
      inList: json['inList'] as String,
    );

Map<String, dynamic> _$Input$IDListOperatorsToJson(
        Input$IDListOperators instance) =>
    <String, dynamic>{
      'inList': instance.inList,
    };

Input$DateListOperators _$Input$DateListOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$DateListOperators(
      inList: json['inList'] as String,
    );

Map<String, dynamic> _$Input$DateListOperatorsToJson(
        Input$DateListOperators instance) =>
    <String, dynamic>{
      'inList': instance.inList,
    };

Input$FacetValueFilterInput _$Input$FacetValueFilterInputFromJson(
        Map<String, dynamic> json) =>
    Input$FacetValueFilterInput(
      and: json['and'] as String?,
      or: (json['or'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$FacetValueFilterInputToJson(
        Input$FacetValueFilterInput instance) =>
    <String, dynamic>{
      'and': instance.and,
      'or': instance.or,
    };

Input$SearchInput _$Input$SearchInputFromJson(Map<String, dynamic> json) =>
    Input$SearchInput(
      term: json['term'] as String?,
      facetValueIds: (json['facetValueIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      facetValueOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['facetValueOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      facetValueFilters: (json['facetValueFilters'] as List<dynamic>?)
          ?.map((e) =>
              Input$FacetValueFilterInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      collectionId: json['collectionId'] as String?,
      collectionSlug: json['collectionSlug'] as String?,
      groupByProduct: json['groupByProduct'] as bool?,
      take: json['take'] as int?,
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$SearchResultSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      inStock: json['inStock'] as bool?,
    );

Map<String, dynamic> _$Input$SearchInputToJson(Input$SearchInput instance) =>
    <String, dynamic>{
      'term': instance.term,
      'facetValueIds': instance.facetValueIds,
      'facetValueOperator':
          _$Enum$LogicalOperatorEnumMap[instance.facetValueOperator],
      'facetValueFilters':
          instance.facetValueFilters?.map((e) => e.toJson()).toList(),
      'collectionId': instance.collectionId,
      'collectionSlug': instance.collectionSlug,
      'groupByProduct': instance.groupByProduct,
      'take': instance.take,
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'inStock': instance.inStock,
    };

const _$Enum$LogicalOperatorEnumMap = {
  Enum$LogicalOperator.AND: 'AND',
  Enum$LogicalOperator.OR: 'OR',
  Enum$LogicalOperator.$unknown: r'$unknown',
};

Input$SearchResultSortParameter _$Input$SearchResultSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$SearchResultSortParameter(
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      price: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['price'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$SearchResultSortParameterToJson(
        Input$SearchResultSortParameter instance) =>
    <String, dynamic>{
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'price': _$Enum$SortOrderEnumMap[instance.price],
    };

const _$Enum$SortOrderEnumMap = {
  Enum$SortOrder.ASC: 'ASC',
  Enum$SortOrder.DESC: 'DESC',
  Enum$SortOrder.$unknown: r'$unknown',
};

Input$CreateCustomerInput _$Input$CreateCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateCustomerInput(
      title: json['title'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      emailAddress: json['emailAddress'] as String,
      customFields: json['customFields'] as String?,
    );

Map<String, dynamic> _$Input$CreateCustomerInputToJson(
        Input$CreateCustomerInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'customFields': instance.customFields,
    };

Input$CreateAddressInput _$Input$CreateAddressInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateAddressInput(
      fullName: json['fullName'] as String?,
      company: json['company'] as String?,
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      postalCode: json['postalCode'] as String?,
      countryCode: json['countryCode'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      defaultShippingAddress: json['defaultShippingAddress'] as bool?,
      defaultBillingAddress: json['defaultBillingAddress'] as bool?,
      customFields: json['customFields'] as String?,
    );

Map<String, dynamic> _$Input$CreateAddressInputToJson(
        Input$CreateAddressInput instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'company': instance.company,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'defaultShippingAddress': instance.defaultShippingAddress,
      'defaultBillingAddress': instance.defaultBillingAddress,
      'customFields': instance.customFields,
    };

Input$UpdateAddressInput _$Input$UpdateAddressInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateAddressInput(
      id: json['id'] as String,
      fullName: json['fullName'] as String?,
      company: json['company'] as String?,
      streetLine1: json['streetLine1'] as String?,
      streetLine2: json['streetLine2'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      postalCode: json['postalCode'] as String?,
      countryCode: json['countryCode'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      defaultShippingAddress: json['defaultShippingAddress'] as bool?,
      defaultBillingAddress: json['defaultBillingAddress'] as bool?,
      customFields: json['customFields'] as String?,
    );

Map<String, dynamic> _$Input$UpdateAddressInputToJson(
        Input$UpdateAddressInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'company': instance.company,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
      'city': instance.city,
      'province': instance.province,
      'postalCode': instance.postalCode,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'defaultShippingAddress': instance.defaultShippingAddress,
      'defaultBillingAddress': instance.defaultBillingAddress,
      'customFields': instance.customFields,
    };

Input$CustomerListOptions _$Input$CustomerListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$CustomerSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$CustomerFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$CustomerListOptionsToJson(
        Input$CustomerListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$HistoryEntryListOptions _$Input$HistoryEntryListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntryListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$HistoryEntrySortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$HistoryEntryFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$HistoryEntryListOptionsToJson(
        Input$HistoryEntryListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$AuthenticationInput _$Input$AuthenticationInputFromJson(
        Map<String, dynamic> json) =>
    Input$AuthenticationInput(
      native: json['native'] == null
          ? null
          : Input$NativeAuthInput.fromJson(
              json['native'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$AuthenticationInputToJson(
        Input$AuthenticationInput instance) =>
    <String, dynamic>{
      'native': instance.native?.toJson(),
    };

Input$RegisterCustomerInput _$Input$RegisterCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$RegisterCustomerInput(
      emailAddress: json['emailAddress'] as String,
      title: json['title'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$Input$RegisterCustomerInputToJson(
        Input$RegisterCustomerInput instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
    };

Input$UpdateCustomerInput _$Input$UpdateCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateCustomerInput(
      title: json['title'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      customFields: json['customFields'] as String?,
    );

Map<String, dynamic> _$Input$UpdateCustomerInputToJson(
        Input$UpdateCustomerInput instance) =>
    <String, dynamic>{
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'customFields': instance.customFields,
    };

Input$UpdateOrderInput _$Input$UpdateOrderInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateOrderInput(
      customFields: json['customFields'] as String?,
    );

Map<String, dynamic> _$Input$UpdateOrderInputToJson(
        Input$UpdateOrderInput instance) =>
    <String, dynamic>{
      'customFields': instance.customFields,
    };

Input$PaymentInput _$Input$PaymentInputFromJson(Map<String, dynamic> json) =>
    Input$PaymentInput(
      method: json['method'] as String,
      metadata: json['metadata'] as String,
    );

Map<String, dynamic> _$Input$PaymentInputToJson(Input$PaymentInput instance) =>
    <String, dynamic>{
      'method': instance.method,
      'metadata': instance.metadata,
    };

Input$CollectionListOptions _$Input$CollectionListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$CollectionSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$CollectionFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$CollectionListOptionsToJson(
        Input$CollectionListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$FacetListOptions _$Input$FacetListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$FacetListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$FacetSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$FacetFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$FacetListOptionsToJson(
        Input$FacetListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$OrderListOptions _$Input$OrderListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$OrderListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$OrderSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$OrderFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$OrderListOptionsToJson(
        Input$OrderListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$ProductListOptions _$Input$ProductListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$ProductListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$ProductSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$ProductFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$ProductListOptionsToJson(
        Input$ProductListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$ProductVariantListOptions _$Input$ProductVariantListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$ProductVariantListOptions(
      skip: json['skip'] as int?,
      take: json['take'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$ProductVariantSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : Input$ProductVariantFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
    );

Map<String, dynamic> _$Input$ProductVariantListOptionsToJson(
        Input$ProductVariantListOptions instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'take': instance.take,
      'sort': instance.sort?.toJson(),
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
    };

Input$ProductVariantFilterParameter
    _$Input$ProductVariantFilterParameterFromJson(Map<String, dynamic> json) =>
        Input$ProductVariantFilterParameter(
          id: json['id'] == null
              ? null
              : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
          productId: json['productId'] == null
              ? null
              : Input$IDOperators.fromJson(
                  json['productId'] as Map<String, dynamic>),
          createdAt: json['createdAt'] == null
              ? null
              : Input$DateOperators.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : Input$DateOperators.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
          languageCode: json['languageCode'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['languageCode'] as Map<String, dynamic>),
          sku: json['sku'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['sku'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['name'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : Input$NumberOperators.fromJson(
                  json['price'] as Map<String, dynamic>),
          currencyCode: json['currencyCode'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['currencyCode'] as Map<String, dynamic>),
          priceWithTax: json['priceWithTax'] == null
              ? null
              : Input$NumberOperators.fromJson(
                  json['priceWithTax'] as Map<String, dynamic>),
          stockLevel: json['stockLevel'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['stockLevel'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Input$ProductVariantFilterParameterToJson(
        Input$ProductVariantFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'productId': instance.productId?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'sku': instance.sku?.toJson(),
      'name': instance.name?.toJson(),
      'price': instance.price?.toJson(),
      'currencyCode': instance.currencyCode?.toJson(),
      'priceWithTax': instance.priceWithTax?.toJson(),
      'stockLevel': instance.stockLevel?.toJson(),
    };

Input$ProductVariantSortParameter _$Input$ProductVariantSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductVariantSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      productId: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['productId'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      sku: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['sku'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      price: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['price'],
          unknownValue: Enum$SortOrder.$unknown),
      priceWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['priceWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      stockLevel: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['stockLevel'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$ProductVariantSortParameterToJson(
        Input$ProductVariantSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'productId': _$Enum$SortOrderEnumMap[instance.productId],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'sku': _$Enum$SortOrderEnumMap[instance.sku],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'price': _$Enum$SortOrderEnumMap[instance.price],
      'priceWithTax': _$Enum$SortOrderEnumMap[instance.priceWithTax],
      'stockLevel': _$Enum$SortOrderEnumMap[instance.stockLevel],
    };

Input$CustomerFilterParameter _$Input$CustomerFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['title'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['lastName'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['phoneNumber'] as Map<String, dynamic>),
      emailAddress: json['emailAddress'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['emailAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$CustomerFilterParameterToJson(
        Input$CustomerFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'title': instance.title?.toJson(),
      'firstName': instance.firstName?.toJson(),
      'lastName': instance.lastName?.toJson(),
      'phoneNumber': instance.phoneNumber?.toJson(),
      'emailAddress': instance.emailAddress?.toJson(),
    };

Input$CustomerSortParameter _$Input$CustomerSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      title: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['title'],
          unknownValue: Enum$SortOrder.$unknown),
      firstName: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['firstName'],
          unknownValue: Enum$SortOrder.$unknown),
      lastName: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['lastName'],
          unknownValue: Enum$SortOrder.$unknown),
      phoneNumber: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['phoneNumber'],
          unknownValue: Enum$SortOrder.$unknown),
      emailAddress: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['emailAddress'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$CustomerSortParameterToJson(
        Input$CustomerSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'title': _$Enum$SortOrderEnumMap[instance.title],
      'firstName': _$Enum$SortOrderEnumMap[instance.firstName],
      'lastName': _$Enum$SortOrderEnumMap[instance.lastName],
      'phoneNumber': _$Enum$SortOrderEnumMap[instance.phoneNumber],
      'emailAddress': _$Enum$SortOrderEnumMap[instance.emailAddress],
    };

Input$OrderFilterParameter _$Input$OrderFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$OrderFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      orderPlacedAt: json['orderPlacedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['orderPlacedAt'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['code'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['state'] as Map<String, dynamic>),
      active: json['active'] == null
          ? null
          : Input$BooleanOperators.fromJson(
              json['active'] as Map<String, dynamic>),
      totalQuantity: json['totalQuantity'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['totalQuantity'] as Map<String, dynamic>),
      subTotal: json['subTotal'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['subTotal'] as Map<String, dynamic>),
      subTotalWithTax: json['subTotalWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['subTotalWithTax'] as Map<String, dynamic>),
      currencyCode: json['currencyCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['currencyCode'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['shipping'] as Map<String, dynamic>),
      shippingWithTax: json['shippingWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['shippingWithTax'] as Map<String, dynamic>),
      total: json['total'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['total'] as Map<String, dynamic>),
      totalWithTax: json['totalWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['totalWithTax'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$OrderFilterParameterToJson(
        Input$OrderFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'orderPlacedAt': instance.orderPlacedAt?.toJson(),
      'code': instance.code?.toJson(),
      'state': instance.state?.toJson(),
      'active': instance.active?.toJson(),
      'totalQuantity': instance.totalQuantity?.toJson(),
      'subTotal': instance.subTotal?.toJson(),
      'subTotalWithTax': instance.subTotalWithTax?.toJson(),
      'currencyCode': instance.currencyCode?.toJson(),
      'shipping': instance.shipping?.toJson(),
      'shippingWithTax': instance.shippingWithTax?.toJson(),
      'total': instance.total?.toJson(),
      'totalWithTax': instance.totalWithTax?.toJson(),
    };

Input$OrderSortParameter _$Input$OrderSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$OrderSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      orderPlacedAt: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['orderPlacedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      code: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['code'],
          unknownValue: Enum$SortOrder.$unknown),
      state: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['state'],
          unknownValue: Enum$SortOrder.$unknown),
      totalQuantity: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['totalQuantity'],
          unknownValue: Enum$SortOrder.$unknown),
      subTotal: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['subTotal'],
          unknownValue: Enum$SortOrder.$unknown),
      subTotalWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['subTotalWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      shipping: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['shipping'],
          unknownValue: Enum$SortOrder.$unknown),
      shippingWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['shippingWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      total: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['total'],
          unknownValue: Enum$SortOrder.$unknown),
      totalWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['totalWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$OrderSortParameterToJson(
        Input$OrderSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'orderPlacedAt': _$Enum$SortOrderEnumMap[instance.orderPlacedAt],
      'code': _$Enum$SortOrderEnumMap[instance.code],
      'state': _$Enum$SortOrderEnumMap[instance.state],
      'totalQuantity': _$Enum$SortOrderEnumMap[instance.totalQuantity],
      'subTotal': _$Enum$SortOrderEnumMap[instance.subTotal],
      'subTotalWithTax': _$Enum$SortOrderEnumMap[instance.subTotalWithTax],
      'shipping': _$Enum$SortOrderEnumMap[instance.shipping],
      'shippingWithTax': _$Enum$SortOrderEnumMap[instance.shippingWithTax],
      'total': _$Enum$SortOrderEnumMap[instance.total],
      'totalWithTax': _$Enum$SortOrderEnumMap[instance.totalWithTax],
    };

Input$HistoryEntryFilterParameter _$Input$HistoryEntryFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntryFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$HistoryEntryFilterParameterToJson(
        Input$HistoryEntryFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'type': instance.type?.toJson(),
    };

Input$HistoryEntrySortParameter _$Input$HistoryEntrySortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntrySortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$HistoryEntrySortParameterToJson(
        Input$HistoryEntrySortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

Input$CollectionFilterParameter _$Input$CollectionFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      languageCode: json['languageCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['languageCode'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['name'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['slug'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['position'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$CollectionFilterParameterToJson(
        Input$CollectionFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'slug': instance.slug?.toJson(),
      'position': instance.position?.toJson(),
      'description': instance.description?.toJson(),
    };

Input$CollectionSortParameter _$Input$CollectionSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      slug: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['slug'],
          unknownValue: Enum$SortOrder.$unknown),
      position: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['position'],
          unknownValue: Enum$SortOrder.$unknown),
      description: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['description'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$CollectionSortParameterToJson(
        Input$CollectionSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'slug': _$Enum$SortOrderEnumMap[instance.slug],
      'position': _$Enum$SortOrderEnumMap[instance.position],
      'description': _$Enum$SortOrderEnumMap[instance.description],
    };

Input$FacetFilterParameter _$Input$FacetFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$FacetFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      languageCode: json['languageCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['languageCode'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['name'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$FacetFilterParameterToJson(
        Input$FacetFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'code': instance.code?.toJson(),
    };

Input$FacetSortParameter _$Input$FacetSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$FacetSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      code: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['code'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$FacetSortParameterToJson(
        Input$FacetSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'code': _$Enum$SortOrderEnumMap[instance.code],
    };

Input$ProductFilterParameter _$Input$ProductFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductFilterParameter(
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
      languageCode: json['languageCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['languageCode'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['name'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['slug'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$ProductFilterParameterToJson(
        Input$ProductFilterParameter instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'slug': instance.slug?.toJson(),
      'description': instance.description?.toJson(),
    };

Input$ProductSortParameter _$Input$ProductSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductSortParameter(
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      slug: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['slug'],
          unknownValue: Enum$SortOrder.$unknown),
      description: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['description'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$ProductSortParameterToJson(
        Input$ProductSortParameter instance) =>
    <String, dynamic>{
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'slug': _$Enum$SortOrderEnumMap[instance.slug],
      'description': _$Enum$SortOrderEnumMap[instance.description],
    };

Input$NativeAuthInput _$Input$NativeAuthInputFromJson(
        Map<String, dynamic> json) =>
    Input$NativeAuthInput(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$Input$NativeAuthInputToJson(
        Input$NativeAuthInput instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };