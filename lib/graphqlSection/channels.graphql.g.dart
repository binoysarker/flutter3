// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channels.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query$GetActiveChannel _$Query$GetActiveChannelFromJson(
        Map<String, dynamic> json) =>
    Query$GetActiveChannel(
      activeChannel: Query$GetActiveChannel$activeChannel.fromJson(
          json['activeChannel'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$Query$GetActiveChannelToJson(
        Query$GetActiveChannel instance) =>
    <String, dynamic>{
      'activeChannel': instance.activeChannel.toJson(),
      '__typename': instance.$__typename,
    };

Query$GetActiveChannel$activeChannel
    _$Query$GetActiveChannel$activeChannelFromJson(Map<String, dynamic> json) =>
        Query$GetActiveChannel$activeChannel(
          id: json['id'] as String,
          code: json['code'] as String,
          currencyCode: $enumDecode(
              _$Enum$CurrencyCodeEnumMap, json['currencyCode'],
              unknownValue: Enum$CurrencyCode.$unknown),
          defaultLanguageCode: $enumDecode(
              _$Enum$LanguageCodeEnumMap, json['defaultLanguageCode'],
              unknownValue: Enum$LanguageCode.$unknown),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$Query$GetActiveChannel$activeChannelToJson(
        Query$GetActiveChannel$activeChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'currencyCode': _$Enum$CurrencyCodeEnumMap[instance.currencyCode]!,
      'defaultLanguageCode':
          _$Enum$LanguageCodeEnumMap[instance.defaultLanguageCode]!,
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
