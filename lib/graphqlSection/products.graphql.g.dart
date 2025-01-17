// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fragment$Options _$Fragment$OptionsFromJson(Map<String, dynamic> json) =>
    Fragment$Options(
      name: json['name'] as String,
      code: json['code'] as String,
      id: json['id'] as String,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Fragment$OptionsToJson(Fragment$Options instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'id': instance.id,
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

Variables$Query$GetAllProducts _$Variables$Query$GetAllProductsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetAllProducts(
      take: json['take'] as int?,
    );

Map<String, dynamic> _$Variables$Query$GetAllProductsToJson(
        Variables$Query$GetAllProducts instance) =>
    <String, dynamic>{
      'take': instance.take,
    };

Query$GetAllProducts _$Query$GetAllProductsFromJson(
        Map<String, dynamic> json) =>
    Query$GetAllProducts(
      products: Query$GetAllProducts$products.fromJson(
          json['products'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAllProductsToJson(
        Query$GetAllProducts instance) =>
    <String, dynamic>{
      'products': instance.products.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products _$Query$GetAllProducts$productsFromJson(
        Map<String, dynamic> json) =>
    Query$GetAllProducts$products(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$GetAllProducts$products$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAllProducts$productsToJson(
        Query$GetAllProducts$products instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items
    _$Query$GetAllProducts$products$itemsFromJson(Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          variants: (json['variants'] as List<dynamic>)
              .map((e) => Query$GetAllProducts$products$items$variants.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          assets: (json['assets'] as List<dynamic>)
              .map((e) => Query$GetAllProducts$products$items$assets.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          collections: (json['collections'] as List<dynamic>)
              .map((e) =>
                  Query$GetAllProducts$products$items$collections.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$itemsToJson(
        Query$GetAllProducts$products$items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$variants
    _$Query$GetAllProducts$products$items$variantsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$variants(
          id: json['id'] as String,
          name: json['name'] as String,
          currencyCode: $enumDecode(
              _$Enum$CurrencyCodeEnumMap, json['currencyCode'],
              unknownValue: Enum$CurrencyCode.$unknown),
          price: json['price'] as int,
          priceWithTax: json['priceWithTax'] as int,
          productId: json['productId'] as String,
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          options: (json['options'] as List<dynamic>)
              .map((e) => Fragment$Options.fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$variantsToJson(
        Query$GetAllProducts$products$items$variants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currencyCode': _$Enum$CurrencyCodeEnumMap[instance.currencyCode]!,
      'price': instance.price,
      'priceWithTax': instance.priceWithTax,
      'productId': instance.productId,
      'featuredAsset': instance.featuredAsset?.toJson(),
      'options': instance.options.map((e) => e.toJson()).toList(),
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

Query$GetAllProducts$products$items$assets
    _$Query$GetAllProducts$products$items$assetsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$assets(
          id: json['id'] as String,
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$assetsToJson(
        Query$GetAllProducts$products$items$assets instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'preview': instance.preview,
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$collections
    _$Query$GetAllProducts$products$items$collectionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$collections(
          id: json['id'] as String,
          name: json['name'] as String,
          assets: (json['assets'] as List<dynamic>)
              .map((e) => Query$GetAllProducts$products$items$collections$assets
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllProducts$products$items$collectionsToJson(
        Query$GetAllProducts$products$items$collections instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllProducts$products$items$collections$assets
    _$Query$GetAllProducts$products$items$collections$assetsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllProducts$products$items$collections$assets(
          id: json['id'] as String,
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetAllProducts$products$items$collections$assetsToJson(
            Query$GetAllProducts$products$items$collections$assets instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'preview': instance.preview,
          '__typename': instance.$__typename,
        };

Variables$Query$SearchProducts _$Variables$Query$SearchProductsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$SearchProducts(
      input: Input$SearchInput.fromJson(json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$SearchProductsToJson(
        Variables$Query$SearchProducts instance) =>
    <String, dynamic>{
      'input': instance.input.toJson(),
    };

Query$SearchProducts _$Query$SearchProductsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts(
      search: Query$SearchProducts$search.fromJson(
          json['search'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProductsToJson(
        Query$SearchProducts instance) =>
    <String, dynamic>{
      'search': instance.search.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search _$Query$SearchProducts$searchFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts$search(
      items: (json['items'] as List<dynamic>)
          .map((e) => Query$SearchProducts$search$items.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'] as int,
      facetValues: (json['facetValues'] as List<dynamic>)
          .map((e) => Query$SearchProducts$search$facetValues.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProducts$searchToJson(
        Query$SearchProducts$search instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalItems': instance.totalItems,
      'facetValues': instance.facetValues.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items _$Query$SearchProducts$search$itemsFromJson(
        Map<String, dynamic> json) =>
    Query$SearchProducts$search$items(
      productVariantId: json['productVariantId'] as String,
      productId: json['productId'] as String,
      slug: json['slug'] as String,
      productName: json['productName'] as String,
      description: json['description'] as String,
      collectionIds: (json['collectionIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      priceWithTax: Query$SearchProducts$search$items$priceWithTax.fromJson(
          json['priceWithTax'] as Map<String, dynamic>),
      productAsset: json['productAsset'] == null
          ? null
          : Query$SearchProducts$search$items$productAsset.fromJson(
              json['productAsset'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$SearchProducts$search$itemsToJson(
        Query$SearchProducts$search$items instance) =>
    <String, dynamic>{
      'productVariantId': instance.productVariantId,
      'productId': instance.productId,
      'slug': instance.slug,
      'productName': instance.productName,
      'description': instance.description,
      'collectionIds': instance.collectionIds,
      'priceWithTax': instance.priceWithTax.toJson(),
      'productAsset': instance.productAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$priceWithTax
    _$Query$SearchProducts$search$items$priceWithTaxFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$priceWithTax(
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$items$priceWithTaxToJson(
        Query$SearchProducts$search$items$priceWithTax instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$priceWithTax$$PriceRange
    _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$priceWithTax$$PriceRange(
          $__typename: json['__typename'] as String,
          min: json['min'] as int,
          max: json['max'] as int,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$items$priceWithTax$$PriceRangeToJson(
        Query$SearchProducts$search$items$priceWithTax$$PriceRange instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'min': instance.min,
      'max': instance.max,
    };

Query$SearchProducts$search$items$productAsset
    _$Query$SearchProducts$search$items$productAssetFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$productAsset(
          id: json['id'] as String,
          preview: json['preview'] as String,
          focalPoint: json['focalPoint'] == null
              ? null
              : Query$SearchProducts$search$items$productAsset$focalPoint
                  .fromJson(json['focalPoint'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$items$productAssetToJson(
        Query$SearchProducts$search$items$productAsset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preview': instance.preview,
      'focalPoint': instance.focalPoint?.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$items$productAsset$focalPoint
    _$Query$SearchProducts$search$items$productAsset$focalPointFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$items$productAsset$focalPoint(
          x: (json['x'] as num).toDouble(),
          y: (json['y'] as num).toDouble(),
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$items$productAsset$focalPointToJson(
        Query$SearchProducts$search$items$productAsset$focalPoint instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues
    _$Query$SearchProducts$search$facetValuesFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues(
          count: json['count'] as int,
          facetValue:
              Query$SearchProducts$search$facetValues$facetValue.fromJson(
                  json['facetValue'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$facetValuesToJson(
        Query$SearchProducts$search$facetValues instance) =>
    <String, dynamic>{
      'count': instance.count,
      'facetValue': instance.facetValue.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues$facetValue
    _$Query$SearchProducts$search$facetValues$facetValueFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues$facetValue(
          id: json['id'] as String,
          name: json['name'] as String,
          facet:
              Query$SearchProducts$search$facetValues$facetValue$facet.fromJson(
                  json['facet'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$SearchProducts$search$facetValues$facetValueToJson(
        Query$SearchProducts$search$facetValues$facetValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'facet': instance.facet.toJson(),
      '__typename': instance.$__typename,
    };

Query$SearchProducts$search$facetValues$facetValue$facet
    _$Query$SearchProducts$search$facetValues$facetValue$facetFromJson(
            Map<String, dynamic> json) =>
        Query$SearchProducts$search$facetValues$facetValue$facet(
          id: json['id'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$Query$SearchProducts$search$facetValues$facetValue$facetToJson(
        Query$SearchProducts$search$facetValues$facetValue$facet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Variables$Query$GetProductDetail _$Variables$Query$GetProductDetailFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetProductDetail(
      id: json['id'] as String,
    );

Map<String, dynamic> _$Variables$Query$GetProductDetailToJson(
        Variables$Query$GetProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

Query$GetProductDetail _$Query$GetProductDetailFromJson(
        Map<String, dynamic> json) =>
    Query$GetProductDetail(
      product: json['product'] == null
          ? null
          : Query$GetProductDetail$product.fromJson(
              json['product'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetProductDetailToJson(
        Query$GetProductDetail instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product _$Query$GetProductDetail$productFromJson(
        Map<String, dynamic> json) =>
    Query$GetProductDetail$product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => Query$GetProductDetail$product$variants.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      featuredAsset: json['featuredAsset'] == null
          ? null
          : Fragment$Asset.fromJson(
              json['featuredAsset'] as Map<String, dynamic>),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => Fragment$Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: (json['collections'] as List<dynamic>)
          .map((e) => Query$GetProductDetail$product$collections.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetProductDetail$productToJson(
        Query$GetProductDetail$product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'variants': instance.variants.map((e) => e.toJson()).toList(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'collections': instance.collections.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$variants
    _$Query$GetProductDetail$product$variantsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$variants(
          id: json['id'] as String,
          name: json['name'] as String,
          options: (json['options'] as List<dynamic>)
              .map((e) => Fragment$Options.fromJson(e as Map<String, dynamic>))
              .toList(),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Fragment$Asset.fromJson(
                  json['featuredAsset'] as Map<String, dynamic>),
          price: json['price'] as int,
          priceWithTax: json['priceWithTax'] as int,
          currencyCode: $enumDecode(
              _$Enum$CurrencyCodeEnumMap, json['currencyCode'],
              unknownValue: Enum$CurrencyCode.$unknown),
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          assets: (json['assets'] as List<dynamic>)
              .map((e) =>
                  Query$GetProductDetail$product$variants$assets.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          sku: json['sku'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$variantsToJson(
        Query$GetProductDetail$product$variants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      'price': instance.price,
      'priceWithTax': instance.priceWithTax,
      'currencyCode': _$Enum$CurrencyCodeEnumMap[instance.currencyCode]!,
      'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
      'assets': instance.assets.map((e) => e.toJson()).toList(),
      'sku': instance.sku,
      '__typename': instance.$__typename,
    };

const _$Enum$LanguageCodeEnumMap = {
  Enum$LanguageCode.af: 'af',
  Enum$LanguageCode.ak: 'ak',
  Enum$LanguageCode.am: 'am',
  Enum$LanguageCode.ar: 'ar',
  Enum$LanguageCode.$as: 'as',
  Enum$LanguageCode.az: 'az',
  Enum$LanguageCode.be: 'be',
  Enum$LanguageCode.bg: 'bg',
  Enum$LanguageCode.bm: 'bm',
  Enum$LanguageCode.bn: 'bn',
  Enum$LanguageCode.bo: 'bo',
  Enum$LanguageCode.br: 'br',
  Enum$LanguageCode.bs: 'bs',
  Enum$LanguageCode.ca: 'ca',
  Enum$LanguageCode.ce: 'ce',
  Enum$LanguageCode.co: 'co',
  Enum$LanguageCode.cs: 'cs',
  Enum$LanguageCode.cu: 'cu',
  Enum$LanguageCode.cy: 'cy',
  Enum$LanguageCode.da: 'da',
  Enum$LanguageCode.de: 'de',
  Enum$LanguageCode.de_AT: 'de_AT',
  Enum$LanguageCode.de_CH: 'de_CH',
  Enum$LanguageCode.dz: 'dz',
  Enum$LanguageCode.ee: 'ee',
  Enum$LanguageCode.el: 'el',
  Enum$LanguageCode.en: 'en',
  Enum$LanguageCode.en_AU: 'en_AU',
  Enum$LanguageCode.en_CA: 'en_CA',
  Enum$LanguageCode.en_GB: 'en_GB',
  Enum$LanguageCode.en_US: 'en_US',
  Enum$LanguageCode.eo: 'eo',
  Enum$LanguageCode.es: 'es',
  Enum$LanguageCode.es_ES: 'es_ES',
  Enum$LanguageCode.es_MX: 'es_MX',
  Enum$LanguageCode.et: 'et',
  Enum$LanguageCode.eu: 'eu',
  Enum$LanguageCode.fa: 'fa',
  Enum$LanguageCode.fa_AF: 'fa_AF',
  Enum$LanguageCode.ff: 'ff',
  Enum$LanguageCode.fi: 'fi',
  Enum$LanguageCode.fo: 'fo',
  Enum$LanguageCode.fr: 'fr',
  Enum$LanguageCode.fr_CA: 'fr_CA',
  Enum$LanguageCode.fr_CH: 'fr_CH',
  Enum$LanguageCode.fy: 'fy',
  Enum$LanguageCode.ga: 'ga',
  Enum$LanguageCode.gd: 'gd',
  Enum$LanguageCode.gl: 'gl',
  Enum$LanguageCode.gu: 'gu',
  Enum$LanguageCode.gv: 'gv',
  Enum$LanguageCode.ha: 'ha',
  Enum$LanguageCode.he: 'he',
  Enum$LanguageCode.hi: 'hi',
  Enum$LanguageCode.hr: 'hr',
  Enum$LanguageCode.ht: 'ht',
  Enum$LanguageCode.hu: 'hu',
  Enum$LanguageCode.hy: 'hy',
  Enum$LanguageCode.ia: 'ia',
  Enum$LanguageCode.id: 'id',
  Enum$LanguageCode.ig: 'ig',
  Enum$LanguageCode.ii: 'ii',
  Enum$LanguageCode.$is: 'is',
  Enum$LanguageCode.it: 'it',
  Enum$LanguageCode.ja: 'ja',
  Enum$LanguageCode.jv: 'jv',
  Enum$LanguageCode.ka: 'ka',
  Enum$LanguageCode.ki: 'ki',
  Enum$LanguageCode.kk: 'kk',
  Enum$LanguageCode.kl: 'kl',
  Enum$LanguageCode.km: 'km',
  Enum$LanguageCode.kn: 'kn',
  Enum$LanguageCode.ko: 'ko',
  Enum$LanguageCode.ks: 'ks',
  Enum$LanguageCode.ku: 'ku',
  Enum$LanguageCode.kw: 'kw',
  Enum$LanguageCode.ky: 'ky',
  Enum$LanguageCode.la: 'la',
  Enum$LanguageCode.lb: 'lb',
  Enum$LanguageCode.lg: 'lg',
  Enum$LanguageCode.ln: 'ln',
  Enum$LanguageCode.lo: 'lo',
  Enum$LanguageCode.lt: 'lt',
  Enum$LanguageCode.lu: 'lu',
  Enum$LanguageCode.lv: 'lv',
  Enum$LanguageCode.mg: 'mg',
  Enum$LanguageCode.mi: 'mi',
  Enum$LanguageCode.mk: 'mk',
  Enum$LanguageCode.ml: 'ml',
  Enum$LanguageCode.mn: 'mn',
  Enum$LanguageCode.mr: 'mr',
  Enum$LanguageCode.ms: 'ms',
  Enum$LanguageCode.mt: 'mt',
  Enum$LanguageCode.my: 'my',
  Enum$LanguageCode.nb: 'nb',
  Enum$LanguageCode.nd: 'nd',
  Enum$LanguageCode.ne: 'ne',
  Enum$LanguageCode.nl: 'nl',
  Enum$LanguageCode.nl_BE: 'nl_BE',
  Enum$LanguageCode.nn: 'nn',
  Enum$LanguageCode.ny: 'ny',
  Enum$LanguageCode.om: 'om',
  Enum$LanguageCode.or: 'or',
  Enum$LanguageCode.os: 'os',
  Enum$LanguageCode.pa: 'pa',
  Enum$LanguageCode.pl: 'pl',
  Enum$LanguageCode.ps: 'ps',
  Enum$LanguageCode.pt: 'pt',
  Enum$LanguageCode.pt_BR: 'pt_BR',
  Enum$LanguageCode.pt_PT: 'pt_PT',
  Enum$LanguageCode.qu: 'qu',
  Enum$LanguageCode.rm: 'rm',
  Enum$LanguageCode.rn: 'rn',
  Enum$LanguageCode.ro: 'ro',
  Enum$LanguageCode.ro_MD: 'ro_MD',
  Enum$LanguageCode.ru: 'ru',
  Enum$LanguageCode.rw: 'rw',
  Enum$LanguageCode.sa: 'sa',
  Enum$LanguageCode.sd: 'sd',
  Enum$LanguageCode.se: 'se',
  Enum$LanguageCode.sg: 'sg',
  Enum$LanguageCode.si: 'si',
  Enum$LanguageCode.sk: 'sk',
  Enum$LanguageCode.sl: 'sl',
  Enum$LanguageCode.sm: 'sm',
  Enum$LanguageCode.sn: 'sn',
  Enum$LanguageCode.so: 'so',
  Enum$LanguageCode.sq: 'sq',
  Enum$LanguageCode.sr: 'sr',
  Enum$LanguageCode.st: 'st',
  Enum$LanguageCode.su: 'su',
  Enum$LanguageCode.sv: 'sv',
  Enum$LanguageCode.sw: 'sw',
  Enum$LanguageCode.sw_CD: 'sw_CD',
  Enum$LanguageCode.ta: 'ta',
  Enum$LanguageCode.te: 'te',
  Enum$LanguageCode.tg: 'tg',
  Enum$LanguageCode.th: 'th',
  Enum$LanguageCode.ti: 'ti',
  Enum$LanguageCode.tk: 'tk',
  Enum$LanguageCode.to: 'to',
  Enum$LanguageCode.tr: 'tr',
  Enum$LanguageCode.tt: 'tt',
  Enum$LanguageCode.ug: 'ug',
  Enum$LanguageCode.uk: 'uk',
  Enum$LanguageCode.ur: 'ur',
  Enum$LanguageCode.uz: 'uz',
  Enum$LanguageCode.vi: 'vi',
  Enum$LanguageCode.vo: 'vo',
  Enum$LanguageCode.wo: 'wo',
  Enum$LanguageCode.xh: 'xh',
  Enum$LanguageCode.yi: 'yi',
  Enum$LanguageCode.yo: 'yo',
  Enum$LanguageCode.zh: 'zh',
  Enum$LanguageCode.zh_Hans: 'zh_Hans',
  Enum$LanguageCode.zh_Hant: 'zh_Hant',
  Enum$LanguageCode.zu: 'zu',
  Enum$LanguageCode.$unknown: r'$unknown',
};

Query$GetProductDetail$product$variants$assets
    _$Query$GetProductDetail$product$variants$assetsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$variants$assets(
          name: json['name'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$variants$assetsToJson(
        Query$GetProductDetail$product$variants$assets instance) =>
    <String, dynamic>{
      'name': instance.name,
      'preview': instance.preview,
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$collections
    _$Query$GetProductDetail$product$collectionsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$collections(
          id: json['id'] as String,
          slug: json['slug'] as String,
          breadcrumbs: (json['breadcrumbs'] as List<dynamic>)
              .map((e) => Query$GetProductDetail$product$collections$breadcrumbs
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetProductDetail$product$collectionsToJson(
        Query$GetProductDetail$product$collections instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'breadcrumbs': instance.breadcrumbs.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetProductDetail$product$collections$breadcrumbs
    _$Query$GetProductDetail$product$collections$breadcrumbsFromJson(
            Map<String, dynamic> json) =>
        Query$GetProductDetail$product$collections$breadcrumbs(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetProductDetail$product$collections$breadcrumbsToJson(
            Query$GetProductDetail$product$collections$breadcrumbs instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'slug': instance.slug,
          '__typename': instance.$__typename,
        };
