// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

Query$GetAvailableCountries _$Query$GetAvailableCountriesFromJson(
        Map<String, dynamic> json) =>
    Query$GetAvailableCountries(
      availableCountries: (json['availableCountries'] as List<dynamic>)
          .map((e) => Query$GetAvailableCountries$availableCountries.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAvailableCountriesToJson(
        Query$GetAvailableCountries instance) =>
    <String, dynamic>{
      'availableCountries':
          instance.availableCountries.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAvailableCountries$availableCountries
    _$Query$GetAvailableCountries$availableCountriesFromJson(
            Map<String, dynamic> json) =>
        Query$GetAvailableCountries$availableCountries(
          enabled: json['enabled'] as bool,
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          translations: (json['translations'] as List<dynamic>)
              .map((e) =>
                  Query$GetAvailableCountries$availableCountries$translations
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAvailableCountries$availableCountriesToJson(
        Query$GetAvailableCountries$availableCountries instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
      'translations': instance.translations.map((e) => e.toJson()).toList(),
      'name': instance.name,
      '__typename': instance.$__typename,
    };

const _$Enum$LanguageCodeEnumMap = {
  Enum$LanguageCode.af: 'af',
  Enum$LanguageCode.ak: 'ak',
  Enum$LanguageCode.sq: 'sq',
  Enum$LanguageCode.am: 'am',
  Enum$LanguageCode.ar: 'ar',
  Enum$LanguageCode.hy: 'hy',
  Enum$LanguageCode.$as: 'as',
  Enum$LanguageCode.az: 'az',
  Enum$LanguageCode.bm: 'bm',
  Enum$LanguageCode.bn: 'bn',
  Enum$LanguageCode.eu: 'eu',
  Enum$LanguageCode.be: 'be',
  Enum$LanguageCode.bs: 'bs',
  Enum$LanguageCode.br: 'br',
  Enum$LanguageCode.bg: 'bg',
  Enum$LanguageCode.my: 'my',
  Enum$LanguageCode.ca: 'ca',
  Enum$LanguageCode.ce: 'ce',
  Enum$LanguageCode.zh: 'zh',
  Enum$LanguageCode.zh_Hans: 'zh_Hans',
  Enum$LanguageCode.zh_Hant: 'zh_Hant',
  Enum$LanguageCode.cu: 'cu',
  Enum$LanguageCode.kw: 'kw',
  Enum$LanguageCode.co: 'co',
  Enum$LanguageCode.hr: 'hr',
  Enum$LanguageCode.cs: 'cs',
  Enum$LanguageCode.da: 'da',
  Enum$LanguageCode.nl: 'nl',
  Enum$LanguageCode.nl_BE: 'nl_BE',
  Enum$LanguageCode.dz: 'dz',
  Enum$LanguageCode.en: 'en',
  Enum$LanguageCode.en_AU: 'en_AU',
  Enum$LanguageCode.en_CA: 'en_CA',
  Enum$LanguageCode.en_GB: 'en_GB',
  Enum$LanguageCode.en_US: 'en_US',
  Enum$LanguageCode.eo: 'eo',
  Enum$LanguageCode.et: 'et',
  Enum$LanguageCode.ee: 'ee',
  Enum$LanguageCode.fo: 'fo',
  Enum$LanguageCode.fi: 'fi',
  Enum$LanguageCode.fr: 'fr',
  Enum$LanguageCode.fr_CA: 'fr_CA',
  Enum$LanguageCode.fr_CH: 'fr_CH',
  Enum$LanguageCode.ff: 'ff',
  Enum$LanguageCode.gl: 'gl',
  Enum$LanguageCode.lg: 'lg',
  Enum$LanguageCode.ka: 'ka',
  Enum$LanguageCode.de: 'de',
  Enum$LanguageCode.de_AT: 'de_AT',
  Enum$LanguageCode.de_CH: 'de_CH',
  Enum$LanguageCode.el: 'el',
  Enum$LanguageCode.gu: 'gu',
  Enum$LanguageCode.ht: 'ht',
  Enum$LanguageCode.ha: 'ha',
  Enum$LanguageCode.he: 'he',
  Enum$LanguageCode.hi: 'hi',
  Enum$LanguageCode.hu: 'hu',
  Enum$LanguageCode.$is: 'is',
  Enum$LanguageCode.ig: 'ig',
  Enum$LanguageCode.id: 'id',
  Enum$LanguageCode.ia: 'ia',
  Enum$LanguageCode.ga: 'ga',
  Enum$LanguageCode.it: 'it',
  Enum$LanguageCode.ja: 'ja',
  Enum$LanguageCode.jv: 'jv',
  Enum$LanguageCode.kl: 'kl',
  Enum$LanguageCode.kn: 'kn',
  Enum$LanguageCode.ks: 'ks',
  Enum$LanguageCode.kk: 'kk',
  Enum$LanguageCode.km: 'km',
  Enum$LanguageCode.ki: 'ki',
  Enum$LanguageCode.rw: 'rw',
  Enum$LanguageCode.ko: 'ko',
  Enum$LanguageCode.ku: 'ku',
  Enum$LanguageCode.ky: 'ky',
  Enum$LanguageCode.lo: 'lo',
  Enum$LanguageCode.la: 'la',
  Enum$LanguageCode.lv: 'lv',
  Enum$LanguageCode.ln: 'ln',
  Enum$LanguageCode.lt: 'lt',
  Enum$LanguageCode.lu: 'lu',
  Enum$LanguageCode.lb: 'lb',
  Enum$LanguageCode.mk: 'mk',
  Enum$LanguageCode.mg: 'mg',
  Enum$LanguageCode.ms: 'ms',
  Enum$LanguageCode.ml: 'ml',
  Enum$LanguageCode.mt: 'mt',
  Enum$LanguageCode.gv: 'gv',
  Enum$LanguageCode.mi: 'mi',
  Enum$LanguageCode.mr: 'mr',
  Enum$LanguageCode.mn: 'mn',
  Enum$LanguageCode.ne: 'ne',
  Enum$LanguageCode.nd: 'nd',
  Enum$LanguageCode.se: 'se',
  Enum$LanguageCode.nb: 'nb',
  Enum$LanguageCode.nn: 'nn',
  Enum$LanguageCode.ny: 'ny',
  Enum$LanguageCode.or: 'or',
  Enum$LanguageCode.om: 'om',
  Enum$LanguageCode.os: 'os',
  Enum$LanguageCode.ps: 'ps',
  Enum$LanguageCode.fa: 'fa',
  Enum$LanguageCode.fa_AF: 'fa_AF',
  Enum$LanguageCode.pl: 'pl',
  Enum$LanguageCode.pt: 'pt',
  Enum$LanguageCode.pt_BR: 'pt_BR',
  Enum$LanguageCode.pt_PT: 'pt_PT',
  Enum$LanguageCode.pa: 'pa',
  Enum$LanguageCode.qu: 'qu',
  Enum$LanguageCode.ro: 'ro',
  Enum$LanguageCode.ro_MD: 'ro_MD',
  Enum$LanguageCode.rm: 'rm',
  Enum$LanguageCode.rn: 'rn',
  Enum$LanguageCode.ru: 'ru',
  Enum$LanguageCode.sm: 'sm',
  Enum$LanguageCode.sg: 'sg',
  Enum$LanguageCode.sa: 'sa',
  Enum$LanguageCode.gd: 'gd',
  Enum$LanguageCode.sr: 'sr',
  Enum$LanguageCode.sn: 'sn',
  Enum$LanguageCode.ii: 'ii',
  Enum$LanguageCode.sd: 'sd',
  Enum$LanguageCode.si: 'si',
  Enum$LanguageCode.sk: 'sk',
  Enum$LanguageCode.sl: 'sl',
  Enum$LanguageCode.so: 'so',
  Enum$LanguageCode.st: 'st',
  Enum$LanguageCode.es: 'es',
  Enum$LanguageCode.es_ES: 'es_ES',
  Enum$LanguageCode.es_MX: 'es_MX',
  Enum$LanguageCode.su: 'su',
  Enum$LanguageCode.sw: 'sw',
  Enum$LanguageCode.sw_CD: 'sw_CD',
  Enum$LanguageCode.sv: 'sv',
  Enum$LanguageCode.tg: 'tg',
  Enum$LanguageCode.ta: 'ta',
  Enum$LanguageCode.tt: 'tt',
  Enum$LanguageCode.te: 'te',
  Enum$LanguageCode.th: 'th',
  Enum$LanguageCode.bo: 'bo',
  Enum$LanguageCode.ti: 'ti',
  Enum$LanguageCode.to: 'to',
  Enum$LanguageCode.tr: 'tr',
  Enum$LanguageCode.tk: 'tk',
  Enum$LanguageCode.uk: 'uk',
  Enum$LanguageCode.ur: 'ur',
  Enum$LanguageCode.ug: 'ug',
  Enum$LanguageCode.uz: 'uz',
  Enum$LanguageCode.vi: 'vi',
  Enum$LanguageCode.vo: 'vo',
  Enum$LanguageCode.cy: 'cy',
  Enum$LanguageCode.fy: 'fy',
  Enum$LanguageCode.wo: 'wo',
  Enum$LanguageCode.xh: 'xh',
  Enum$LanguageCode.yi: 'yi',
  Enum$LanguageCode.yo: 'yo',
  Enum$LanguageCode.zu: 'zu',
  Enum$LanguageCode.$unknown: r'$unknown',
};

Query$GetAvailableCountries$availableCountries$translations
    _$Query$GetAvailableCountries$availableCountries$translationsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAvailableCountries$availableCountries$translations(
          languageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['languageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetAvailableCountries$availableCountries$translationsToJson(
            Query$GetAvailableCountries$availableCountries$translations
                instance) =>
        <String, dynamic>{
          'languageCode': _$Enum$LanguageCodeEnumMap[instance.languageCode]!,
          'name': instance.name,
          '__typename': instance.$__typename,
        };

Variables$Query$GetCollectionsByIdOrSlug
    _$Variables$Query$GetCollectionsByIdOrSlugFromJson(
            Map<String, dynamic> json) =>
        Variables$Query$GetCollectionsByIdOrSlug(
          id: json['id'] as String?,
          slug: json['slug'] as String?,
        );

Map<String, dynamic> _$Variables$Query$GetCollectionsByIdOrSlugToJson(
        Variables$Query$GetCollectionsByIdOrSlug instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
    };

Query$GetCollectionsByIdOrSlug _$Query$GetCollectionsByIdOrSlugFromJson(
        Map<String, dynamic> json) =>
    Query$GetCollectionsByIdOrSlug(
      collection: json['collection'] == null
          ? null
          : Query$GetCollectionsByIdOrSlug$collection.fromJson(
              json['collection'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetCollectionsByIdOrSlugToJson(
        Query$GetCollectionsByIdOrSlug instance) =>
    <String, dynamic>{
      'collection': instance.collection?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCollectionsByIdOrSlug$collection
    _$Query$GetCollectionsByIdOrSlug$collectionFromJson(
            Map<String, dynamic> json) =>
        Query$GetCollectionsByIdOrSlug$collection(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          parent: json['parent'] == null
              ? null
              : Query$GetCollectionsByIdOrSlug$collection$parent.fromJson(
                  json['parent'] as Map<String, dynamic>),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Query$GetCollectionsByIdOrSlug$collection$featuredAsset
                  .fromJson(json['featuredAsset'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetCollectionsByIdOrSlug$collectionToJson(
        Query$GetCollectionsByIdOrSlug$collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent?.toJson(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetCollectionsByIdOrSlug$collection$parent
    _$Query$GetCollectionsByIdOrSlug$collection$parentFromJson(
            Map<String, dynamic> json) =>
        Query$GetCollectionsByIdOrSlug$collection$parent(
          id: json['id'] as String,
          slug: json['slug'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetCollectionsByIdOrSlug$collection$parentToJson(
        Query$GetCollectionsByIdOrSlug$collection$parent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetCollectionsByIdOrSlug$collection$featuredAsset
    _$Query$GetCollectionsByIdOrSlug$collection$featuredAssetFromJson(
            Map<String, dynamic> json) =>
        Query$GetCollectionsByIdOrSlug$collection$featuredAsset(
          id: json['id'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetCollectionsByIdOrSlug$collection$featuredAssetToJson(
            Query$GetCollectionsByIdOrSlug$collection$featuredAsset instance) =>
        <String, dynamic>{
          'id': instance.id,
          'preview': instance.preview,
          '__typename': instance.$__typename,
        };

Variables$Query$GetAllCollections _$Variables$Query$GetAllCollectionsFromJson(
        Map<String, dynamic> json) =>
    Variables$Query$GetAllCollections(
      input: json['input'] == null
          ? null
          : Input$CollectionListOptions.fromJson(
              json['input'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$Variables$Query$GetAllCollectionsToJson(
        Variables$Query$GetAllCollections instance) =>
    <String, dynamic>{
      'input': instance.input?.toJson(),
    };

Query$GetAllCollections _$Query$GetAllCollectionsFromJson(
        Map<String, dynamic> json) =>
    Query$GetAllCollections(
      collections: Query$GetAllCollections$collections.fromJson(
          json['collections'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetAllCollectionsToJson(
        Query$GetAllCollections instance) =>
    <String, dynamic>{
      'collections': instance.collections.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetAllCollections$collections
    _$Query$GetAllCollections$collectionsFromJson(Map<String, dynamic> json) =>
        Query$GetAllCollections$collections(
          items: (json['items'] as List<dynamic>)
              .map((e) => Query$GetAllCollections$collections$items.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllCollections$collectionsToJson(
        Query$GetAllCollections$collections instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

Query$GetAllCollections$collections$items
    _$Query$GetAllCollections$collections$itemsFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllCollections$collections$items(
          id: json['id'] as String,
          name: json['name'] as String,
          slug: json['slug'] as String,
          parent: json['parent'] == null
              ? null
              : Query$GetAllCollections$collections$items$parent.fromJson(
                  json['parent'] as Map<String, dynamic>),
          featuredAsset: json['featuredAsset'] == null
              ? null
              : Query$GetAllCollections$collections$items$featuredAsset
                  .fromJson(json['featuredAsset'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllCollections$collections$itemsToJson(
        Query$GetAllCollections$collections$items instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent': instance.parent?.toJson(),
      'featuredAsset': instance.featuredAsset?.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetAllCollections$collections$items$parent
    _$Query$GetAllCollections$collections$items$parentFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllCollections$collections$items$parent(
          id: json['id'] as String,
          slug: json['slug'] as String,
          name: json['name'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetAllCollections$collections$items$parentToJson(
        Query$GetAllCollections$collections$items$parent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      '__typename': instance.$__typename,
    };

Query$GetAllCollections$collections$items$featuredAsset
    _$Query$GetAllCollections$collections$items$featuredAssetFromJson(
            Map<String, dynamic> json) =>
        Query$GetAllCollections$collections$items$featuredAsset(
          id: json['id'] as String,
          preview: json['preview'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$Query$GetAllCollections$collections$items$featuredAssetToJson(
            Query$GetAllCollections$collections$items$featuredAsset instance) =>
        <String, dynamic>{
          'id': instance.id,
          'preview': instance.preview,
          '__typename': instance.$__typename,
        };
