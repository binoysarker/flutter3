// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

Input$BooleanOperators _$Input$BooleanOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$BooleanOperators(
      eq: json['eq'] as bool?,
      isNull: json['isNull'] as bool?,
    );

Map<String, dynamic> _$Input$BooleanOperatorsToJson(
        Input$BooleanOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'isNull': instance.isNull,
    };

Input$CollectionFilterParameter _$Input$CollectionFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionFilterParameter(
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['description'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      languageCode: json['languageCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['languageCode'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['name'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['position'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['slug'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$CollectionFilterParameterToJson(
        Input$CollectionFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'description': instance.description?.toJson(),
      'id': instance.id?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'position': instance.position?.toJson(),
      'slug': instance.slug?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$CollectionListOptions _$Input$CollectionListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionListOptions(
      filter: json['filter'] == null
          ? null
          : Input$CollectionFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$CollectionSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$CollectionListOptionsToJson(
        Input$CollectionListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

const _$Enum$LogicalOperatorEnumMap = {
  Enum$LogicalOperator.AND: 'AND',
  Enum$LogicalOperator.OR: 'OR',
  Enum$LogicalOperator.$unknown: r'$unknown',
};

Input$CollectionSortParameter _$Input$CollectionSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CollectionSortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      description: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['description'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      position: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['position'],
          unknownValue: Enum$SortOrder.$unknown),
      slug: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['slug'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$CollectionSortParameterToJson(
        Input$CollectionSortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'description': _$Enum$SortOrderEnumMap[instance.description],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'position': _$Enum$SortOrderEnumMap[instance.position],
      'slug': _$Enum$SortOrderEnumMap[instance.slug],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

const _$Enum$SortOrderEnumMap = {
  Enum$SortOrder.ASC: 'ASC',
  Enum$SortOrder.DESC: 'DESC',
  Enum$SortOrder.$unknown: r'$unknown',
};

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
      arguments: (json['arguments'] as List<dynamic>)
          .map((e) => Input$ConfigArgInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as String,
    );

Map<String, dynamic> _$Input$ConfigurableOperationInputToJson(
        Input$ConfigurableOperationInput instance) =>
    <String, dynamic>{
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
      'code': instance.code,
    };

Input$CreateAddressInput _$Input$CreateAddressInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateAddressInput(
      city: json['city'] as String?,
      company: json['company'] as String?,
      countryCode: json['countryCode'] as String,
      customFields: json['customFields'] as String?,
      defaultBillingAddress: json['defaultBillingAddress'] as bool?,
      defaultShippingAddress: json['defaultShippingAddress'] as bool?,
      fullName: json['fullName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      province: json['province'] as String?,
      streetLine1: json['streetLine1'] as String,
      streetLine2: json['streetLine2'] as String?,
    );

Map<String, dynamic> _$Input$CreateAddressInputToJson(
        Input$CreateAddressInput instance) =>
    <String, dynamic>{
      'city': instance.city,
      'company': instance.company,
      'countryCode': instance.countryCode,
      'customFields': instance.customFields,
      'defaultBillingAddress': instance.defaultBillingAddress,
      'defaultShippingAddress': instance.defaultShippingAddress,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'province': instance.province,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
    };

Input$CreateCustomerInput _$Input$CreateCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$CreateCustomerInput(
      customFields: json['customFields'] as String?,
      emailAddress: json['emailAddress'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Input$CreateCustomerInputToJson(
        Input$CreateCustomerInput instance) =>
    <String, dynamic>{
      'customFields': instance.customFields,
      'emailAddress': instance.emailAddress,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'title': instance.title,
    };

Input$CustomerFilterParameter _$Input$CustomerFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerFilterParameter(
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      emailAddress: json['emailAddress'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['emailAddress'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['firstName'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['lastName'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['phoneNumber'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['title'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$CustomerFilterParameterToJson(
        Input$CustomerFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'emailAddress': instance.emailAddress?.toJson(),
      'firstName': instance.firstName?.toJson(),
      'id': instance.id?.toJson(),
      'lastName': instance.lastName?.toJson(),
      'phoneNumber': instance.phoneNumber?.toJson(),
      'title': instance.title?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$CustomerListOptions _$Input$CustomerListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerListOptions(
      filter: json['filter'] == null
          ? null
          : Input$CustomerFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$CustomerSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$CustomerListOptionsToJson(
        Input$CustomerListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$CustomerSortParameter _$Input$CustomerSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$CustomerSortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      emailAddress: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['emailAddress'],
          unknownValue: Enum$SortOrder.$unknown),
      firstName: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['firstName'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      lastName: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['lastName'],
          unknownValue: Enum$SortOrder.$unknown),
      phoneNumber: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['phoneNumber'],
          unknownValue: Enum$SortOrder.$unknown),
      title: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['title'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$CustomerSortParameterToJson(
        Input$CustomerSortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'emailAddress': _$Enum$SortOrderEnumMap[instance.emailAddress],
      'firstName': _$Enum$SortOrderEnumMap[instance.firstName],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'lastName': _$Enum$SortOrderEnumMap[instance.lastName],
      'phoneNumber': _$Enum$SortOrderEnumMap[instance.phoneNumber],
      'title': _$Enum$SortOrderEnumMap[instance.title],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
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

Input$DateOperators _$Input$DateOperatorsFromJson(Map<String, dynamic> json) =>
    Input$DateOperators(
      after: json['after'] as String?,
      before: json['before'] as String?,
      between: json['between'] == null
          ? null
          : Input$DateRange.fromJson(json['between'] as Map<String, dynamic>),
      eq: json['eq'] as String?,
      isNull: json['isNull'] as bool?,
    );

Map<String, dynamic> _$Input$DateOperatorsToJson(
        Input$DateOperators instance) =>
    <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
      'between': instance.between?.toJson(),
      'eq': instance.eq,
      'isNull': instance.isNull,
    };

Input$DateRange _$Input$DateRangeFromJson(Map<String, dynamic> json) =>
    Input$DateRange(
      end: json['end'] as String,
      start: json['start'] as String,
    );

Map<String, dynamic> _$Input$DateRangeToJson(Input$DateRange instance) =>
    <String, dynamic>{
      'end': instance.end,
      'start': instance.start,
    };

Input$FacetFilterParameter _$Input$FacetFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$FacetFilterParameter(
      code: json['code'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['code'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      languageCode: json['languageCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['languageCode'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['name'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$FacetFilterParameterToJson(
        Input$FacetFilterParameter instance) =>
    <String, dynamic>{
      'code': instance.code?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'id': instance.id?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$FacetListOptions _$Input$FacetListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$FacetListOptions(
      filter: json['filter'] == null
          ? null
          : Input$FacetFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$FacetSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$FacetListOptionsToJson(
        Input$FacetListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$FacetSortParameter _$Input$FacetSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$FacetSortParameter(
      code: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['code'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$FacetSortParameterToJson(
        Input$FacetSortParameter instance) =>
    <String, dynamic>{
      'code': _$Enum$SortOrderEnumMap[instance.code],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
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

Input$HistoryEntryFilterParameter _$Input$HistoryEntryFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntryFilterParameter(
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['type'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$HistoryEntryFilterParameterToJson(
        Input$HistoryEntryFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'id': instance.id?.toJson(),
      'type': instance.type?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$HistoryEntryListOptions _$Input$HistoryEntryListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntryListOptions(
      filter: json['filter'] == null
          ? null
          : Input$HistoryEntryFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$HistoryEntrySortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$HistoryEntryListOptionsToJson(
        Input$HistoryEntryListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$HistoryEntrySortParameter _$Input$HistoryEntrySortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$HistoryEntrySortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$HistoryEntrySortParameterToJson(
        Input$HistoryEntrySortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
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

Input$IDOperators _$Input$IDOperatorsFromJson(Map<String, dynamic> json) =>
    Input$IDOperators(
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isNull: json['isNull'] as bool?,
      notEq: json['notEq'] as String?,
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$Input$IDOperatorsToJson(Input$IDOperators instance) =>
    <String, dynamic>{
      'eq': instance.eq,
      'in': instance.$in,
      'isNull': instance.isNull,
      'notEq': instance.notEq,
      'notIn': instance.notIn,
    };

Input$NativeAuthInput _$Input$NativeAuthInputFromJson(
        Map<String, dynamic> json) =>
    Input$NativeAuthInput(
      password: json['password'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$Input$NativeAuthInputToJson(
        Input$NativeAuthInput instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
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

Input$NumberOperators _$Input$NumberOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$NumberOperators(
      between: json['between'] == null
          ? null
          : Input$NumberRange.fromJson(json['between'] as Map<String, dynamic>),
      eq: (json['eq'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      isNull: json['isNull'] as bool?,
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$Input$NumberOperatorsToJson(
        Input$NumberOperators instance) =>
    <String, dynamic>{
      'between': instance.between?.toJson(),
      'eq': instance.eq,
      'gt': instance.gt,
      'gte': instance.gte,
      'isNull': instance.isNull,
      'lt': instance.lt,
      'lte': instance.lte,
    };

Input$NumberRange _$Input$NumberRangeFromJson(Map<String, dynamic> json) =>
    Input$NumberRange(
      end: (json['end'] as num).toDouble(),
      start: (json['start'] as num).toDouble(),
    );

Map<String, dynamic> _$Input$NumberRangeToJson(Input$NumberRange instance) =>
    <String, dynamic>{
      'end': instance.end,
      'start': instance.start,
    };

Input$OrderFilterParameter _$Input$OrderFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$OrderFilterParameter(
      active: json['active'] == null
          ? null
          : Input$BooleanOperators.fromJson(
              json['active'] as Map<String, dynamic>),
      clientRequestToCancel: json['clientRequestToCancel'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['clientRequestToCancel'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['code'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      currencyCode: json['currencyCode'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['currencyCode'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      orderPlacedAt: json['orderPlacedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['orderPlacedAt'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['shipping'] as Map<String, dynamic>),
      shippingWithTax: json['shippingWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['shippingWithTax'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['state'] as Map<String, dynamic>),
      subTotal: json['subTotal'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['subTotal'] as Map<String, dynamic>),
      subTotalWithTax: json['subTotalWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['subTotalWithTax'] as Map<String, dynamic>),
      total: json['total'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['total'] as Map<String, dynamic>),
      totalQuantity: json['totalQuantity'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['totalQuantity'] as Map<String, dynamic>),
      totalWithTax: json['totalWithTax'] == null
          ? null
          : Input$NumberOperators.fromJson(
              json['totalWithTax'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$OrderFilterParameterToJson(
        Input$OrderFilterParameter instance) =>
    <String, dynamic>{
      'active': instance.active?.toJson(),
      'clientRequestToCancel': instance.clientRequestToCancel?.toJson(),
      'code': instance.code?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'currencyCode': instance.currencyCode?.toJson(),
      'id': instance.id?.toJson(),
      'orderPlacedAt': instance.orderPlacedAt?.toJson(),
      'shipping': instance.shipping?.toJson(),
      'shippingWithTax': instance.shippingWithTax?.toJson(),
      'state': instance.state?.toJson(),
      'subTotal': instance.subTotal?.toJson(),
      'subTotalWithTax': instance.subTotalWithTax?.toJson(),
      'total': instance.total?.toJson(),
      'totalQuantity': instance.totalQuantity?.toJson(),
      'totalWithTax': instance.totalWithTax?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$OrderListOptions _$Input$OrderListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$OrderListOptions(
      filter: json['filter'] == null
          ? null
          : Input$OrderFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$OrderSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$OrderListOptionsToJson(
        Input$OrderListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$OrderSortParameter _$Input$OrderSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$OrderSortParameter(
      clientRequestToCancel: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['clientRequestToCancel'],
          unknownValue: Enum$SortOrder.$unknown),
      code: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['code'],
          unknownValue: Enum$SortOrder.$unknown),
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      orderPlacedAt: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['orderPlacedAt'],
          unknownValue: Enum$SortOrder.$unknown),
      shipping: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['shipping'],
          unknownValue: Enum$SortOrder.$unknown),
      shippingWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['shippingWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      state: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['state'],
          unknownValue: Enum$SortOrder.$unknown),
      subTotal: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['subTotal'],
          unknownValue: Enum$SortOrder.$unknown),
      subTotalWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['subTotalWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      total: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['total'],
          unknownValue: Enum$SortOrder.$unknown),
      totalQuantity: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['totalQuantity'],
          unknownValue: Enum$SortOrder.$unknown),
      totalWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['totalWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$OrderSortParameterToJson(
        Input$OrderSortParameter instance) =>
    <String, dynamic>{
      'clientRequestToCancel':
          _$Enum$SortOrderEnumMap[instance.clientRequestToCancel],
      'code': _$Enum$SortOrderEnumMap[instance.code],
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'orderPlacedAt': _$Enum$SortOrderEnumMap[instance.orderPlacedAt],
      'shipping': _$Enum$SortOrderEnumMap[instance.shipping],
      'shippingWithTax': _$Enum$SortOrderEnumMap[instance.shippingWithTax],
      'state': _$Enum$SortOrderEnumMap[instance.state],
      'subTotal': _$Enum$SortOrderEnumMap[instance.subTotal],
      'subTotalWithTax': _$Enum$SortOrderEnumMap[instance.subTotalWithTax],
      'total': _$Enum$SortOrderEnumMap[instance.total],
      'totalQuantity': _$Enum$SortOrderEnumMap[instance.totalQuantity],
      'totalWithTax': _$Enum$SortOrderEnumMap[instance.totalWithTax],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

Input$PageFilterParameter _$Input$PageFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$PageFilterParameter(
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      enabled: json['enabled'] == null
          ? null
          : Input$BooleanOperators.fromJson(
              json['enabled'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['position'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['slug'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['text'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['title'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$PageFilterParameterToJson(
        Input$PageFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'enabled': instance.enabled?.toJson(),
      'id': instance.id?.toJson(),
      'position': instance.position?.toJson(),
      'slug': instance.slug?.toJson(),
      'text': instance.text?.toJson(),
      'title': instance.title?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$PageListOptions _$Input$PageListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$PageListOptions(
      filter: json['filter'] == null
          ? null
          : Input$PageFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$PageSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$PageListOptionsToJson(
        Input$PageListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$PageSortParameter _$Input$PageSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$PageSortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      position: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['position'],
          unknownValue: Enum$SortOrder.$unknown),
      slug: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['slug'],
          unknownValue: Enum$SortOrder.$unknown),
      text: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['text'],
          unknownValue: Enum$SortOrder.$unknown),
      title: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['title'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$PageSortParameterToJson(
        Input$PageSortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'position': _$Enum$SortOrderEnumMap[instance.position],
      'slug': _$Enum$SortOrderEnumMap[instance.slug],
      'text': _$Enum$SortOrderEnumMap[instance.text],
      'title': _$Enum$SortOrderEnumMap[instance.title],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

Input$PaymentInput _$Input$PaymentInputFromJson(Map<String, dynamic> json) =>
    Input$PaymentInput(
      metadata: json['metadata'] as String,
      method: json['method'] as String,
    );

Map<String, dynamic> _$Input$PaymentInputToJson(Input$PaymentInput instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'method': instance.method,
    };

Input$ProductFilterParameter _$Input$ProductFilterParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductFilterParameter(
      createdAt: json['createdAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : Input$StringOperators.fromJson(
              json['description'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
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
      updatedAt: json['updatedAt'] == null
          ? null
          : Input$DateOperators.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$ProductFilterParameterToJson(
        Input$ProductFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'description': instance.description?.toJson(),
      'id': instance.id?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'slug': instance.slug?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$ProductListOptions _$Input$ProductListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$ProductListOptions(
      filter: json['filter'] == null
          ? null
          : Input$ProductFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$ProductSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$ProductListOptionsToJson(
        Input$ProductListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$ProductSortParameter _$Input$ProductSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductSortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      description: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['description'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      slug: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['slug'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$ProductSortParameterToJson(
        Input$ProductSortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'description': _$Enum$SortOrderEnumMap[instance.description],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'slug': _$Enum$SortOrderEnumMap[instance.slug],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

Input$ProductVariantFilterParameter
    _$Input$ProductVariantFilterParameterFromJson(Map<String, dynamic> json) =>
        Input$ProductVariantFilterParameter(
          createdAt: json['createdAt'] == null
              ? null
              : Input$DateOperators.fromJson(
                  json['createdAt'] as Map<String, dynamic>),
          currencyCode: json['currencyCode'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['currencyCode'] as Map<String, dynamic>),
          id: json['id'] == null
              ? null
              : Input$IDOperators.fromJson(json['id'] as Map<String, dynamic>),
          languageCode: json['languageCode'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['languageCode'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['name'] as Map<String, dynamic>),
          price: json['price'] == null
              ? null
              : Input$NumberOperators.fromJson(
                  json['price'] as Map<String, dynamic>),
          priceWithTax: json['priceWithTax'] == null
              ? null
              : Input$NumberOperators.fromJson(
                  json['priceWithTax'] as Map<String, dynamic>),
          productId: json['productId'] == null
              ? null
              : Input$IDOperators.fromJson(
                  json['productId'] as Map<String, dynamic>),
          sku: json['sku'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['sku'] as Map<String, dynamic>),
          stockLevel: json['stockLevel'] == null
              ? null
              : Input$StringOperators.fromJson(
                  json['stockLevel'] as Map<String, dynamic>),
          updatedAt: json['updatedAt'] == null
              ? null
              : Input$DateOperators.fromJson(
                  json['updatedAt'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$Input$ProductVariantFilterParameterToJson(
        Input$ProductVariantFilterParameter instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toJson(),
      'currencyCode': instance.currencyCode?.toJson(),
      'id': instance.id?.toJson(),
      'languageCode': instance.languageCode?.toJson(),
      'name': instance.name?.toJson(),
      'price': instance.price?.toJson(),
      'priceWithTax': instance.priceWithTax?.toJson(),
      'productId': instance.productId?.toJson(),
      'sku': instance.sku?.toJson(),
      'stockLevel': instance.stockLevel?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

Input$ProductVariantListOptions _$Input$ProductVariantListOptionsFromJson(
        Map<String, dynamic> json) =>
    Input$ProductVariantListOptions(
      filter: json['filter'] == null
          ? null
          : Input$ProductVariantFilterParameter.fromJson(
              json['filter'] as Map<String, dynamic>),
      filterOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['filterOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$ProductVariantSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Input$ProductVariantListOptionsToJson(
        Input$ProductVariantListOptions instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'filterOperator': _$Enum$LogicalOperatorEnumMap[instance.filterOperator],
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
    };

Input$ProductVariantSortParameter _$Input$ProductVariantSortParameterFromJson(
        Map<String, dynamic> json) =>
    Input$ProductVariantSortParameter(
      createdAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['createdAt'],
          unknownValue: Enum$SortOrder.$unknown),
      id: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['id'],
          unknownValue: Enum$SortOrder.$unknown),
      name: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['name'],
          unknownValue: Enum$SortOrder.$unknown),
      price: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['price'],
          unknownValue: Enum$SortOrder.$unknown),
      priceWithTax: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['priceWithTax'],
          unknownValue: Enum$SortOrder.$unknown),
      productId: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['productId'],
          unknownValue: Enum$SortOrder.$unknown),
      sku: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['sku'],
          unknownValue: Enum$SortOrder.$unknown),
      stockLevel: $enumDecodeNullable(
          _$Enum$SortOrderEnumMap, json['stockLevel'],
          unknownValue: Enum$SortOrder.$unknown),
      updatedAt: $enumDecodeNullable(_$Enum$SortOrderEnumMap, json['updatedAt'],
          unknownValue: Enum$SortOrder.$unknown),
    );

Map<String, dynamic> _$Input$ProductVariantSortParameterToJson(
        Input$ProductVariantSortParameter instance) =>
    <String, dynamic>{
      'createdAt': _$Enum$SortOrderEnumMap[instance.createdAt],
      'id': _$Enum$SortOrderEnumMap[instance.id],
      'name': _$Enum$SortOrderEnumMap[instance.name],
      'price': _$Enum$SortOrderEnumMap[instance.price],
      'priceWithTax': _$Enum$SortOrderEnumMap[instance.priceWithTax],
      'productId': _$Enum$SortOrderEnumMap[instance.productId],
      'sku': _$Enum$SortOrderEnumMap[instance.sku],
      'stockLevel': _$Enum$SortOrderEnumMap[instance.stockLevel],
      'updatedAt': _$Enum$SortOrderEnumMap[instance.updatedAt],
    };

Input$RegisterCustomerInput _$Input$RegisterCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$RegisterCustomerInput(
      emailAddress: json['emailAddress'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      password: json['password'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Input$RegisterCustomerInputToJson(
        Input$RegisterCustomerInput instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'title': instance.title,
    };

Input$SearchInput _$Input$SearchInputFromJson(Map<String, dynamic> json) =>
    Input$SearchInput(
      collectionId: json['collectionId'] as String?,
      collectionSlug: json['collectionSlug'] as String?,
      facetValueFilters: (json['facetValueFilters'] as List<dynamic>?)
          ?.map((e) =>
              Input$FacetValueFilterInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      facetValueIds: (json['facetValueIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      facetValueOperator: $enumDecodeNullable(
          _$Enum$LogicalOperatorEnumMap, json['facetValueOperator'],
          unknownValue: Enum$LogicalOperator.$unknown),
      groupByProduct: json['groupByProduct'] as bool?,
      inStock: json['inStock'] as bool?,
      skip: json['skip'] as int?,
      sort: json['sort'] == null
          ? null
          : Input$SearchResultSortParameter.fromJson(
              json['sort'] as Map<String, dynamic>),
      take: json['take'] as int?,
      term: json['term'] as String?,
    );

Map<String, dynamic> _$Input$SearchInputToJson(Input$SearchInput instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionSlug': instance.collectionSlug,
      'facetValueFilters':
          instance.facetValueFilters?.map((e) => e.toJson()).toList(),
      'facetValueIds': instance.facetValueIds,
      'facetValueOperator':
          _$Enum$LogicalOperatorEnumMap[instance.facetValueOperator],
      'groupByProduct': instance.groupByProduct,
      'inStock': instance.inStock,
      'skip': instance.skip,
      'sort': instance.sort?.toJson(),
      'take': instance.take,
      'term': instance.term,
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

Input$StringOperators _$Input$StringOperatorsFromJson(
        Map<String, dynamic> json) =>
    Input$StringOperators(
      contains: json['contains'] as String?,
      eq: json['eq'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isNull: json['isNull'] as bool?,
      notContains: json['notContains'] as String?,
      notEq: json['notEq'] as String?,
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$Input$StringOperatorsToJson(
        Input$StringOperators instance) =>
    <String, dynamic>{
      'contains': instance.contains,
      'eq': instance.eq,
      'in': instance.$in,
      'isNull': instance.isNull,
      'notContains': instance.notContains,
      'notEq': instance.notEq,
      'notIn': instance.notIn,
      'regex': instance.regex,
    };

Input$UpdateAddressInput _$Input$UpdateAddressInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateAddressInput(
      city: json['city'] as String?,
      company: json['company'] as String?,
      countryCode: json['countryCode'] as String?,
      customFields: json['customFields'] as String?,
      defaultBillingAddress: json['defaultBillingAddress'] as bool?,
      defaultShippingAddress: json['defaultShippingAddress'] as bool?,
      fullName: json['fullName'] as String?,
      id: json['id'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      postalCode: json['postalCode'] as String?,
      province: json['province'] as String?,
      streetLine1: json['streetLine1'] as String?,
      streetLine2: json['streetLine2'] as String?,
    );

Map<String, dynamic> _$Input$UpdateAddressInputToJson(
        Input$UpdateAddressInput instance) =>
    <String, dynamic>{
      'city': instance.city,
      'company': instance.company,
      'countryCode': instance.countryCode,
      'customFields': instance.customFields,
      'defaultBillingAddress': instance.defaultBillingAddress,
      'defaultShippingAddress': instance.defaultShippingAddress,
      'fullName': instance.fullName,
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'postalCode': instance.postalCode,
      'province': instance.province,
      'streetLine1': instance.streetLine1,
      'streetLine2': instance.streetLine2,
    };

Input$UpdateCustomerInput _$Input$UpdateCustomerInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateCustomerInput(
      customFields: json['customFields'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$Input$UpdateCustomerInputToJson(
        Input$UpdateCustomerInput instance) =>
    <String, dynamic>{
      'customFields': instance.customFields,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'title': instance.title,
    };

Input$UpdateOrderCustomFieldsInput _$Input$UpdateOrderCustomFieldsInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateOrderCustomFieldsInput(
      clientRequestToCancel: json['clientRequestToCancel'] as int?,
    );

Map<String, dynamic> _$Input$UpdateOrderCustomFieldsInputToJson(
        Input$UpdateOrderCustomFieldsInput instance) =>
    <String, dynamic>{
      'clientRequestToCancel': instance.clientRequestToCancel,
    };

Input$UpdateOrderInput _$Input$UpdateOrderInputFromJson(
        Map<String, dynamic> json) =>
    Input$UpdateOrderInput(
      customFields: json['customFields'] == null
          ? null
          : Input$UpdateOrderCustomFieldsInput.fromJson(
              json['customFields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Input$UpdateOrderInputToJson(
        Input$UpdateOrderInput instance) =>
    <String, dynamic>{
      'customFields': instance.customFields?.toJson(),
    };
