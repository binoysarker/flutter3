import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$ConfigArgInput {
  Input$ConfigArgInput({required this.name, required this.value});

  @override
  factory Input$ConfigArgInput.fromJson(Map<String, dynamic> json) =>
      _$Input$ConfigArgInputFromJson(json);

  final String name;

  final String value;

  Map<String, dynamic> toJson() => _$Input$ConfigArgInputToJson(this);
  int get hashCode {
    final l$name = name;
    final l$value = value;
    return Object.hashAll([l$name, l$value]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ConfigArgInput) || runtimeType != other.runtimeType)
      return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) return false;
    return true;
  }

  CopyWith$Input$ConfigArgInput<Input$ConfigArgInput> get copyWith =>
      CopyWith$Input$ConfigArgInput(this, (i) => i);
}

abstract class CopyWith$Input$ConfigArgInput<TRes> {
  factory CopyWith$Input$ConfigArgInput(Input$ConfigArgInput instance,
          TRes Function(Input$ConfigArgInput) then) =
      _CopyWithImpl$Input$ConfigArgInput;

  factory CopyWith$Input$ConfigArgInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ConfigArgInput;

  TRes call({String? name, String? value});
}

class _CopyWithImpl$Input$ConfigArgInput<TRes>
    implements CopyWith$Input$ConfigArgInput<TRes> {
  _CopyWithImpl$Input$ConfigArgInput(this._instance, this._then);

  final Input$ConfigArgInput _instance;

  final TRes Function(Input$ConfigArgInput) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined, Object? value = _undefined}) =>
      _then(Input$ConfigArgInput(
          name: name == _undefined || name == null
              ? _instance.name
              : (name as String),
          value: value == _undefined || value == null
              ? _instance.value
              : (value as String)));
}

class _CopyWithStubImpl$Input$ConfigArgInput<TRes>
    implements CopyWith$Input$ConfigArgInput<TRes> {
  _CopyWithStubImpl$Input$ConfigArgInput(this._res);

  TRes _res;

  call({String? name, String? value}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$ConfigurableOperationInput {
  Input$ConfigurableOperationInput(
      {required this.code, required this.arguments});

  @override
  factory Input$ConfigurableOperationInput.fromJson(
          Map<String, dynamic> json) =>
      _$Input$ConfigurableOperationInputFromJson(json);

  final String code;

  final List<Input$ConfigArgInput> arguments;

  Map<String, dynamic> toJson() =>
      _$Input$ConfigurableOperationInputToJson(this);
  int get hashCode {
    final l$code = code;
    final l$arguments = arguments;
    return Object.hashAll([l$code, Object.hashAll(l$arguments.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ConfigurableOperationInput) ||
        runtimeType != other.runtimeType) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments.length != lOther$arguments.length) return false;
    for (int i = 0; i < l$arguments.length; i++) {
      final l$arguments$entry = l$arguments[i];
      final lOther$arguments$entry = lOther$arguments[i];
      if (l$arguments$entry != lOther$arguments$entry) return false;
    }

    return true;
  }

  CopyWith$Input$ConfigurableOperationInput<Input$ConfigurableOperationInput>
      get copyWith => CopyWith$Input$ConfigurableOperationInput(this, (i) => i);
}

abstract class CopyWith$Input$ConfigurableOperationInput<TRes> {
  factory CopyWith$Input$ConfigurableOperationInput(
          Input$ConfigurableOperationInput instance,
          TRes Function(Input$ConfigurableOperationInput) then) =
      _CopyWithImpl$Input$ConfigurableOperationInput;

  factory CopyWith$Input$ConfigurableOperationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ConfigurableOperationInput;

  TRes call({String? code, List<Input$ConfigArgInput>? arguments});
  TRes arguments(
      Iterable<Input$ConfigArgInput> Function(
              Iterable<CopyWith$Input$ConfigArgInput<Input$ConfigArgInput>>)
          _fn);
}

class _CopyWithImpl$Input$ConfigurableOperationInput<TRes>
    implements CopyWith$Input$ConfigurableOperationInput<TRes> {
  _CopyWithImpl$Input$ConfigurableOperationInput(this._instance, this._then);

  final Input$ConfigurableOperationInput _instance;

  final TRes Function(Input$ConfigurableOperationInput) _then;

  static const _undefined = {};

  TRes call({Object? code = _undefined, Object? arguments = _undefined}) =>
      _then(Input$ConfigurableOperationInput(
          code: code == _undefined || code == null
              ? _instance.code
              : (code as String),
          arguments: arguments == _undefined || arguments == null
              ? _instance.arguments
              : (arguments as List<Input$ConfigArgInput>)));
  TRes arguments(
          Iterable<Input$ConfigArgInput> Function(
                  Iterable<CopyWith$Input$ConfigArgInput<Input$ConfigArgInput>>)
              _fn) =>
      call(
          arguments: _fn(_instance.arguments
                  .map((e) => CopyWith$Input$ConfigArgInput(e, (i) => i)))
              .toList());
}

class _CopyWithStubImpl$Input$ConfigurableOperationInput<TRes>
    implements CopyWith$Input$ConfigurableOperationInput<TRes> {
  _CopyWithStubImpl$Input$ConfigurableOperationInput(this._res);

  TRes _res;

  call({String? code, List<Input$ConfigArgInput>? arguments}) => _res;
  arguments(_fn) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$StringOperators {
  Input$StringOperators(
      {this.eq,
      this.notEq,
      this.contains,
      this.notContains,
      this.$in,
      this.notIn,
      this.regex});

  @override
  factory Input$StringOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$StringOperatorsFromJson(json);

  final String? eq;

  final String? notEq;

  final String? contains;

  final String? notContains;

  @JsonKey(name: 'in')
  final List<String>? $in;

  final List<String>? notIn;

  final String? regex;

  Map<String, dynamic> toJson() => _$Input$StringOperatorsToJson(this);
  int get hashCode {
    final l$eq = eq;
    final l$notEq = notEq;
    final l$contains = contains;
    final l$notContains = notContains;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$regex = regex;
    return Object.hashAll([
      l$eq,
      l$notEq,
      l$contains,
      l$notContains,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$regex
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$StringOperators) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (l$notEq != lOther$notEq) return false;
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (l$contains != lOther$contains) return false;
    final l$notContains = notContains;
    final lOther$notContains = other.notContains;
    if (l$notContains != lOther$notContains) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$regex = regex;
    final lOther$regex = other.regex;
    if (l$regex != lOther$regex) return false;
    return true;
  }

  CopyWith$Input$StringOperators<Input$StringOperators> get copyWith =>
      CopyWith$Input$StringOperators(this, (i) => i);
}

abstract class CopyWith$Input$StringOperators<TRes> {
  factory CopyWith$Input$StringOperators(Input$StringOperators instance,
          TRes Function(Input$StringOperators) then) =
      _CopyWithImpl$Input$StringOperators;

  factory CopyWith$Input$StringOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$StringOperators;

  TRes call(
      {String? eq,
      String? notEq,
      String? contains,
      String? notContains,
      List<String>? $in,
      List<String>? notIn,
      String? regex});
}

class _CopyWithImpl$Input$StringOperators<TRes>
    implements CopyWith$Input$StringOperators<TRes> {
  _CopyWithImpl$Input$StringOperators(this._instance, this._then);

  final Input$StringOperators _instance;

  final TRes Function(Input$StringOperators) _then;

  static const _undefined = {};

  TRes call(
          {Object? eq = _undefined,
          Object? notEq = _undefined,
          Object? contains = _undefined,
          Object? notContains = _undefined,
          Object? $in = _undefined,
          Object? notIn = _undefined,
          Object? regex = _undefined}) =>
      _then(Input$StringOperators(
          eq: eq == _undefined ? _instance.eq : (eq as String?),
          notEq: notEq == _undefined ? _instance.notEq : (notEq as String?),
          contains: contains == _undefined
              ? _instance.contains
              : (contains as String?),
          notContains: notContains == _undefined
              ? _instance.notContains
              : (notContains as String?),
          $in: $in == _undefined ? _instance.$in : ($in as List<String>?),
          notIn:
              notIn == _undefined ? _instance.notIn : (notIn as List<String>?),
          regex: regex == _undefined ? _instance.regex : (regex as String?)));
}

class _CopyWithStubImpl$Input$StringOperators<TRes>
    implements CopyWith$Input$StringOperators<TRes> {
  _CopyWithStubImpl$Input$StringOperators(this._res);

  TRes _res;

  call(
          {String? eq,
          String? notEq,
          String? contains,
          String? notContains,
          List<String>? $in,
          List<String>? notIn,
          String? regex}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$IDOperators {
  Input$IDOperators({this.eq, this.notEq, this.$in, this.notIn});

  @override
  factory Input$IDOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$IDOperatorsFromJson(json);

  final String? eq;

  final String? notEq;

  @JsonKey(name: 'in')
  final List<String>? $in;

  final List<String>? notIn;

  Map<String, dynamic> toJson() => _$Input$IDOperatorsToJson(this);
  int get hashCode {
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      l$eq,
      l$notEq,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$IDOperators) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (l$notEq != lOther$notEq) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    return true;
  }

  CopyWith$Input$IDOperators<Input$IDOperators> get copyWith =>
      CopyWith$Input$IDOperators(this, (i) => i);
}

abstract class CopyWith$Input$IDOperators<TRes> {
  factory CopyWith$Input$IDOperators(
          Input$IDOperators instance, TRes Function(Input$IDOperators) then) =
      _CopyWithImpl$Input$IDOperators;

  factory CopyWith$Input$IDOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$IDOperators;

  TRes call(
      {String? eq, String? notEq, List<String>? $in, List<String>? notIn});
}

class _CopyWithImpl$Input$IDOperators<TRes>
    implements CopyWith$Input$IDOperators<TRes> {
  _CopyWithImpl$Input$IDOperators(this._instance, this._then);

  final Input$IDOperators _instance;

  final TRes Function(Input$IDOperators) _then;

  static const _undefined = {};

  TRes call(
          {Object? eq = _undefined,
          Object? notEq = _undefined,
          Object? $in = _undefined,
          Object? notIn = _undefined}) =>
      _then(Input$IDOperators(
          eq: eq == _undefined ? _instance.eq : (eq as String?),
          notEq: notEq == _undefined ? _instance.notEq : (notEq as String?),
          $in: $in == _undefined ? _instance.$in : ($in as List<String>?),
          notIn: notIn == _undefined
              ? _instance.notIn
              : (notIn as List<String>?)));
}

class _CopyWithStubImpl$Input$IDOperators<TRes>
    implements CopyWith$Input$IDOperators<TRes> {
  _CopyWithStubImpl$Input$IDOperators(this._res);

  TRes _res;

  call({String? eq, String? notEq, List<String>? $in, List<String>? notIn}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$BooleanOperators {
  Input$BooleanOperators({this.eq});

  @override
  factory Input$BooleanOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$BooleanOperatorsFromJson(json);

  final bool? eq;

  Map<String, dynamic> toJson() => _$Input$BooleanOperatorsToJson(this);
  int get hashCode {
    final l$eq = eq;
    return Object.hashAll([l$eq]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$BooleanOperators) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    return true;
  }

  CopyWith$Input$BooleanOperators<Input$BooleanOperators> get copyWith =>
      CopyWith$Input$BooleanOperators(this, (i) => i);
}

abstract class CopyWith$Input$BooleanOperators<TRes> {
  factory CopyWith$Input$BooleanOperators(Input$BooleanOperators instance,
          TRes Function(Input$BooleanOperators) then) =
      _CopyWithImpl$Input$BooleanOperators;

  factory CopyWith$Input$BooleanOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanOperators;

  TRes call({bool? eq});
}

class _CopyWithImpl$Input$BooleanOperators<TRes>
    implements CopyWith$Input$BooleanOperators<TRes> {
  _CopyWithImpl$Input$BooleanOperators(this._instance, this._then);

  final Input$BooleanOperators _instance;

  final TRes Function(Input$BooleanOperators) _then;

  static const _undefined = {};

  TRes call({Object? eq = _undefined}) => _then(Input$BooleanOperators(
      eq: eq == _undefined ? _instance.eq : (eq as bool?)));
}

class _CopyWithStubImpl$Input$BooleanOperators<TRes>
    implements CopyWith$Input$BooleanOperators<TRes> {
  _CopyWithStubImpl$Input$BooleanOperators(this._res);

  TRes _res;

  call({bool? eq}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$NumberRange {
  Input$NumberRange({required this.start, required this.end});

  @override
  factory Input$NumberRange.fromJson(Map<String, dynamic> json) =>
      _$Input$NumberRangeFromJson(json);

  final double start;

  final double end;

  Map<String, dynamic> toJson() => _$Input$NumberRangeToJson(this);
  int get hashCode {
    final l$start = start;
    final l$end = end;
    return Object.hashAll([l$start, l$end]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$NumberRange) || runtimeType != other.runtimeType)
      return false;
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) return false;
    final l$end = end;
    final lOther$end = other.end;
    if (l$end != lOther$end) return false;
    return true;
  }

  CopyWith$Input$NumberRange<Input$NumberRange> get copyWith =>
      CopyWith$Input$NumberRange(this, (i) => i);
}

abstract class CopyWith$Input$NumberRange<TRes> {
  factory CopyWith$Input$NumberRange(
          Input$NumberRange instance, TRes Function(Input$NumberRange) then) =
      _CopyWithImpl$Input$NumberRange;

  factory CopyWith$Input$NumberRange.stub(TRes res) =
      _CopyWithStubImpl$Input$NumberRange;

  TRes call({double? start, double? end});
}

class _CopyWithImpl$Input$NumberRange<TRes>
    implements CopyWith$Input$NumberRange<TRes> {
  _CopyWithImpl$Input$NumberRange(this._instance, this._then);

  final Input$NumberRange _instance;

  final TRes Function(Input$NumberRange) _then;

  static const _undefined = {};

  TRes call({Object? start = _undefined, Object? end = _undefined}) =>
      _then(Input$NumberRange(
          start: start == _undefined || start == null
              ? _instance.start
              : (start as double),
          end: end == _undefined || end == null
              ? _instance.end
              : (end as double)));
}

class _CopyWithStubImpl$Input$NumberRange<TRes>
    implements CopyWith$Input$NumberRange<TRes> {
  _CopyWithStubImpl$Input$NumberRange(this._res);

  TRes _res;

  call({double? start, double? end}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$NumberOperators {
  Input$NumberOperators(
      {this.eq, this.lt, this.lte, this.gt, this.gte, this.between});

  @override
  factory Input$NumberOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$NumberOperatorsFromJson(json);

  final double? eq;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final Input$NumberRange? between;

  Map<String, dynamic> toJson() => _$Input$NumberOperatorsToJson(this);
  int get hashCode {
    final l$eq = eq;
    final l$lt = lt;
    final l$lte = lte;
    final l$gt = gt;
    final l$gte = gte;
    final l$between = between;
    return Object.hashAll([l$eq, l$lt, l$lte, l$gt, l$gte, l$between]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$NumberOperators) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (l$lt != lOther$lt) return false;
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (l$lte != lOther$lte) return false;
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (l$gt != lOther$gt) return false;
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (l$gte != lOther$gte) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }

  CopyWith$Input$NumberOperators<Input$NumberOperators> get copyWith =>
      CopyWith$Input$NumberOperators(this, (i) => i);
}

abstract class CopyWith$Input$NumberOperators<TRes> {
  factory CopyWith$Input$NumberOperators(Input$NumberOperators instance,
          TRes Function(Input$NumberOperators) then) =
      _CopyWithImpl$Input$NumberOperators;

  factory CopyWith$Input$NumberOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$NumberOperators;

  TRes call(
      {double? eq,
      double? lt,
      double? lte,
      double? gt,
      double? gte,
      Input$NumberRange? between});
  CopyWith$Input$NumberRange<TRes> get between;
}

class _CopyWithImpl$Input$NumberOperators<TRes>
    implements CopyWith$Input$NumberOperators<TRes> {
  _CopyWithImpl$Input$NumberOperators(this._instance, this._then);

  final Input$NumberOperators _instance;

  final TRes Function(Input$NumberOperators) _then;

  static const _undefined = {};

  TRes call(
          {Object? eq = _undefined,
          Object? lt = _undefined,
          Object? lte = _undefined,
          Object? gt = _undefined,
          Object? gte = _undefined,
          Object? between = _undefined}) =>
      _then(Input$NumberOperators(
          eq: eq == _undefined ? _instance.eq : (eq as double?),
          lt: lt == _undefined ? _instance.lt : (lt as double?),
          lte: lte == _undefined ? _instance.lte : (lte as double?),
          gt: gt == _undefined ? _instance.gt : (gt as double?),
          gte: gte == _undefined ? _instance.gte : (gte as double?),
          between: between == _undefined
              ? _instance.between
              : (between as Input$NumberRange?)));
  CopyWith$Input$NumberRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$NumberRange.stub(_then(_instance))
        : CopyWith$Input$NumberRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$NumberOperators<TRes>
    implements CopyWith$Input$NumberOperators<TRes> {
  _CopyWithStubImpl$Input$NumberOperators(this._res);

  TRes _res;

  call(
          {double? eq,
          double? lt,
          double? lte,
          double? gt,
          double? gte,
          Input$NumberRange? between}) =>
      _res;
  CopyWith$Input$NumberRange<TRes> get between =>
      CopyWith$Input$NumberRange.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$DateRange {
  Input$DateRange({required this.start, required this.end});

  @override
  factory Input$DateRange.fromJson(Map<String, dynamic> json) =>
      _$Input$DateRangeFromJson(json);

  final String start;

  final String end;

  Map<String, dynamic> toJson() => _$Input$DateRangeToJson(this);
  int get hashCode {
    final l$start = start;
    final l$end = end;
    return Object.hashAll([l$start, l$end]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DateRange) || runtimeType != other.runtimeType)
      return false;
    final l$start = start;
    final lOther$start = other.start;
    if (l$start != lOther$start) return false;
    final l$end = end;
    final lOther$end = other.end;
    if (l$end != lOther$end) return false;
    return true;
  }

  CopyWith$Input$DateRange<Input$DateRange> get copyWith =>
      CopyWith$Input$DateRange(this, (i) => i);
}

abstract class CopyWith$Input$DateRange<TRes> {
  factory CopyWith$Input$DateRange(
          Input$DateRange instance, TRes Function(Input$DateRange) then) =
      _CopyWithImpl$Input$DateRange;

  factory CopyWith$Input$DateRange.stub(TRes res) =
      _CopyWithStubImpl$Input$DateRange;

  TRes call({String? start, String? end});
}

class _CopyWithImpl$Input$DateRange<TRes>
    implements CopyWith$Input$DateRange<TRes> {
  _CopyWithImpl$Input$DateRange(this._instance, this._then);

  final Input$DateRange _instance;

  final TRes Function(Input$DateRange) _then;

  static const _undefined = {};

  TRes call({Object? start = _undefined, Object? end = _undefined}) =>
      _then(Input$DateRange(
          start: start == _undefined || start == null
              ? _instance.start
              : (start as String),
          end: end == _undefined || end == null
              ? _instance.end
              : (end as String)));
}

class _CopyWithStubImpl$Input$DateRange<TRes>
    implements CopyWith$Input$DateRange<TRes> {
  _CopyWithStubImpl$Input$DateRange(this._res);

  TRes _res;

  call({String? start, String? end}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$DateOperators {
  Input$DateOperators({this.eq, this.before, this.after, this.between});

  @override
  factory Input$DateOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$DateOperatorsFromJson(json);

  final String? eq;

  final String? before;

  final String? after;

  final Input$DateRange? between;

  Map<String, dynamic> toJson() => _$Input$DateOperatorsToJson(this);
  int get hashCode {
    final l$eq = eq;
    final l$before = before;
    final l$after = after;
    final l$between = between;
    return Object.hashAll([l$eq, l$before, l$after, l$between]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DateOperators) || runtimeType != other.runtimeType)
      return false;
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (l$eq != lOther$eq) return false;
    final l$before = before;
    final lOther$before = other.before;
    if (l$before != lOther$before) return false;
    final l$after = after;
    final lOther$after = other.after;
    if (l$after != lOther$after) return false;
    final l$between = between;
    final lOther$between = other.between;
    if (l$between != lOther$between) return false;
    return true;
  }

  CopyWith$Input$DateOperators<Input$DateOperators> get copyWith =>
      CopyWith$Input$DateOperators(this, (i) => i);
}

abstract class CopyWith$Input$DateOperators<TRes> {
  factory CopyWith$Input$DateOperators(Input$DateOperators instance,
          TRes Function(Input$DateOperators) then) =
      _CopyWithImpl$Input$DateOperators;

  factory CopyWith$Input$DateOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$DateOperators;

  TRes call(
      {String? eq, String? before, String? after, Input$DateRange? between});
  CopyWith$Input$DateRange<TRes> get between;
}

class _CopyWithImpl$Input$DateOperators<TRes>
    implements CopyWith$Input$DateOperators<TRes> {
  _CopyWithImpl$Input$DateOperators(this._instance, this._then);

  final Input$DateOperators _instance;

  final TRes Function(Input$DateOperators) _then;

  static const _undefined = {};

  TRes call(
          {Object? eq = _undefined,
          Object? before = _undefined,
          Object? after = _undefined,
          Object? between = _undefined}) =>
      _then(Input$DateOperators(
          eq: eq == _undefined ? _instance.eq : (eq as String?),
          before: before == _undefined ? _instance.before : (before as String?),
          after: after == _undefined ? _instance.after : (after as String?),
          between: between == _undefined
              ? _instance.between
              : (between as Input$DateRange?)));
  CopyWith$Input$DateRange<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$DateRange.stub(_then(_instance))
        : CopyWith$Input$DateRange(local$between, (e) => call(between: e));
  }
}

class _CopyWithStubImpl$Input$DateOperators<TRes>
    implements CopyWith$Input$DateOperators<TRes> {
  _CopyWithStubImpl$Input$DateOperators(this._res);

  TRes _res;

  call({String? eq, String? before, String? after, Input$DateRange? between}) =>
      _res;
  CopyWith$Input$DateRange<TRes> get between =>
      CopyWith$Input$DateRange.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$StringListOperators {
  Input$StringListOperators({required this.inList});

  @override
  factory Input$StringListOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$StringListOperatorsFromJson(json);

  final String inList;

  Map<String, dynamic> toJson() => _$Input$StringListOperatorsToJson(this);
  int get hashCode {
    final l$inList = inList;
    return Object.hashAll([l$inList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$StringListOperators) ||
        runtimeType != other.runtimeType) return false;
    final l$inList = inList;
    final lOther$inList = other.inList;
    if (l$inList != lOther$inList) return false;
    return true;
  }

  CopyWith$Input$StringListOperators<Input$StringListOperators> get copyWith =>
      CopyWith$Input$StringListOperators(this, (i) => i);
}

abstract class CopyWith$Input$StringListOperators<TRes> {
  factory CopyWith$Input$StringListOperators(Input$StringListOperators instance,
          TRes Function(Input$StringListOperators) then) =
      _CopyWithImpl$Input$StringListOperators;

  factory CopyWith$Input$StringListOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$StringListOperators;

  TRes call({String? inList});
}

class _CopyWithImpl$Input$StringListOperators<TRes>
    implements CopyWith$Input$StringListOperators<TRes> {
  _CopyWithImpl$Input$StringListOperators(this._instance, this._then);

  final Input$StringListOperators _instance;

  final TRes Function(Input$StringListOperators) _then;

  static const _undefined = {};

  TRes call({Object? inList = _undefined}) => _then(Input$StringListOperators(
      inList: inList == _undefined || inList == null
          ? _instance.inList
          : (inList as String)));
}

class _CopyWithStubImpl$Input$StringListOperators<TRes>
    implements CopyWith$Input$StringListOperators<TRes> {
  _CopyWithStubImpl$Input$StringListOperators(this._res);

  TRes _res;

  call({String? inList}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$NumberListOperators {
  Input$NumberListOperators({required this.inList});

  @override
  factory Input$NumberListOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$NumberListOperatorsFromJson(json);

  final double inList;

  Map<String, dynamic> toJson() => _$Input$NumberListOperatorsToJson(this);
  int get hashCode {
    final l$inList = inList;
    return Object.hashAll([l$inList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$NumberListOperators) ||
        runtimeType != other.runtimeType) return false;
    final l$inList = inList;
    final lOther$inList = other.inList;
    if (l$inList != lOther$inList) return false;
    return true;
  }

  CopyWith$Input$NumberListOperators<Input$NumberListOperators> get copyWith =>
      CopyWith$Input$NumberListOperators(this, (i) => i);
}

abstract class CopyWith$Input$NumberListOperators<TRes> {
  factory CopyWith$Input$NumberListOperators(Input$NumberListOperators instance,
          TRes Function(Input$NumberListOperators) then) =
      _CopyWithImpl$Input$NumberListOperators;

  factory CopyWith$Input$NumberListOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$NumberListOperators;

  TRes call({double? inList});
}

class _CopyWithImpl$Input$NumberListOperators<TRes>
    implements CopyWith$Input$NumberListOperators<TRes> {
  _CopyWithImpl$Input$NumberListOperators(this._instance, this._then);

  final Input$NumberListOperators _instance;

  final TRes Function(Input$NumberListOperators) _then;

  static const _undefined = {};

  TRes call({Object? inList = _undefined}) => _then(Input$NumberListOperators(
      inList: inList == _undefined || inList == null
          ? _instance.inList
          : (inList as double)));
}

class _CopyWithStubImpl$Input$NumberListOperators<TRes>
    implements CopyWith$Input$NumberListOperators<TRes> {
  _CopyWithStubImpl$Input$NumberListOperators(this._res);

  TRes _res;

  call({double? inList}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$BooleanListOperators {
  Input$BooleanListOperators({required this.inList});

  @override
  factory Input$BooleanListOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$BooleanListOperatorsFromJson(json);

  final bool inList;

  Map<String, dynamic> toJson() => _$Input$BooleanListOperatorsToJson(this);
  int get hashCode {
    final l$inList = inList;
    return Object.hashAll([l$inList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$BooleanListOperators) ||
        runtimeType != other.runtimeType) return false;
    final l$inList = inList;
    final lOther$inList = other.inList;
    if (l$inList != lOther$inList) return false;
    return true;
  }

  CopyWith$Input$BooleanListOperators<Input$BooleanListOperators>
      get copyWith => CopyWith$Input$BooleanListOperators(this, (i) => i);
}

abstract class CopyWith$Input$BooleanListOperators<TRes> {
  factory CopyWith$Input$BooleanListOperators(
          Input$BooleanListOperators instance,
          TRes Function(Input$BooleanListOperators) then) =
      _CopyWithImpl$Input$BooleanListOperators;

  factory CopyWith$Input$BooleanListOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanListOperators;

  TRes call({bool? inList});
}

class _CopyWithImpl$Input$BooleanListOperators<TRes>
    implements CopyWith$Input$BooleanListOperators<TRes> {
  _CopyWithImpl$Input$BooleanListOperators(this._instance, this._then);

  final Input$BooleanListOperators _instance;

  final TRes Function(Input$BooleanListOperators) _then;

  static const _undefined = {};

  TRes call({Object? inList = _undefined}) => _then(Input$BooleanListOperators(
      inList: inList == _undefined || inList == null
          ? _instance.inList
          : (inList as bool)));
}

class _CopyWithStubImpl$Input$BooleanListOperators<TRes>
    implements CopyWith$Input$BooleanListOperators<TRes> {
  _CopyWithStubImpl$Input$BooleanListOperators(this._res);

  TRes _res;

  call({bool? inList}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$IDListOperators {
  Input$IDListOperators({required this.inList});

  @override
  factory Input$IDListOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$IDListOperatorsFromJson(json);

  final String inList;

  Map<String, dynamic> toJson() => _$Input$IDListOperatorsToJson(this);
  int get hashCode {
    final l$inList = inList;
    return Object.hashAll([l$inList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$IDListOperators) || runtimeType != other.runtimeType)
      return false;
    final l$inList = inList;
    final lOther$inList = other.inList;
    if (l$inList != lOther$inList) return false;
    return true;
  }

  CopyWith$Input$IDListOperators<Input$IDListOperators> get copyWith =>
      CopyWith$Input$IDListOperators(this, (i) => i);
}

abstract class CopyWith$Input$IDListOperators<TRes> {
  factory CopyWith$Input$IDListOperators(Input$IDListOperators instance,
          TRes Function(Input$IDListOperators) then) =
      _CopyWithImpl$Input$IDListOperators;

  factory CopyWith$Input$IDListOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$IDListOperators;

  TRes call({String? inList});
}

class _CopyWithImpl$Input$IDListOperators<TRes>
    implements CopyWith$Input$IDListOperators<TRes> {
  _CopyWithImpl$Input$IDListOperators(this._instance, this._then);

  final Input$IDListOperators _instance;

  final TRes Function(Input$IDListOperators) _then;

  static const _undefined = {};

  TRes call({Object? inList = _undefined}) => _then(Input$IDListOperators(
      inList: inList == _undefined || inList == null
          ? _instance.inList
          : (inList as String)));
}

class _CopyWithStubImpl$Input$IDListOperators<TRes>
    implements CopyWith$Input$IDListOperators<TRes> {
  _CopyWithStubImpl$Input$IDListOperators(this._res);

  TRes _res;

  call({String? inList}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$DateListOperators {
  Input$DateListOperators({required this.inList});

  @override
  factory Input$DateListOperators.fromJson(Map<String, dynamic> json) =>
      _$Input$DateListOperatorsFromJson(json);

  final String inList;

  Map<String, dynamic> toJson() => _$Input$DateListOperatorsToJson(this);
  int get hashCode {
    final l$inList = inList;
    return Object.hashAll([l$inList]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DateListOperators) || runtimeType != other.runtimeType)
      return false;
    final l$inList = inList;
    final lOther$inList = other.inList;
    if (l$inList != lOther$inList) return false;
    return true;
  }

  CopyWith$Input$DateListOperators<Input$DateListOperators> get copyWith =>
      CopyWith$Input$DateListOperators(this, (i) => i);
}

abstract class CopyWith$Input$DateListOperators<TRes> {
  factory CopyWith$Input$DateListOperators(Input$DateListOperators instance,
          TRes Function(Input$DateListOperators) then) =
      _CopyWithImpl$Input$DateListOperators;

  factory CopyWith$Input$DateListOperators.stub(TRes res) =
      _CopyWithStubImpl$Input$DateListOperators;

  TRes call({String? inList});
}

class _CopyWithImpl$Input$DateListOperators<TRes>
    implements CopyWith$Input$DateListOperators<TRes> {
  _CopyWithImpl$Input$DateListOperators(this._instance, this._then);

  final Input$DateListOperators _instance;

  final TRes Function(Input$DateListOperators) _then;

  static const _undefined = {};

  TRes call({Object? inList = _undefined}) => _then(Input$DateListOperators(
      inList: inList == _undefined || inList == null
          ? _instance.inList
          : (inList as String)));
}

class _CopyWithStubImpl$Input$DateListOperators<TRes>
    implements CopyWith$Input$DateListOperators<TRes> {
  _CopyWithStubImpl$Input$DateListOperators(this._res);

  TRes _res;

  call({String? inList}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$FacetValueFilterInput {
  Input$FacetValueFilterInput({this.and, this.or});

  @override
  factory Input$FacetValueFilterInput.fromJson(Map<String, dynamic> json) =>
      _$Input$FacetValueFilterInputFromJson(json);

  final String? and;

  final List<String>? or;

  Map<String, dynamic> toJson() => _$Input$FacetValueFilterInputToJson(this);
  int get hashCode {
    final l$and = and;
    final l$or = or;
    return Object.hashAll(
        [l$and, l$or == null ? null : Object.hashAll(l$or.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$FacetValueFilterInput) ||
        runtimeType != other.runtimeType) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != lOther$and) return false;
    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    return true;
  }

  CopyWith$Input$FacetValueFilterInput<Input$FacetValueFilterInput>
      get copyWith => CopyWith$Input$FacetValueFilterInput(this, (i) => i);
}

abstract class CopyWith$Input$FacetValueFilterInput<TRes> {
  factory CopyWith$Input$FacetValueFilterInput(
          Input$FacetValueFilterInput instance,
          TRes Function(Input$FacetValueFilterInput) then) =
      _CopyWithImpl$Input$FacetValueFilterInput;

  factory CopyWith$Input$FacetValueFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FacetValueFilterInput;

  TRes call({String? and, List<String>? or});
}

class _CopyWithImpl$Input$FacetValueFilterInput<TRes>
    implements CopyWith$Input$FacetValueFilterInput<TRes> {
  _CopyWithImpl$Input$FacetValueFilterInput(this._instance, this._then);

  final Input$FacetValueFilterInput _instance;

  final TRes Function(Input$FacetValueFilterInput) _then;

  static const _undefined = {};

  TRes call({Object? and = _undefined, Object? or = _undefined}) =>
      _then(Input$FacetValueFilterInput(
          and: and == _undefined ? _instance.and : (and as String?),
          or: or == _undefined ? _instance.or : (or as List<String>?)));
}

class _CopyWithStubImpl$Input$FacetValueFilterInput<TRes>
    implements CopyWith$Input$FacetValueFilterInput<TRes> {
  _CopyWithStubImpl$Input$FacetValueFilterInput(this._res);

  TRes _res;

  call({String? and, List<String>? or}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$SearchInput {
  Input$SearchInput(
      {this.term,
      this.facetValueIds,
      this.facetValueOperator,
      this.facetValueFilters,
      this.collectionId,
      this.collectionSlug,
      this.groupByProduct,
      this.take,
      this.skip,
      this.sort,
      this.inStock});

  @override
  factory Input$SearchInput.fromJson(Map<String, dynamic> json) =>
      _$Input$SearchInputFromJson(json);

  final String? term;

  final List<String>? facetValueIds;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? facetValueOperator;

  final List<Input$FacetValueFilterInput>? facetValueFilters;

  final String? collectionId;

  final String? collectionSlug;

  final bool? groupByProduct;

  final int? take;

  final int? skip;

  final Input$SearchResultSortParameter? sort;

  final bool? inStock;

  Map<String, dynamic> toJson() => _$Input$SearchInputToJson(this);
  int get hashCode {
    final l$term = term;
    final l$facetValueIds = facetValueIds;
    final l$facetValueOperator = facetValueOperator;
    final l$facetValueFilters = facetValueFilters;
    final l$collectionId = collectionId;
    final l$collectionSlug = collectionSlug;
    final l$groupByProduct = groupByProduct;
    final l$take = take;
    final l$skip = skip;
    final l$sort = sort;
    final l$inStock = inStock;
    return Object.hashAll([
      l$term,
      l$facetValueIds == null
          ? null
          : Object.hashAll(l$facetValueIds.map((v) => v)),
      l$facetValueOperator,
      l$facetValueFilters == null
          ? null
          : Object.hashAll(l$facetValueFilters.map((v) => v)),
      l$collectionId,
      l$collectionSlug,
      l$groupByProduct,
      l$take,
      l$skip,
      l$sort,
      l$inStock
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$SearchInput) || runtimeType != other.runtimeType)
      return false;
    final l$term = term;
    final lOther$term = other.term;
    if (l$term != lOther$term) return false;
    final l$facetValueIds = facetValueIds;
    final lOther$facetValueIds = other.facetValueIds;
    if (l$facetValueIds != null && lOther$facetValueIds != null) {
      if (l$facetValueIds.length != lOther$facetValueIds.length) return false;
      for (int i = 0; i < l$facetValueIds.length; i++) {
        final l$facetValueIds$entry = l$facetValueIds[i];
        final lOther$facetValueIds$entry = lOther$facetValueIds[i];
        if (l$facetValueIds$entry != lOther$facetValueIds$entry) return false;
      }
    } else if (l$facetValueIds != lOther$facetValueIds) {
      return false;
    }

    final l$facetValueOperator = facetValueOperator;
    final lOther$facetValueOperator = other.facetValueOperator;
    if (l$facetValueOperator != lOther$facetValueOperator) return false;
    final l$facetValueFilters = facetValueFilters;
    final lOther$facetValueFilters = other.facetValueFilters;
    if (l$facetValueFilters != null && lOther$facetValueFilters != null) {
      if (l$facetValueFilters.length != lOther$facetValueFilters.length)
        return false;
      for (int i = 0; i < l$facetValueFilters.length; i++) {
        final l$facetValueFilters$entry = l$facetValueFilters[i];
        final lOther$facetValueFilters$entry = lOther$facetValueFilters[i];
        if (l$facetValueFilters$entry != lOther$facetValueFilters$entry)
          return false;
      }
    } else if (l$facetValueFilters != lOther$facetValueFilters) {
      return false;
    }

    final l$collectionId = collectionId;
    final lOther$collectionId = other.collectionId;
    if (l$collectionId != lOther$collectionId) return false;
    final l$collectionSlug = collectionSlug;
    final lOther$collectionSlug = other.collectionSlug;
    if (l$collectionSlug != lOther$collectionSlug) return false;
    final l$groupByProduct = groupByProduct;
    final lOther$groupByProduct = other.groupByProduct;
    if (l$groupByProduct != lOther$groupByProduct) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$inStock = inStock;
    final lOther$inStock = other.inStock;
    if (l$inStock != lOther$inStock) return false;
    return true;
  }

  CopyWith$Input$SearchInput<Input$SearchInput> get copyWith =>
      CopyWith$Input$SearchInput(this, (i) => i);
}

abstract class CopyWith$Input$SearchInput<TRes> {
  factory CopyWith$Input$SearchInput(
          Input$SearchInput instance, TRes Function(Input$SearchInput) then) =
      _CopyWithImpl$Input$SearchInput;

  factory CopyWith$Input$SearchInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchInput;

  TRes call(
      {String? term,
      List<String>? facetValueIds,
      Enum$LogicalOperator? facetValueOperator,
      List<Input$FacetValueFilterInput>? facetValueFilters,
      String? collectionId,
      String? collectionSlug,
      bool? groupByProduct,
      int? take,
      int? skip,
      Input$SearchResultSortParameter? sort,
      bool? inStock});
  TRes facetValueFilters(
      Iterable<Input$FacetValueFilterInput>? Function(
              Iterable<
                  CopyWith$Input$FacetValueFilterInput<
                      Input$FacetValueFilterInput>>?)
          _fn);
  CopyWith$Input$SearchResultSortParameter<TRes> get sort;
}

class _CopyWithImpl$Input$SearchInput<TRes>
    implements CopyWith$Input$SearchInput<TRes> {
  _CopyWithImpl$Input$SearchInput(this._instance, this._then);

  final Input$SearchInput _instance;

  final TRes Function(Input$SearchInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? term = _undefined,
          Object? facetValueIds = _undefined,
          Object? facetValueOperator = _undefined,
          Object? facetValueFilters = _undefined,
          Object? collectionId = _undefined,
          Object? collectionSlug = _undefined,
          Object? groupByProduct = _undefined,
          Object? take = _undefined,
          Object? skip = _undefined,
          Object? sort = _undefined,
          Object? inStock = _undefined}) =>
      _then(Input$SearchInput(
          term: term == _undefined ? _instance.term : (term as String?),
          facetValueIds: facetValueIds == _undefined
              ? _instance.facetValueIds
              : (facetValueIds as List<String>?),
          facetValueOperator: facetValueOperator == _undefined
              ? _instance.facetValueOperator
              : (facetValueOperator as Enum$LogicalOperator?),
          facetValueFilters: facetValueFilters == _undefined
              ? _instance.facetValueFilters
              : (facetValueFilters as List<Input$FacetValueFilterInput>?),
          collectionId: collectionId == _undefined
              ? _instance.collectionId
              : (collectionId as String?),
          collectionSlug: collectionSlug == _undefined
              ? _instance.collectionSlug
              : (collectionSlug as String?),
          groupByProduct: groupByProduct == _undefined
              ? _instance.groupByProduct
              : (groupByProduct as bool?),
          take: take == _undefined ? _instance.take : (take as int?),
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$SearchResultSortParameter?),
          inStock:
              inStock == _undefined ? _instance.inStock : (inStock as bool?)));
  TRes facetValueFilters(
          Iterable<Input$FacetValueFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$FacetValueFilterInput<
                          Input$FacetValueFilterInput>>?)
              _fn) =>
      call(
          facetValueFilters: _fn(_instance.facetValueFilters?.map(
                  (e) => CopyWith$Input$FacetValueFilterInput(e, (i) => i)))
              ?.toList());
  CopyWith$Input$SearchResultSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$SearchResultSortParameter.stub(_then(_instance))
        : CopyWith$Input$SearchResultSortParameter(
            local$sort, (e) => call(sort: e));
  }
}

class _CopyWithStubImpl$Input$SearchInput<TRes>
    implements CopyWith$Input$SearchInput<TRes> {
  _CopyWithStubImpl$Input$SearchInput(this._res);

  TRes _res;

  call(
          {String? term,
          List<String>? facetValueIds,
          Enum$LogicalOperator? facetValueOperator,
          List<Input$FacetValueFilterInput>? facetValueFilters,
          String? collectionId,
          String? collectionSlug,
          bool? groupByProduct,
          int? take,
          int? skip,
          Input$SearchResultSortParameter? sort,
          bool? inStock}) =>
      _res;
  facetValueFilters(_fn) => _res;
  CopyWith$Input$SearchResultSortParameter<TRes> get sort =>
      CopyWith$Input$SearchResultSortParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$SearchResultSortParameter {
  Input$SearchResultSortParameter({this.name, this.price});

  @override
  factory Input$SearchResultSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$SearchResultSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? name;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? price;

  Map<String, dynamic> toJson() =>
      _$Input$SearchResultSortParameterToJson(this);
  int get hashCode {
    final l$name = name;
    final l$price = price;
    return Object.hashAll([l$name, l$price]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$SearchResultSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    return true;
  }

  CopyWith$Input$SearchResultSortParameter<Input$SearchResultSortParameter>
      get copyWith => CopyWith$Input$SearchResultSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$SearchResultSortParameter<TRes> {
  factory CopyWith$Input$SearchResultSortParameter(
          Input$SearchResultSortParameter instance,
          TRes Function(Input$SearchResultSortParameter) then) =
      _CopyWithImpl$Input$SearchResultSortParameter;

  factory CopyWith$Input$SearchResultSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$SearchResultSortParameter;

  TRes call({Enum$SortOrder? name, Enum$SortOrder? price});
}

class _CopyWithImpl$Input$SearchResultSortParameter<TRes>
    implements CopyWith$Input$SearchResultSortParameter<TRes> {
  _CopyWithImpl$Input$SearchResultSortParameter(this._instance, this._then);

  final Input$SearchResultSortParameter _instance;

  final TRes Function(Input$SearchResultSortParameter) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined, Object? price = _undefined}) =>
      _then(Input$SearchResultSortParameter(
          name: name == _undefined ? _instance.name : (name as Enum$SortOrder?),
          price: price == _undefined
              ? _instance.price
              : (price as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$SearchResultSortParameter<TRes>
    implements CopyWith$Input$SearchResultSortParameter<TRes> {
  _CopyWithStubImpl$Input$SearchResultSortParameter(this._res);

  TRes _res;

  call({Enum$SortOrder? name, Enum$SortOrder? price}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreateCustomerInput {
  Input$CreateCustomerInput(
      {this.title,
      required this.firstName,
      required this.lastName,
      this.phoneNumber,
      required this.emailAddress,
      this.customFields});

  @override
  factory Input$CreateCustomerInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateCustomerInputFromJson(json);

  final String? title;

  final String firstName;

  final String lastName;

  final String? phoneNumber;

  final String emailAddress;

  final String? customFields;

  Map<String, dynamic> toJson() => _$Input$CreateCustomerInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$emailAddress = emailAddress;
    final l$customFields = customFields;
    return Object.hashAll([
      l$title,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$emailAddress,
      l$customFields
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateCustomerInput) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }

  CopyWith$Input$CreateCustomerInput<Input$CreateCustomerInput> get copyWith =>
      CopyWith$Input$CreateCustomerInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateCustomerInput<TRes> {
  factory CopyWith$Input$CreateCustomerInput(Input$CreateCustomerInput instance,
          TRes Function(Input$CreateCustomerInput) then) =
      _CopyWithImpl$Input$CreateCustomerInput;

  factory CopyWith$Input$CreateCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCustomerInput;

  TRes call(
      {String? title,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? emailAddress,
      String? customFields});
}

class _CopyWithImpl$Input$CreateCustomerInput<TRes>
    implements CopyWith$Input$CreateCustomerInput<TRes> {
  _CopyWithImpl$Input$CreateCustomerInput(this._instance, this._then);

  final Input$CreateCustomerInput _instance;

  final TRes Function(Input$CreateCustomerInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? emailAddress = _undefined,
          Object? customFields = _undefined}) =>
      _then(Input$CreateCustomerInput(
          title: title == _undefined ? _instance.title : (title as String?),
          firstName: firstName == _undefined || firstName == null
              ? _instance.firstName
              : (firstName as String),
          lastName: lastName == _undefined || lastName == null
              ? _instance.lastName
              : (lastName as String),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          emailAddress: emailAddress == _undefined || emailAddress == null
              ? _instance.emailAddress
              : (emailAddress as String),
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?)));
}

class _CopyWithStubImpl$Input$CreateCustomerInput<TRes>
    implements CopyWith$Input$CreateCustomerInput<TRes> {
  _CopyWithStubImpl$Input$CreateCustomerInput(this._res);

  TRes _res;

  call(
          {String? title,
          String? firstName,
          String? lastName,
          String? phoneNumber,
          String? emailAddress,
          String? customFields}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreateAddressInput {
  Input$CreateAddressInput(
      {this.fullName,
      this.company,
      required this.streetLine1,
      this.streetLine2,
      this.city,
      this.province,
      this.postalCode,
      required this.countryCode,
      this.phoneNumber,
      this.defaultShippingAddress,
      this.defaultBillingAddress,
      this.customFields});

  @override
  factory Input$CreateAddressInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateAddressInputFromJson(json);

  final String? fullName;

  final String? company;

  final String streetLine1;

  final String? streetLine2;

  final String? city;

  final String? province;

  final String? postalCode;

  final String countryCode;

  final String? phoneNumber;

  final bool? defaultShippingAddress;

  final bool? defaultBillingAddress;

  final String? customFields;

  Map<String, dynamic> toJson() => _$Input$CreateAddressInputToJson(this);
  int get hashCode {
    final l$fullName = fullName;
    final l$company = company;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$city = city;
    final l$province = province;
    final l$postalCode = postalCode;
    final l$countryCode = countryCode;
    final l$phoneNumber = phoneNumber;
    final l$defaultShippingAddress = defaultShippingAddress;
    final l$defaultBillingAddress = defaultBillingAddress;
    final l$customFields = customFields;
    return Object.hashAll([
      l$fullName,
      l$company,
      l$streetLine1,
      l$streetLine2,
      l$city,
      l$province,
      l$postalCode,
      l$countryCode,
      l$phoneNumber,
      l$defaultShippingAddress,
      l$defaultBillingAddress,
      l$customFields
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateAddressInput) ||
        runtimeType != other.runtimeType) return false;
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
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$defaultShippingAddress = defaultShippingAddress;
    final lOther$defaultShippingAddress = other.defaultShippingAddress;
    if (l$defaultShippingAddress != lOther$defaultShippingAddress) return false;
    final l$defaultBillingAddress = defaultBillingAddress;
    final lOther$defaultBillingAddress = other.defaultBillingAddress;
    if (l$defaultBillingAddress != lOther$defaultBillingAddress) return false;
    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }

  CopyWith$Input$CreateAddressInput<Input$CreateAddressInput> get copyWith =>
      CopyWith$Input$CreateAddressInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateAddressInput<TRes> {
  factory CopyWith$Input$CreateAddressInput(Input$CreateAddressInput instance,
          TRes Function(Input$CreateAddressInput) then) =
      _CopyWithImpl$Input$CreateAddressInput;

  factory CopyWith$Input$CreateAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateAddressInput;

  TRes call(
      {String? fullName,
      String? company,
      String? streetLine1,
      String? streetLine2,
      String? city,
      String? province,
      String? postalCode,
      String? countryCode,
      String? phoneNumber,
      bool? defaultShippingAddress,
      bool? defaultBillingAddress,
      String? customFields});
}

class _CopyWithImpl$Input$CreateAddressInput<TRes>
    implements CopyWith$Input$CreateAddressInput<TRes> {
  _CopyWithImpl$Input$CreateAddressInput(this._instance, this._then);

  final Input$CreateAddressInput _instance;

  final TRes Function(Input$CreateAddressInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? fullName = _undefined,
          Object? company = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? city = _undefined,
          Object? province = _undefined,
          Object? postalCode = _undefined,
          Object? countryCode = _undefined,
          Object? phoneNumber = _undefined,
          Object? defaultShippingAddress = _undefined,
          Object? defaultBillingAddress = _undefined,
          Object? customFields = _undefined}) =>
      _then(Input$CreateAddressInput(
          fullName: fullName == _undefined
              ? _instance.fullName
              : (fullName as String?),
          company:
              company == _undefined ? _instance.company : (company as String?),
          streetLine1: streetLine1 == _undefined || streetLine1 == null
              ? _instance.streetLine1
              : (streetLine1 as String),
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
          countryCode: countryCode == _undefined || countryCode == null
              ? _instance.countryCode
              : (countryCode as String),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          defaultShippingAddress: defaultShippingAddress == _undefined
              ? _instance.defaultShippingAddress
              : (defaultShippingAddress as bool?),
          defaultBillingAddress: defaultBillingAddress == _undefined
              ? _instance.defaultBillingAddress
              : (defaultBillingAddress as bool?),
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?)));
}

class _CopyWithStubImpl$Input$CreateAddressInput<TRes>
    implements CopyWith$Input$CreateAddressInput<TRes> {
  _CopyWithStubImpl$Input$CreateAddressInput(this._res);

  TRes _res;

  call(
          {String? fullName,
          String? company,
          String? streetLine1,
          String? streetLine2,
          String? city,
          String? province,
          String? postalCode,
          String? countryCode,
          String? phoneNumber,
          bool? defaultShippingAddress,
          bool? defaultBillingAddress,
          String? customFields}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateAddressInput {
  Input$UpdateAddressInput(
      {required this.id,
      this.fullName,
      this.company,
      this.streetLine1,
      this.streetLine2,
      this.city,
      this.province,
      this.postalCode,
      this.countryCode,
      this.phoneNumber,
      this.defaultShippingAddress,
      this.defaultBillingAddress,
      this.customFields});

  @override
  factory Input$UpdateAddressInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateAddressInputFromJson(json);

  final String id;

  final String? fullName;

  final String? company;

  final String? streetLine1;

  final String? streetLine2;

  final String? city;

  final String? province;

  final String? postalCode;

  final String? countryCode;

  final String? phoneNumber;

  final bool? defaultShippingAddress;

  final bool? defaultBillingAddress;

  final String? customFields;

  Map<String, dynamic> toJson() => _$Input$UpdateAddressInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$company = company;
    final l$streetLine1 = streetLine1;
    final l$streetLine2 = streetLine2;
    final l$city = city;
    final l$province = province;
    final l$postalCode = postalCode;
    final l$countryCode = countryCode;
    final l$phoneNumber = phoneNumber;
    final l$defaultShippingAddress = defaultShippingAddress;
    final l$defaultBillingAddress = defaultBillingAddress;
    final l$customFields = customFields;
    return Object.hashAll([
      l$id,
      l$fullName,
      l$company,
      l$streetLine1,
      l$streetLine2,
      l$city,
      l$province,
      l$postalCode,
      l$countryCode,
      l$phoneNumber,
      l$defaultShippingAddress,
      l$defaultBillingAddress,
      l$customFields
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateAddressInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
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
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$defaultShippingAddress = defaultShippingAddress;
    final lOther$defaultShippingAddress = other.defaultShippingAddress;
    if (l$defaultShippingAddress != lOther$defaultShippingAddress) return false;
    final l$defaultBillingAddress = defaultBillingAddress;
    final lOther$defaultBillingAddress = other.defaultBillingAddress;
    if (l$defaultBillingAddress != lOther$defaultBillingAddress) return false;
    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }

  CopyWith$Input$UpdateAddressInput<Input$UpdateAddressInput> get copyWith =>
      CopyWith$Input$UpdateAddressInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateAddressInput<TRes> {
  factory CopyWith$Input$UpdateAddressInput(Input$UpdateAddressInput instance,
          TRes Function(Input$UpdateAddressInput) then) =
      _CopyWithImpl$Input$UpdateAddressInput;

  factory CopyWith$Input$UpdateAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateAddressInput;

  TRes call(
      {String? id,
      String? fullName,
      String? company,
      String? streetLine1,
      String? streetLine2,
      String? city,
      String? province,
      String? postalCode,
      String? countryCode,
      String? phoneNumber,
      bool? defaultShippingAddress,
      bool? defaultBillingAddress,
      String? customFields});
}

class _CopyWithImpl$Input$UpdateAddressInput<TRes>
    implements CopyWith$Input$UpdateAddressInput<TRes> {
  _CopyWithImpl$Input$UpdateAddressInput(this._instance, this._then);

  final Input$UpdateAddressInput _instance;

  final TRes Function(Input$UpdateAddressInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? fullName = _undefined,
          Object? company = _undefined,
          Object? streetLine1 = _undefined,
          Object? streetLine2 = _undefined,
          Object? city = _undefined,
          Object? province = _undefined,
          Object? postalCode = _undefined,
          Object? countryCode = _undefined,
          Object? phoneNumber = _undefined,
          Object? defaultShippingAddress = _undefined,
          Object? defaultBillingAddress = _undefined,
          Object? customFields = _undefined}) =>
      _then(Input$UpdateAddressInput(
          id: id == _undefined || id == null ? _instance.id : (id as String),
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
          countryCode: countryCode == _undefined
              ? _instance.countryCode
              : (countryCode as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          defaultShippingAddress: defaultShippingAddress == _undefined
              ? _instance.defaultShippingAddress
              : (defaultShippingAddress as bool?),
          defaultBillingAddress: defaultBillingAddress == _undefined
              ? _instance.defaultBillingAddress
              : (defaultBillingAddress as bool?),
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?)));
}

class _CopyWithStubImpl$Input$UpdateAddressInput<TRes>
    implements CopyWith$Input$UpdateAddressInput<TRes> {
  _CopyWithStubImpl$Input$UpdateAddressInput(this._res);

  TRes _res;

  call(
          {String? id,
          String? fullName,
          String? company,
          String? streetLine1,
          String? streetLine2,
          String? city,
          String? province,
          String? postalCode,
          String? countryCode,
          String? phoneNumber,
          bool? defaultShippingAddress,
          bool? defaultBillingAddress,
          String? customFields}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CustomerListOptions {
  Input$CustomerListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$CustomerListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$CustomerListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$CustomerSortParameter? sort;

  final Input$CustomerFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$CustomerListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CustomerListOptions) ||
        runtimeType != other.runtimeType) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$CustomerListOptions<Input$CustomerListOptions> get copyWith =>
      CopyWith$Input$CustomerListOptions(this, (i) => i);
}

abstract class CopyWith$Input$CustomerListOptions<TRes> {
  factory CopyWith$Input$CustomerListOptions(Input$CustomerListOptions instance,
          TRes Function(Input$CustomerListOptions) then) =
      _CopyWithImpl$Input$CustomerListOptions;

  factory CopyWith$Input$CustomerListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$CustomerListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$CustomerSortParameter? sort,
      Input$CustomerFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$CustomerSortParameter<TRes> get sort;
  CopyWith$Input$CustomerFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$CustomerListOptions<TRes>
    implements CopyWith$Input$CustomerListOptions<TRes> {
  _CopyWithImpl$Input$CustomerListOptions(this._instance, this._then);

  final Input$CustomerListOptions _instance;

  final TRes Function(Input$CustomerListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$CustomerListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$CustomerSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$CustomerFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$CustomerSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$CustomerSortParameter.stub(_then(_instance))
        : CopyWith$Input$CustomerSortParameter(
            local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$CustomerFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$CustomerFilterParameter.stub(_then(_instance))
        : CopyWith$Input$CustomerFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$CustomerListOptions<TRes>
    implements CopyWith$Input$CustomerListOptions<TRes> {
  _CopyWithStubImpl$Input$CustomerListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$CustomerSortParameter? sort,
          Input$CustomerFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$CustomerSortParameter<TRes> get sort =>
      CopyWith$Input$CustomerSortParameter.stub(_res);
  CopyWith$Input$CustomerFilterParameter<TRes> get filter =>
      CopyWith$Input$CustomerFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$HistoryEntryListOptions {
  Input$HistoryEntryListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$HistoryEntryListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$HistoryEntryListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$HistoryEntrySortParameter? sort;

  final Input$HistoryEntryFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$HistoryEntryListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$HistoryEntryListOptions) ||
        runtimeType != other.runtimeType) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$HistoryEntryListOptions<Input$HistoryEntryListOptions>
      get copyWith => CopyWith$Input$HistoryEntryListOptions(this, (i) => i);
}

abstract class CopyWith$Input$HistoryEntryListOptions<TRes> {
  factory CopyWith$Input$HistoryEntryListOptions(
          Input$HistoryEntryListOptions instance,
          TRes Function(Input$HistoryEntryListOptions) then) =
      _CopyWithImpl$Input$HistoryEntryListOptions;

  factory CopyWith$Input$HistoryEntryListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$HistoryEntryListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$HistoryEntrySortParameter? sort,
      Input$HistoryEntryFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$HistoryEntrySortParameter<TRes> get sort;
  CopyWith$Input$HistoryEntryFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$HistoryEntryListOptions<TRes>
    implements CopyWith$Input$HistoryEntryListOptions<TRes> {
  _CopyWithImpl$Input$HistoryEntryListOptions(this._instance, this._then);

  final Input$HistoryEntryListOptions _instance;

  final TRes Function(Input$HistoryEntryListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$HistoryEntryListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$HistoryEntrySortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$HistoryEntryFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$HistoryEntrySortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$HistoryEntrySortParameter.stub(_then(_instance))
        : CopyWith$Input$HistoryEntrySortParameter(
            local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$HistoryEntryFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$HistoryEntryFilterParameter.stub(_then(_instance))
        : CopyWith$Input$HistoryEntryFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$HistoryEntryListOptions<TRes>
    implements CopyWith$Input$HistoryEntryListOptions<TRes> {
  _CopyWithStubImpl$Input$HistoryEntryListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$HistoryEntrySortParameter? sort,
          Input$HistoryEntryFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$HistoryEntrySortParameter<TRes> get sort =>
      CopyWith$Input$HistoryEntrySortParameter.stub(_res);
  CopyWith$Input$HistoryEntryFilterParameter<TRes> get filter =>
      CopyWith$Input$HistoryEntryFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$AuthenticationInput {
  Input$AuthenticationInput({this.native});

  @override
  factory Input$AuthenticationInput.fromJson(Map<String, dynamic> json) =>
      _$Input$AuthenticationInputFromJson(json);

  final Input$NativeAuthInput? native;

  Map<String, dynamic> toJson() => _$Input$AuthenticationInputToJson(this);
  int get hashCode {
    final l$native = native;
    return Object.hashAll([l$native]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$AuthenticationInput) ||
        runtimeType != other.runtimeType) return false;
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) return false;
    return true;
  }

  CopyWith$Input$AuthenticationInput<Input$AuthenticationInput> get copyWith =>
      CopyWith$Input$AuthenticationInput(this, (i) => i);
}

abstract class CopyWith$Input$AuthenticationInput<TRes> {
  factory CopyWith$Input$AuthenticationInput(Input$AuthenticationInput instance,
          TRes Function(Input$AuthenticationInput) then) =
      _CopyWithImpl$Input$AuthenticationInput;

  factory CopyWith$Input$AuthenticationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AuthenticationInput;

  TRes call({Input$NativeAuthInput? native});
  CopyWith$Input$NativeAuthInput<TRes> get native;
}

class _CopyWithImpl$Input$AuthenticationInput<TRes>
    implements CopyWith$Input$AuthenticationInput<TRes> {
  _CopyWithImpl$Input$AuthenticationInput(this._instance, this._then);

  final Input$AuthenticationInput _instance;

  final TRes Function(Input$AuthenticationInput) _then;

  static const _undefined = {};

  TRes call({Object? native = _undefined}) => _then(Input$AuthenticationInput(
      native: native == _undefined
          ? _instance.native
          : (native as Input$NativeAuthInput?)));
  CopyWith$Input$NativeAuthInput<TRes> get native {
    final local$native = _instance.native;
    return local$native == null
        ? CopyWith$Input$NativeAuthInput.stub(_then(_instance))
        : CopyWith$Input$NativeAuthInput(local$native, (e) => call(native: e));
  }
}

class _CopyWithStubImpl$Input$AuthenticationInput<TRes>
    implements CopyWith$Input$AuthenticationInput<TRes> {
  _CopyWithStubImpl$Input$AuthenticationInput(this._res);

  TRes _res;

  call({Input$NativeAuthInput? native}) => _res;
  CopyWith$Input$NativeAuthInput<TRes> get native =>
      CopyWith$Input$NativeAuthInput.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$RegisterCustomerInput {
  Input$RegisterCustomerInput(
      {required this.emailAddress,
      this.title,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.password});

  @override
  factory Input$RegisterCustomerInput.fromJson(Map<String, dynamic> json) =>
      _$Input$RegisterCustomerInputFromJson(json);

  final String emailAddress;

  final String? title;

  final String? firstName;

  final String? lastName;

  final String? phoneNumber;

  final String? password;

  Map<String, dynamic> toJson() => _$Input$RegisterCustomerInputToJson(this);
  int get hashCode {
    final l$emailAddress = emailAddress;
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$password = password;
    return Object.hashAll([
      l$emailAddress,
      l$title,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$password
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$RegisterCustomerInput) ||
        runtimeType != other.runtimeType) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    return true;
  }

  CopyWith$Input$RegisterCustomerInput<Input$RegisterCustomerInput>
      get copyWith => CopyWith$Input$RegisterCustomerInput(this, (i) => i);
}

abstract class CopyWith$Input$RegisterCustomerInput<TRes> {
  factory CopyWith$Input$RegisterCustomerInput(
          Input$RegisterCustomerInput instance,
          TRes Function(Input$RegisterCustomerInput) then) =
      _CopyWithImpl$Input$RegisterCustomerInput;

  factory CopyWith$Input$RegisterCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RegisterCustomerInput;

  TRes call(
      {String? emailAddress,
      String? title,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? password});
}

class _CopyWithImpl$Input$RegisterCustomerInput<TRes>
    implements CopyWith$Input$RegisterCustomerInput<TRes> {
  _CopyWithImpl$Input$RegisterCustomerInput(this._instance, this._then);

  final Input$RegisterCustomerInput _instance;

  final TRes Function(Input$RegisterCustomerInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? emailAddress = _undefined,
          Object? title = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? password = _undefined}) =>
      _then(Input$RegisterCustomerInput(
          emailAddress: emailAddress == _undefined || emailAddress == null
              ? _instance.emailAddress
              : (emailAddress as String),
          title: title == _undefined ? _instance.title : (title as String?),
          firstName: firstName == _undefined
              ? _instance.firstName
              : (firstName as String?),
          lastName: lastName == _undefined
              ? _instance.lastName
              : (lastName as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          password: password == _undefined
              ? _instance.password
              : (password as String?)));
}

class _CopyWithStubImpl$Input$RegisterCustomerInput<TRes>
    implements CopyWith$Input$RegisterCustomerInput<TRes> {
  _CopyWithStubImpl$Input$RegisterCustomerInput(this._res);

  TRes _res;

  call(
          {String? emailAddress,
          String? title,
          String? firstName,
          String? lastName,
          String? phoneNumber,
          String? password}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateCustomerInput {
  Input$UpdateCustomerInput(
      {this.title,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.customFields});

  @override
  factory Input$UpdateCustomerInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateCustomerInputFromJson(json);

  final String? title;

  final String? firstName;

  final String? lastName;

  final String? phoneNumber;

  final String? customFields;

  Map<String, dynamic> toJson() => _$Input$UpdateCustomerInputToJson(this);
  int get hashCode {
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$customFields = customFields;
    return Object.hashAll(
        [l$title, l$firstName, l$lastName, l$phoneNumber, l$customFields]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateCustomerInput) ||
        runtimeType != other.runtimeType) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }

  CopyWith$Input$UpdateCustomerInput<Input$UpdateCustomerInput> get copyWith =>
      CopyWith$Input$UpdateCustomerInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateCustomerInput<TRes> {
  factory CopyWith$Input$UpdateCustomerInput(Input$UpdateCustomerInput instance,
          TRes Function(Input$UpdateCustomerInput) then) =
      _CopyWithImpl$Input$UpdateCustomerInput;

  factory CopyWith$Input$UpdateCustomerInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCustomerInput;

  TRes call(
      {String? title,
      String? firstName,
      String? lastName,
      String? phoneNumber,
      String? customFields});
}

class _CopyWithImpl$Input$UpdateCustomerInput<TRes>
    implements CopyWith$Input$UpdateCustomerInput<TRes> {
  _CopyWithImpl$Input$UpdateCustomerInput(this._instance, this._then);

  final Input$UpdateCustomerInput _instance;

  final TRes Function(Input$UpdateCustomerInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? title = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? customFields = _undefined}) =>
      _then(Input$UpdateCustomerInput(
          title: title == _undefined ? _instance.title : (title as String?),
          firstName: firstName == _undefined
              ? _instance.firstName
              : (firstName as String?),
          lastName: lastName == _undefined
              ? _instance.lastName
              : (lastName as String?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as String?),
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?)));
}

class _CopyWithStubImpl$Input$UpdateCustomerInput<TRes>
    implements CopyWith$Input$UpdateCustomerInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCustomerInput(this._res);

  TRes _res;

  call(
          {String? title,
          String? firstName,
          String? lastName,
          String? phoneNumber,
          String? customFields}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateOrderInput {
  Input$UpdateOrderInput({this.customFields});

  @override
  factory Input$UpdateOrderInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateOrderInputFromJson(json);

  final String? customFields;

  Map<String, dynamic> toJson() => _$Input$UpdateOrderInputToJson(this);
  int get hashCode {
    final l$customFields = customFields;
    return Object.hashAll([l$customFields]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateOrderInput) || runtimeType != other.runtimeType)
      return false;
    final l$customFields = customFields;
    final lOther$customFields = other.customFields;
    if (l$customFields != lOther$customFields) return false;
    return true;
  }

  CopyWith$Input$UpdateOrderInput<Input$UpdateOrderInput> get copyWith =>
      CopyWith$Input$UpdateOrderInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateOrderInput<TRes> {
  factory CopyWith$Input$UpdateOrderInput(Input$UpdateOrderInput instance,
          TRes Function(Input$UpdateOrderInput) then) =
      _CopyWithImpl$Input$UpdateOrderInput;

  factory CopyWith$Input$UpdateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrderInput;

  TRes call({String? customFields});
}

class _CopyWithImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOrderInput(this._instance, this._then);

  final Input$UpdateOrderInput _instance;

  final TRes Function(Input$UpdateOrderInput) _then;

  static const _undefined = {};

  TRes call({Object? customFields = _undefined}) =>
      _then(Input$UpdateOrderInput(
          customFields: customFields == _undefined
              ? _instance.customFields
              : (customFields as String?)));
}

class _CopyWithStubImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrderInput(this._res);

  TRes _res;

  call({String? customFields}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$PaymentInput {
  Input$PaymentInput({required this.method, required this.metadata});

  @override
  factory Input$PaymentInput.fromJson(Map<String, dynamic> json) =>
      _$Input$PaymentInputFromJson(json);

  final String method;

  final String metadata;

  Map<String, dynamic> toJson() => _$Input$PaymentInputToJson(this);
  int get hashCode {
    final l$method = method;
    final l$metadata = metadata;
    return Object.hashAll([l$method, l$metadata]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$PaymentInput) || runtimeType != other.runtimeType)
      return false;
    final l$method = method;
    final lOther$method = other.method;
    if (l$method != lOther$method) return false;
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) return false;
    return true;
  }

  CopyWith$Input$PaymentInput<Input$PaymentInput> get copyWith =>
      CopyWith$Input$PaymentInput(this, (i) => i);
}

abstract class CopyWith$Input$PaymentInput<TRes> {
  factory CopyWith$Input$PaymentInput(
          Input$PaymentInput instance, TRes Function(Input$PaymentInput) then) =
      _CopyWithImpl$Input$PaymentInput;

  factory CopyWith$Input$PaymentInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentInput;

  TRes call({String? method, String? metadata});
}

class _CopyWithImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithImpl$Input$PaymentInput(this._instance, this._then);

  final Input$PaymentInput _instance;

  final TRes Function(Input$PaymentInput) _then;

  static const _undefined = {};

  TRes call({Object? method = _undefined, Object? metadata = _undefined}) =>
      _then(Input$PaymentInput(
          method: method == _undefined || method == null
              ? _instance.method
              : (method as String),
          metadata: metadata == _undefined || metadata == null
              ? _instance.metadata
              : (metadata as String)));
}

class _CopyWithStubImpl$Input$PaymentInput<TRes>
    implements CopyWith$Input$PaymentInput<TRes> {
  _CopyWithStubImpl$Input$PaymentInput(this._res);

  TRes _res;

  call({String? method, String? metadata}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CollectionListOptions {
  Input$CollectionListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$CollectionListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$CollectionListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$CollectionSortParameter? sort;

  final Input$CollectionFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$CollectionListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CollectionListOptions) ||
        runtimeType != other.runtimeType) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$CollectionListOptions<Input$CollectionListOptions>
      get copyWith => CopyWith$Input$CollectionListOptions(this, (i) => i);
}

abstract class CopyWith$Input$CollectionListOptions<TRes> {
  factory CopyWith$Input$CollectionListOptions(
          Input$CollectionListOptions instance,
          TRes Function(Input$CollectionListOptions) then) =
      _CopyWithImpl$Input$CollectionListOptions;

  factory CopyWith$Input$CollectionListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$CollectionListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$CollectionSortParameter? sort,
      Input$CollectionFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$CollectionSortParameter<TRes> get sort;
  CopyWith$Input$CollectionFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$CollectionListOptions<TRes>
    implements CopyWith$Input$CollectionListOptions<TRes> {
  _CopyWithImpl$Input$CollectionListOptions(this._instance, this._then);

  final Input$CollectionListOptions _instance;

  final TRes Function(Input$CollectionListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$CollectionListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$CollectionSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$CollectionFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$CollectionSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$CollectionSortParameter.stub(_then(_instance))
        : CopyWith$Input$CollectionSortParameter(
            local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$CollectionFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$CollectionFilterParameter.stub(_then(_instance))
        : CopyWith$Input$CollectionFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$CollectionListOptions<TRes>
    implements CopyWith$Input$CollectionListOptions<TRes> {
  _CopyWithStubImpl$Input$CollectionListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$CollectionSortParameter? sort,
          Input$CollectionFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$CollectionSortParameter<TRes> get sort =>
      CopyWith$Input$CollectionSortParameter.stub(_res);
  CopyWith$Input$CollectionFilterParameter<TRes> get filter =>
      CopyWith$Input$CollectionFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$FacetListOptions {
  Input$FacetListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$FacetListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$FacetListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$FacetSortParameter? sort;

  final Input$FacetFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$FacetListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$FacetListOptions) || runtimeType != other.runtimeType)
      return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$FacetListOptions<Input$FacetListOptions> get copyWith =>
      CopyWith$Input$FacetListOptions(this, (i) => i);
}

abstract class CopyWith$Input$FacetListOptions<TRes> {
  factory CopyWith$Input$FacetListOptions(Input$FacetListOptions instance,
          TRes Function(Input$FacetListOptions) then) =
      _CopyWithImpl$Input$FacetListOptions;

  factory CopyWith$Input$FacetListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$FacetListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$FacetSortParameter? sort,
      Input$FacetFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$FacetSortParameter<TRes> get sort;
  CopyWith$Input$FacetFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$FacetListOptions<TRes>
    implements CopyWith$Input$FacetListOptions<TRes> {
  _CopyWithImpl$Input$FacetListOptions(this._instance, this._then);

  final Input$FacetListOptions _instance;

  final TRes Function(Input$FacetListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$FacetListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$FacetSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$FacetFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$FacetSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$FacetSortParameter.stub(_then(_instance))
        : CopyWith$Input$FacetSortParameter(local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$FacetFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$FacetFilterParameter.stub(_then(_instance))
        : CopyWith$Input$FacetFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$FacetListOptions<TRes>
    implements CopyWith$Input$FacetListOptions<TRes> {
  _CopyWithStubImpl$Input$FacetListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$FacetSortParameter? sort,
          Input$FacetFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$FacetSortParameter<TRes> get sort =>
      CopyWith$Input$FacetSortParameter.stub(_res);
  CopyWith$Input$FacetFilterParameter<TRes> get filter =>
      CopyWith$Input$FacetFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$OrderListOptions {
  Input$OrderListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$OrderListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$OrderListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$OrderSortParameter? sort;

  final Input$OrderFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$OrderListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$OrderListOptions) || runtimeType != other.runtimeType)
      return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$OrderListOptions<Input$OrderListOptions> get copyWith =>
      CopyWith$Input$OrderListOptions(this, (i) => i);
}

abstract class CopyWith$Input$OrderListOptions<TRes> {
  factory CopyWith$Input$OrderListOptions(Input$OrderListOptions instance,
          TRes Function(Input$OrderListOptions) then) =
      _CopyWithImpl$Input$OrderListOptions;

  factory CopyWith$Input$OrderListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$OrderSortParameter? sort,
      Input$OrderFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$OrderSortParameter<TRes> get sort;
  CopyWith$Input$OrderFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$OrderListOptions<TRes>
    implements CopyWith$Input$OrderListOptions<TRes> {
  _CopyWithImpl$Input$OrderListOptions(this._instance, this._then);

  final Input$OrderListOptions _instance;

  final TRes Function(Input$OrderListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$OrderListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$OrderSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$OrderFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$OrderSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$OrderSortParameter.stub(_then(_instance))
        : CopyWith$Input$OrderSortParameter(local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$OrderFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$OrderFilterParameter.stub(_then(_instance))
        : CopyWith$Input$OrderFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$OrderListOptions<TRes>
    implements CopyWith$Input$OrderListOptions<TRes> {
  _CopyWithStubImpl$Input$OrderListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$OrderSortParameter? sort,
          Input$OrderFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$OrderSortParameter<TRes> get sort =>
      CopyWith$Input$OrderSortParameter.stub(_res);
  CopyWith$Input$OrderFilterParameter<TRes> get filter =>
      CopyWith$Input$OrderFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$ProductListOptions {
  Input$ProductListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$ProductListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$ProductListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$ProductSortParameter? sort;

  final Input$ProductFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() => _$Input$ProductListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductListOptions) ||
        runtimeType != other.runtimeType) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$ProductListOptions<Input$ProductListOptions> get copyWith =>
      CopyWith$Input$ProductListOptions(this, (i) => i);
}

abstract class CopyWith$Input$ProductListOptions<TRes> {
  factory CopyWith$Input$ProductListOptions(Input$ProductListOptions instance,
          TRes Function(Input$ProductListOptions) then) =
      _CopyWithImpl$Input$ProductListOptions;

  factory CopyWith$Input$ProductListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$ProductSortParameter? sort,
      Input$ProductFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$ProductSortParameter<TRes> get sort;
  CopyWith$Input$ProductFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$ProductListOptions<TRes>
    implements CopyWith$Input$ProductListOptions<TRes> {
  _CopyWithImpl$Input$ProductListOptions(this._instance, this._then);

  final Input$ProductListOptions _instance;

  final TRes Function(Input$ProductListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$ProductListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$ProductSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$ProductFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$ProductSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$ProductSortParameter.stub(_then(_instance))
        : CopyWith$Input$ProductSortParameter(local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$ProductFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$ProductFilterParameter.stub(_then(_instance))
        : CopyWith$Input$ProductFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$ProductListOptions<TRes>
    implements CopyWith$Input$ProductListOptions<TRes> {
  _CopyWithStubImpl$Input$ProductListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$ProductSortParameter? sort,
          Input$ProductFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$ProductSortParameter<TRes> get sort =>
      CopyWith$Input$ProductSortParameter.stub(_res);
  CopyWith$Input$ProductFilterParameter<TRes> get filter =>
      CopyWith$Input$ProductFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$ProductVariantListOptions {
  Input$ProductVariantListOptions(
      {this.skip, this.take, this.sort, this.filter, this.filterOperator});

  @override
  factory Input$ProductVariantListOptions.fromJson(Map<String, dynamic> json) =>
      _$Input$ProductVariantListOptionsFromJson(json);

  final int? skip;

  final int? take;

  final Input$ProductVariantSortParameter? sort;

  final Input$ProductVariantFilterParameter? filter;

  @JsonKey(unknownEnumValue: Enum$LogicalOperator.$unknown)
  final Enum$LogicalOperator? filterOperator;

  Map<String, dynamic> toJson() =>
      _$Input$ProductVariantListOptionsToJson(this);
  int get hashCode {
    final l$skip = skip;
    final l$take = take;
    final l$sort = sort;
    final l$filter = filter;
    final l$filterOperator = filterOperator;
    return Object.hashAll([l$skip, l$take, l$sort, l$filter, l$filterOperator]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductVariantListOptions) ||
        runtimeType != other.runtimeType) return false;
    final l$skip = skip;
    final lOther$skip = other.skip;
    if (l$skip != lOther$skip) return false;
    final l$take = take;
    final lOther$take = other.take;
    if (l$take != lOther$take) return false;
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (l$sort != lOther$sort) return false;
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) return false;
    final l$filterOperator = filterOperator;
    final lOther$filterOperator = other.filterOperator;
    if (l$filterOperator != lOther$filterOperator) return false;
    return true;
  }

  CopyWith$Input$ProductVariantListOptions<Input$ProductVariantListOptions>
      get copyWith => CopyWith$Input$ProductVariantListOptions(this, (i) => i);
}

abstract class CopyWith$Input$ProductVariantListOptions<TRes> {
  factory CopyWith$Input$ProductVariantListOptions(
          Input$ProductVariantListOptions instance,
          TRes Function(Input$ProductVariantListOptions) then) =
      _CopyWithImpl$Input$ProductVariantListOptions;

  factory CopyWith$Input$ProductVariantListOptions.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductVariantListOptions;

  TRes call(
      {int? skip,
      int? take,
      Input$ProductVariantSortParameter? sort,
      Input$ProductVariantFilterParameter? filter,
      Enum$LogicalOperator? filterOperator});
  CopyWith$Input$ProductVariantSortParameter<TRes> get sort;
  CopyWith$Input$ProductVariantFilterParameter<TRes> get filter;
}

class _CopyWithImpl$Input$ProductVariantListOptions<TRes>
    implements CopyWith$Input$ProductVariantListOptions<TRes> {
  _CopyWithImpl$Input$ProductVariantListOptions(this._instance, this._then);

  final Input$ProductVariantListOptions _instance;

  final TRes Function(Input$ProductVariantListOptions) _then;

  static const _undefined = {};

  TRes call(
          {Object? skip = _undefined,
          Object? take = _undefined,
          Object? sort = _undefined,
          Object? filter = _undefined,
          Object? filterOperator = _undefined}) =>
      _then(Input$ProductVariantListOptions(
          skip: skip == _undefined ? _instance.skip : (skip as int?),
          take: take == _undefined ? _instance.take : (take as int?),
          sort: sort == _undefined
              ? _instance.sort
              : (sort as Input$ProductVariantSortParameter?),
          filter: filter == _undefined
              ? _instance.filter
              : (filter as Input$ProductVariantFilterParameter?),
          filterOperator: filterOperator == _undefined
              ? _instance.filterOperator
              : (filterOperator as Enum$LogicalOperator?)));
  CopyWith$Input$ProductVariantSortParameter<TRes> get sort {
    final local$sort = _instance.sort;
    return local$sort == null
        ? CopyWith$Input$ProductVariantSortParameter.stub(_then(_instance))
        : CopyWith$Input$ProductVariantSortParameter(
            local$sort, (e) => call(sort: e));
  }

  CopyWith$Input$ProductVariantFilterParameter<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith$Input$ProductVariantFilterParameter.stub(_then(_instance))
        : CopyWith$Input$ProductVariantFilterParameter(
            local$filter, (e) => call(filter: e));
  }
}

class _CopyWithStubImpl$Input$ProductVariantListOptions<TRes>
    implements CopyWith$Input$ProductVariantListOptions<TRes> {
  _CopyWithStubImpl$Input$ProductVariantListOptions(this._res);

  TRes _res;

  call(
          {int? skip,
          int? take,
          Input$ProductVariantSortParameter? sort,
          Input$ProductVariantFilterParameter? filter,
          Enum$LogicalOperator? filterOperator}) =>
      _res;
  CopyWith$Input$ProductVariantSortParameter<TRes> get sort =>
      CopyWith$Input$ProductVariantSortParameter.stub(_res);
  CopyWith$Input$ProductVariantFilterParameter<TRes> get filter =>
      CopyWith$Input$ProductVariantFilterParameter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$ProductVariantFilterParameter {
  Input$ProductVariantFilterParameter(
      {this.id,
      this.productId,
      this.createdAt,
      this.updatedAt,
      this.languageCode,
      this.sku,
      this.name,
      this.price,
      this.currencyCode,
      this.priceWithTax,
      this.stockLevel});

  @override
  factory Input$ProductVariantFilterParameter.fromJson(
          Map<String, dynamic> json) =>
      _$Input$ProductVariantFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$IDOperators? productId;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? languageCode;

  final Input$StringOperators? sku;

  final Input$StringOperators? name;

  final Input$NumberOperators? price;

  final Input$StringOperators? currencyCode;

  final Input$NumberOperators? priceWithTax;

  final Input$StringOperators? stockLevel;

  Map<String, dynamic> toJson() =>
      _$Input$ProductVariantFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$productId = productId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$languageCode = languageCode;
    final l$sku = sku;
    final l$name = name;
    final l$price = price;
    final l$currencyCode = currencyCode;
    final l$priceWithTax = priceWithTax;
    final l$stockLevel = stockLevel;
    return Object.hashAll([
      l$id,
      l$productId,
      l$createdAt,
      l$updatedAt,
      l$languageCode,
      l$sku,
      l$name,
      l$price,
      l$currencyCode,
      l$priceWithTax,
      l$stockLevel
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductVariantFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$sku = sku;
    final lOther$sku = other.sku;
    if (l$sku != lOther$sku) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$stockLevel = stockLevel;
    final lOther$stockLevel = other.stockLevel;
    if (l$stockLevel != lOther$stockLevel) return false;
    return true;
  }

  CopyWith$Input$ProductVariantFilterParameter<
          Input$ProductVariantFilterParameter>
      get copyWith =>
          CopyWith$Input$ProductVariantFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$ProductVariantFilterParameter<TRes> {
  factory CopyWith$Input$ProductVariantFilterParameter(
          Input$ProductVariantFilterParameter instance,
          TRes Function(Input$ProductVariantFilterParameter) then) =
      _CopyWithImpl$Input$ProductVariantFilterParameter;

  factory CopyWith$Input$ProductVariantFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductVariantFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$IDOperators? productId,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? languageCode,
      Input$StringOperators? sku,
      Input$StringOperators? name,
      Input$NumberOperators? price,
      Input$StringOperators? currencyCode,
      Input$NumberOperators? priceWithTax,
      Input$StringOperators? stockLevel});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$IDOperators<TRes> get productId;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get languageCode;
  CopyWith$Input$StringOperators<TRes> get sku;
  CopyWith$Input$StringOperators<TRes> get name;
  CopyWith$Input$NumberOperators<TRes> get price;
  CopyWith$Input$StringOperators<TRes> get currencyCode;
  CopyWith$Input$NumberOperators<TRes> get priceWithTax;
  CopyWith$Input$StringOperators<TRes> get stockLevel;
}

class _CopyWithImpl$Input$ProductVariantFilterParameter<TRes>
    implements CopyWith$Input$ProductVariantFilterParameter<TRes> {
  _CopyWithImpl$Input$ProductVariantFilterParameter(this._instance, this._then);

  final Input$ProductVariantFilterParameter _instance;

  final TRes Function(Input$ProductVariantFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? productId = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? languageCode = _undefined,
          Object? sku = _undefined,
          Object? name = _undefined,
          Object? price = _undefined,
          Object? currencyCode = _undefined,
          Object? priceWithTax = _undefined,
          Object? stockLevel = _undefined}) =>
      _then(Input$ProductVariantFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          productId: productId == _undefined
              ? _instance.productId
              : (productId as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          languageCode: languageCode == _undefined
              ? _instance.languageCode
              : (languageCode as Input$StringOperators?),
          sku: sku == _undefined
              ? _instance.sku
              : (sku as Input$StringOperators?),
          name: name == _undefined
              ? _instance.name
              : (name as Input$StringOperators?),
          price: price == _undefined
              ? _instance.price
              : (price as Input$NumberOperators?),
          currencyCode: currencyCode == _undefined
              ? _instance.currencyCode
              : (currencyCode as Input$StringOperators?),
          priceWithTax: priceWithTax == _undefined
              ? _instance.priceWithTax
              : (priceWithTax as Input$NumberOperators?),
          stockLevel: stockLevel == _undefined
              ? _instance.stockLevel
              : (stockLevel as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDOperators<TRes> get productId {
    final local$productId = _instance.productId;
    return local$productId == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(
            local$productId, (e) => call(productId: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get languageCode {
    final local$languageCode = _instance.languageCode;
    return local$languageCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$languageCode, (e) => call(languageCode: e));
  }

  CopyWith$Input$StringOperators<TRes> get sku {
    final local$sku = _instance.sku;
    return local$sku == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$sku, (e) => call(sku: e));
  }

  CopyWith$Input$StringOperators<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$name, (e) => call(name: e));
  }

  CopyWith$Input$NumberOperators<TRes> get price {
    final local$price = _instance.price;
    return local$price == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(local$price, (e) => call(price: e));
  }

  CopyWith$Input$StringOperators<TRes> get currencyCode {
    final local$currencyCode = _instance.currencyCode;
    return local$currencyCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$currencyCode, (e) => call(currencyCode: e));
  }

  CopyWith$Input$NumberOperators<TRes> get priceWithTax {
    final local$priceWithTax = _instance.priceWithTax;
    return local$priceWithTax == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$priceWithTax, (e) => call(priceWithTax: e));
  }

  CopyWith$Input$StringOperators<TRes> get stockLevel {
    final local$stockLevel = _instance.stockLevel;
    return local$stockLevel == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$stockLevel, (e) => call(stockLevel: e));
  }
}

class _CopyWithStubImpl$Input$ProductVariantFilterParameter<TRes>
    implements CopyWith$Input$ProductVariantFilterParameter<TRes> {
  _CopyWithStubImpl$Input$ProductVariantFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$IDOperators? productId,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? languageCode,
          Input$StringOperators? sku,
          Input$StringOperators? name,
          Input$NumberOperators? price,
          Input$StringOperators? currencyCode,
          Input$NumberOperators? priceWithTax,
          Input$StringOperators? stockLevel}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$IDOperators<TRes> get productId =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get languageCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get sku =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get name =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get price =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get currencyCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get priceWithTax =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get stockLevel =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$ProductVariantSortParameter {
  Input$ProductVariantSortParameter(
      {this.id,
      this.productId,
      this.createdAt,
      this.updatedAt,
      this.sku,
      this.name,
      this.price,
      this.priceWithTax,
      this.stockLevel});

  @override
  factory Input$ProductVariantSortParameter.fromJson(
          Map<String, dynamic> json) =>
      _$Input$ProductVariantSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? productId;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? sku;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? name;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? price;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? priceWithTax;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? stockLevel;

  Map<String, dynamic> toJson() =>
      _$Input$ProductVariantSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$productId = productId;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$sku = sku;
    final l$name = name;
    final l$price = price;
    final l$priceWithTax = priceWithTax;
    final l$stockLevel = stockLevel;
    return Object.hashAll([
      l$id,
      l$productId,
      l$createdAt,
      l$updatedAt,
      l$sku,
      l$name,
      l$price,
      l$priceWithTax,
      l$stockLevel
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductVariantSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$sku = sku;
    final lOther$sku = other.sku;
    if (l$sku != lOther$sku) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) return false;
    final l$priceWithTax = priceWithTax;
    final lOther$priceWithTax = other.priceWithTax;
    if (l$priceWithTax != lOther$priceWithTax) return false;
    final l$stockLevel = stockLevel;
    final lOther$stockLevel = other.stockLevel;
    if (l$stockLevel != lOther$stockLevel) return false;
    return true;
  }

  CopyWith$Input$ProductVariantSortParameter<Input$ProductVariantSortParameter>
      get copyWith =>
          CopyWith$Input$ProductVariantSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$ProductVariantSortParameter<TRes> {
  factory CopyWith$Input$ProductVariantSortParameter(
          Input$ProductVariantSortParameter instance,
          TRes Function(Input$ProductVariantSortParameter) then) =
      _CopyWithImpl$Input$ProductVariantSortParameter;

  factory CopyWith$Input$ProductVariantSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductVariantSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? productId,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? sku,
      Enum$SortOrder? name,
      Enum$SortOrder? price,
      Enum$SortOrder? priceWithTax,
      Enum$SortOrder? stockLevel});
}

class _CopyWithImpl$Input$ProductVariantSortParameter<TRes>
    implements CopyWith$Input$ProductVariantSortParameter<TRes> {
  _CopyWithImpl$Input$ProductVariantSortParameter(this._instance, this._then);

  final Input$ProductVariantSortParameter _instance;

  final TRes Function(Input$ProductVariantSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? productId = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? sku = _undefined,
          Object? name = _undefined,
          Object? price = _undefined,
          Object? priceWithTax = _undefined,
          Object? stockLevel = _undefined}) =>
      _then(Input$ProductVariantSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          productId: productId == _undefined
              ? _instance.productId
              : (productId as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          sku: sku == _undefined ? _instance.sku : (sku as Enum$SortOrder?),
          name: name == _undefined ? _instance.name : (name as Enum$SortOrder?),
          price: price == _undefined
              ? _instance.price
              : (price as Enum$SortOrder?),
          priceWithTax: priceWithTax == _undefined
              ? _instance.priceWithTax
              : (priceWithTax as Enum$SortOrder?),
          stockLevel: stockLevel == _undefined
              ? _instance.stockLevel
              : (stockLevel as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$ProductVariantSortParameter<TRes>
    implements CopyWith$Input$ProductVariantSortParameter<TRes> {
  _CopyWithStubImpl$Input$ProductVariantSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? productId,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? sku,
          Enum$SortOrder? name,
          Enum$SortOrder? price,
          Enum$SortOrder? priceWithTax,
          Enum$SortOrder? stockLevel}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CustomerFilterParameter {
  Input$CustomerFilterParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.emailAddress});

  @override
  factory Input$CustomerFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$CustomerFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? title;

  final Input$StringOperators? firstName;

  final Input$StringOperators? lastName;

  final Input$StringOperators? phoneNumber;

  final Input$StringOperators? emailAddress;

  Map<String, dynamic> toJson() => _$Input$CustomerFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$emailAddress = emailAddress;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$title,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$emailAddress
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CustomerFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    return true;
  }

  CopyWith$Input$CustomerFilterParameter<Input$CustomerFilterParameter>
      get copyWith => CopyWith$Input$CustomerFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$CustomerFilterParameter<TRes> {
  factory CopyWith$Input$CustomerFilterParameter(
          Input$CustomerFilterParameter instance,
          TRes Function(Input$CustomerFilterParameter) then) =
      _CopyWithImpl$Input$CustomerFilterParameter;

  factory CopyWith$Input$CustomerFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$CustomerFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? title,
      Input$StringOperators? firstName,
      Input$StringOperators? lastName,
      Input$StringOperators? phoneNumber,
      Input$StringOperators? emailAddress});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get title;
  CopyWith$Input$StringOperators<TRes> get firstName;
  CopyWith$Input$StringOperators<TRes> get lastName;
  CopyWith$Input$StringOperators<TRes> get phoneNumber;
  CopyWith$Input$StringOperators<TRes> get emailAddress;
}

class _CopyWithImpl$Input$CustomerFilterParameter<TRes>
    implements CopyWith$Input$CustomerFilterParameter<TRes> {
  _CopyWithImpl$Input$CustomerFilterParameter(this._instance, this._then);

  final Input$CustomerFilterParameter _instance;

  final TRes Function(Input$CustomerFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? title = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? emailAddress = _undefined}) =>
      _then(Input$CustomerFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          title: title == _undefined
              ? _instance.title
              : (title as Input$StringOperators?),
          firstName: firstName == _undefined
              ? _instance.firstName
              : (firstName as Input$StringOperators?),
          lastName: lastName == _undefined
              ? _instance.lastName
              : (lastName as Input$StringOperators?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as Input$StringOperators?),
          emailAddress: emailAddress == _undefined
              ? _instance.emailAddress
              : (emailAddress as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$title, (e) => call(title: e));
  }

  CopyWith$Input$StringOperators<TRes> get firstName {
    final local$firstName = _instance.firstName;
    return local$firstName == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$firstName, (e) => call(firstName: e));
  }

  CopyWith$Input$StringOperators<TRes> get lastName {
    final local$lastName = _instance.lastName;
    return local$lastName == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$lastName, (e) => call(lastName: e));
  }

  CopyWith$Input$StringOperators<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return local$phoneNumber == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$phoneNumber, (e) => call(phoneNumber: e));
  }

  CopyWith$Input$StringOperators<TRes> get emailAddress {
    final local$emailAddress = _instance.emailAddress;
    return local$emailAddress == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$emailAddress, (e) => call(emailAddress: e));
  }
}

class _CopyWithStubImpl$Input$CustomerFilterParameter<TRes>
    implements CopyWith$Input$CustomerFilterParameter<TRes> {
  _CopyWithStubImpl$Input$CustomerFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? title,
          Input$StringOperators? firstName,
          Input$StringOperators? lastName,
          Input$StringOperators? phoneNumber,
          Input$StringOperators? emailAddress}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get title =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get firstName =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get lastName =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get phoneNumber =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get emailAddress =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$CustomerSortParameter {
  Input$CustomerSortParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.emailAddress});

  @override
  factory Input$CustomerSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$CustomerSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? title;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? firstName;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? lastName;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? phoneNumber;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? emailAddress;

  Map<String, dynamic> toJson() => _$Input$CustomerSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$phoneNumber = phoneNumber;
    final l$emailAddress = emailAddress;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$title,
      l$firstName,
      l$lastName,
      l$phoneNumber,
      l$emailAddress
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CustomerSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) return false;
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) return false;
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) return false;
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) return false;
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) return false;
    return true;
  }

  CopyWith$Input$CustomerSortParameter<Input$CustomerSortParameter>
      get copyWith => CopyWith$Input$CustomerSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$CustomerSortParameter<TRes> {
  factory CopyWith$Input$CustomerSortParameter(
          Input$CustomerSortParameter instance,
          TRes Function(Input$CustomerSortParameter) then) =
      _CopyWithImpl$Input$CustomerSortParameter;

  factory CopyWith$Input$CustomerSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$CustomerSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? title,
      Enum$SortOrder? firstName,
      Enum$SortOrder? lastName,
      Enum$SortOrder? phoneNumber,
      Enum$SortOrder? emailAddress});
}

class _CopyWithImpl$Input$CustomerSortParameter<TRes>
    implements CopyWith$Input$CustomerSortParameter<TRes> {
  _CopyWithImpl$Input$CustomerSortParameter(this._instance, this._then);

  final Input$CustomerSortParameter _instance;

  final TRes Function(Input$CustomerSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? title = _undefined,
          Object? firstName = _undefined,
          Object? lastName = _undefined,
          Object? phoneNumber = _undefined,
          Object? emailAddress = _undefined}) =>
      _then(Input$CustomerSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          title: title == _undefined
              ? _instance.title
              : (title as Enum$SortOrder?),
          firstName: firstName == _undefined
              ? _instance.firstName
              : (firstName as Enum$SortOrder?),
          lastName: lastName == _undefined
              ? _instance.lastName
              : (lastName as Enum$SortOrder?),
          phoneNumber: phoneNumber == _undefined
              ? _instance.phoneNumber
              : (phoneNumber as Enum$SortOrder?),
          emailAddress: emailAddress == _undefined
              ? _instance.emailAddress
              : (emailAddress as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$CustomerSortParameter<TRes>
    implements CopyWith$Input$CustomerSortParameter<TRes> {
  _CopyWithStubImpl$Input$CustomerSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? title,
          Enum$SortOrder? firstName,
          Enum$SortOrder? lastName,
          Enum$SortOrder? phoneNumber,
          Enum$SortOrder? emailAddress}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$OrderFilterParameter {
  Input$OrderFilterParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.orderPlacedAt,
      this.code,
      this.state,
      this.active,
      this.totalQuantity,
      this.subTotal,
      this.subTotalWithTax,
      this.currencyCode,
      this.shipping,
      this.shippingWithTax,
      this.total,
      this.totalWithTax});

  @override
  factory Input$OrderFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$OrderFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$DateOperators? orderPlacedAt;

  final Input$StringOperators? code;

  final Input$StringOperators? state;

  final Input$BooleanOperators? active;

  final Input$NumberOperators? totalQuantity;

  final Input$NumberOperators? subTotal;

  final Input$NumberOperators? subTotalWithTax;

  final Input$StringOperators? currencyCode;

  final Input$NumberOperators? shipping;

  final Input$NumberOperators? shippingWithTax;

  final Input$NumberOperators? total;

  final Input$NumberOperators? totalWithTax;

  Map<String, dynamic> toJson() => _$Input$OrderFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$orderPlacedAt = orderPlacedAt;
    final l$code = code;
    final l$state = state;
    final l$active = active;
    final l$totalQuantity = totalQuantity;
    final l$subTotal = subTotal;
    final l$subTotalWithTax = subTotalWithTax;
    final l$currencyCode = currencyCode;
    final l$shipping = shipping;
    final l$shippingWithTax = shippingWithTax;
    final l$total = total;
    final l$totalWithTax = totalWithTax;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$orderPlacedAt,
      l$code,
      l$state,
      l$active,
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$currencyCode,
      l$shipping,
      l$shippingWithTax,
      l$total,
      l$totalWithTax
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$OrderFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$orderPlacedAt = orderPlacedAt;
    final lOther$orderPlacedAt = other.orderPlacedAt;
    if (l$orderPlacedAt != lOther$orderPlacedAt) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) return false;
    final l$totalQuantity = totalQuantity;
    final lOther$totalQuantity = other.totalQuantity;
    if (l$totalQuantity != lOther$totalQuantity) return false;
    final l$subTotal = subTotal;
    final lOther$subTotal = other.subTotal;
    if (l$subTotal != lOther$subTotal) return false;
    final l$subTotalWithTax = subTotalWithTax;
    final lOther$subTotalWithTax = other.subTotalWithTax;
    if (l$subTotalWithTax != lOther$subTotalWithTax) return false;
    final l$currencyCode = currencyCode;
    final lOther$currencyCode = other.currencyCode;
    if (l$currencyCode != lOther$currencyCode) return false;
    final l$shipping = shipping;
    final lOther$shipping = other.shipping;
    if (l$shipping != lOther$shipping) return false;
    final l$shippingWithTax = shippingWithTax;
    final lOther$shippingWithTax = other.shippingWithTax;
    if (l$shippingWithTax != lOther$shippingWithTax) return false;
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) return false;
    final l$totalWithTax = totalWithTax;
    final lOther$totalWithTax = other.totalWithTax;
    if (l$totalWithTax != lOther$totalWithTax) return false;
    return true;
  }

  CopyWith$Input$OrderFilterParameter<Input$OrderFilterParameter>
      get copyWith => CopyWith$Input$OrderFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$OrderFilterParameter<TRes> {
  factory CopyWith$Input$OrderFilterParameter(
          Input$OrderFilterParameter instance,
          TRes Function(Input$OrderFilterParameter) then) =
      _CopyWithImpl$Input$OrderFilterParameter;

  factory CopyWith$Input$OrderFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$DateOperators? orderPlacedAt,
      Input$StringOperators? code,
      Input$StringOperators? state,
      Input$BooleanOperators? active,
      Input$NumberOperators? totalQuantity,
      Input$NumberOperators? subTotal,
      Input$NumberOperators? subTotalWithTax,
      Input$StringOperators? currencyCode,
      Input$NumberOperators? shipping,
      Input$NumberOperators? shippingWithTax,
      Input$NumberOperators? total,
      Input$NumberOperators? totalWithTax});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$DateOperators<TRes> get orderPlacedAt;
  CopyWith$Input$StringOperators<TRes> get code;
  CopyWith$Input$StringOperators<TRes> get state;
  CopyWith$Input$BooleanOperators<TRes> get active;
  CopyWith$Input$NumberOperators<TRes> get totalQuantity;
  CopyWith$Input$NumberOperators<TRes> get subTotal;
  CopyWith$Input$NumberOperators<TRes> get subTotalWithTax;
  CopyWith$Input$StringOperators<TRes> get currencyCode;
  CopyWith$Input$NumberOperators<TRes> get shipping;
  CopyWith$Input$NumberOperators<TRes> get shippingWithTax;
  CopyWith$Input$NumberOperators<TRes> get total;
  CopyWith$Input$NumberOperators<TRes> get totalWithTax;
}

class _CopyWithImpl$Input$OrderFilterParameter<TRes>
    implements CopyWith$Input$OrderFilterParameter<TRes> {
  _CopyWithImpl$Input$OrderFilterParameter(this._instance, this._then);

  final Input$OrderFilterParameter _instance;

  final TRes Function(Input$OrderFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? orderPlacedAt = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? active = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? currencyCode = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined}) =>
      _then(Input$OrderFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          orderPlacedAt: orderPlacedAt == _undefined
              ? _instance.orderPlacedAt
              : (orderPlacedAt as Input$DateOperators?),
          code: code == _undefined
              ? _instance.code
              : (code as Input$StringOperators?),
          state: state == _undefined
              ? _instance.state
              : (state as Input$StringOperators?),
          active: active == _undefined
              ? _instance.active
              : (active as Input$BooleanOperators?),
          totalQuantity: totalQuantity == _undefined
              ? _instance.totalQuantity
              : (totalQuantity as Input$NumberOperators?),
          subTotal: subTotal == _undefined
              ? _instance.subTotal
              : (subTotal as Input$NumberOperators?),
          subTotalWithTax: subTotalWithTax == _undefined
              ? _instance.subTotalWithTax
              : (subTotalWithTax as Input$NumberOperators?),
          currencyCode: currencyCode == _undefined
              ? _instance.currencyCode
              : (currencyCode as Input$StringOperators?),
          shipping: shipping == _undefined
              ? _instance.shipping
              : (shipping as Input$NumberOperators?),
          shippingWithTax: shippingWithTax == _undefined
              ? _instance.shippingWithTax
              : (shippingWithTax as Input$NumberOperators?),
          total: total == _undefined
              ? _instance.total
              : (total as Input$NumberOperators?),
          totalWithTax: totalWithTax == _undefined
              ? _instance.totalWithTax
              : (totalWithTax as Input$NumberOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get orderPlacedAt {
    final local$orderPlacedAt = _instance.orderPlacedAt;
    return local$orderPlacedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$orderPlacedAt, (e) => call(orderPlacedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$code, (e) => call(code: e));
  }

  CopyWith$Input$StringOperators<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$state, (e) => call(state: e));
  }

  CopyWith$Input$BooleanOperators<TRes> get active {
    final local$active = _instance.active;
    return local$active == null
        ? CopyWith$Input$BooleanOperators.stub(_then(_instance))
        : CopyWith$Input$BooleanOperators(local$active, (e) => call(active: e));
  }

  CopyWith$Input$NumberOperators<TRes> get totalQuantity {
    final local$totalQuantity = _instance.totalQuantity;
    return local$totalQuantity == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$totalQuantity, (e) => call(totalQuantity: e));
  }

  CopyWith$Input$NumberOperators<TRes> get subTotal {
    final local$subTotal = _instance.subTotal;
    return local$subTotal == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$subTotal, (e) => call(subTotal: e));
  }

  CopyWith$Input$NumberOperators<TRes> get subTotalWithTax {
    final local$subTotalWithTax = _instance.subTotalWithTax;
    return local$subTotalWithTax == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$subTotalWithTax, (e) => call(subTotalWithTax: e));
  }

  CopyWith$Input$StringOperators<TRes> get currencyCode {
    final local$currencyCode = _instance.currencyCode;
    return local$currencyCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$currencyCode, (e) => call(currencyCode: e));
  }

  CopyWith$Input$NumberOperators<TRes> get shipping {
    final local$shipping = _instance.shipping;
    return local$shipping == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$shipping, (e) => call(shipping: e));
  }

  CopyWith$Input$NumberOperators<TRes> get shippingWithTax {
    final local$shippingWithTax = _instance.shippingWithTax;
    return local$shippingWithTax == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$shippingWithTax, (e) => call(shippingWithTax: e));
  }

  CopyWith$Input$NumberOperators<TRes> get total {
    final local$total = _instance.total;
    return local$total == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(local$total, (e) => call(total: e));
  }

  CopyWith$Input$NumberOperators<TRes> get totalWithTax {
    final local$totalWithTax = _instance.totalWithTax;
    return local$totalWithTax == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$totalWithTax, (e) => call(totalWithTax: e));
  }
}

class _CopyWithStubImpl$Input$OrderFilterParameter<TRes>
    implements CopyWith$Input$OrderFilterParameter<TRes> {
  _CopyWithStubImpl$Input$OrderFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$DateOperators? orderPlacedAt,
          Input$StringOperators? code,
          Input$StringOperators? state,
          Input$BooleanOperators? active,
          Input$NumberOperators? totalQuantity,
          Input$NumberOperators? subTotal,
          Input$NumberOperators? subTotalWithTax,
          Input$StringOperators? currencyCode,
          Input$NumberOperators? shipping,
          Input$NumberOperators? shippingWithTax,
          Input$NumberOperators? total,
          Input$NumberOperators? totalWithTax}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get orderPlacedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get code =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get state =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$BooleanOperators<TRes> get active =>
      CopyWith$Input$BooleanOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get totalQuantity =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get subTotal =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get subTotalWithTax =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get currencyCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get shipping =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get shippingWithTax =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get total =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get totalWithTax =>
      CopyWith$Input$NumberOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$OrderSortParameter {
  Input$OrderSortParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.orderPlacedAt,
      this.code,
      this.state,
      this.totalQuantity,
      this.subTotal,
      this.subTotalWithTax,
      this.shipping,
      this.shippingWithTax,
      this.total,
      this.totalWithTax});

  @override
  factory Input$OrderSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$OrderSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? orderPlacedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? code;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? state;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? totalQuantity;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? subTotal;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? subTotalWithTax;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? shipping;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? shippingWithTax;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? total;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? totalWithTax;

  Map<String, dynamic> toJson() => _$Input$OrderSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$orderPlacedAt = orderPlacedAt;
    final l$code = code;
    final l$state = state;
    final l$totalQuantity = totalQuantity;
    final l$subTotal = subTotal;
    final l$subTotalWithTax = subTotalWithTax;
    final l$shipping = shipping;
    final l$shippingWithTax = shippingWithTax;
    final l$total = total;
    final l$totalWithTax = totalWithTax;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$orderPlacedAt,
      l$code,
      l$state,
      l$totalQuantity,
      l$subTotal,
      l$subTotalWithTax,
      l$shipping,
      l$shippingWithTax,
      l$total,
      l$totalWithTax
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$OrderSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$orderPlacedAt = orderPlacedAt;
    final lOther$orderPlacedAt = other.orderPlacedAt;
    if (l$orderPlacedAt != lOther$orderPlacedAt) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) return false;
    final l$totalQuantity = totalQuantity;
    final lOther$totalQuantity = other.totalQuantity;
    if (l$totalQuantity != lOther$totalQuantity) return false;
    final l$subTotal = subTotal;
    final lOther$subTotal = other.subTotal;
    if (l$subTotal != lOther$subTotal) return false;
    final l$subTotalWithTax = subTotalWithTax;
    final lOther$subTotalWithTax = other.subTotalWithTax;
    if (l$subTotalWithTax != lOther$subTotalWithTax) return false;
    final l$shipping = shipping;
    final lOther$shipping = other.shipping;
    if (l$shipping != lOther$shipping) return false;
    final l$shippingWithTax = shippingWithTax;
    final lOther$shippingWithTax = other.shippingWithTax;
    if (l$shippingWithTax != lOther$shippingWithTax) return false;
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) return false;
    final l$totalWithTax = totalWithTax;
    final lOther$totalWithTax = other.totalWithTax;
    if (l$totalWithTax != lOther$totalWithTax) return false;
    return true;
  }

  CopyWith$Input$OrderSortParameter<Input$OrderSortParameter> get copyWith =>
      CopyWith$Input$OrderSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$OrderSortParameter<TRes> {
  factory CopyWith$Input$OrderSortParameter(Input$OrderSortParameter instance,
          TRes Function(Input$OrderSortParameter) then) =
      _CopyWithImpl$Input$OrderSortParameter;

  factory CopyWith$Input$OrderSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? orderPlacedAt,
      Enum$SortOrder? code,
      Enum$SortOrder? state,
      Enum$SortOrder? totalQuantity,
      Enum$SortOrder? subTotal,
      Enum$SortOrder? subTotalWithTax,
      Enum$SortOrder? shipping,
      Enum$SortOrder? shippingWithTax,
      Enum$SortOrder? total,
      Enum$SortOrder? totalWithTax});
}

class _CopyWithImpl$Input$OrderSortParameter<TRes>
    implements CopyWith$Input$OrderSortParameter<TRes> {
  _CopyWithImpl$Input$OrderSortParameter(this._instance, this._then);

  final Input$OrderSortParameter _instance;

  final TRes Function(Input$OrderSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? orderPlacedAt = _undefined,
          Object? code = _undefined,
          Object? state = _undefined,
          Object? totalQuantity = _undefined,
          Object? subTotal = _undefined,
          Object? subTotalWithTax = _undefined,
          Object? shipping = _undefined,
          Object? shippingWithTax = _undefined,
          Object? total = _undefined,
          Object? totalWithTax = _undefined}) =>
      _then(Input$OrderSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          orderPlacedAt: orderPlacedAt == _undefined
              ? _instance.orderPlacedAt
              : (orderPlacedAt as Enum$SortOrder?),
          code: code == _undefined ? _instance.code : (code as Enum$SortOrder?),
          state: state == _undefined
              ? _instance.state
              : (state as Enum$SortOrder?),
          totalQuantity: totalQuantity == _undefined
              ? _instance.totalQuantity
              : (totalQuantity as Enum$SortOrder?),
          subTotal: subTotal == _undefined
              ? _instance.subTotal
              : (subTotal as Enum$SortOrder?),
          subTotalWithTax: subTotalWithTax == _undefined
              ? _instance.subTotalWithTax
              : (subTotalWithTax as Enum$SortOrder?),
          shipping: shipping == _undefined
              ? _instance.shipping
              : (shipping as Enum$SortOrder?),
          shippingWithTax: shippingWithTax == _undefined
              ? _instance.shippingWithTax
              : (shippingWithTax as Enum$SortOrder?),
          total: total == _undefined
              ? _instance.total
              : (total as Enum$SortOrder?),
          totalWithTax: totalWithTax == _undefined
              ? _instance.totalWithTax
              : (totalWithTax as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$OrderSortParameter<TRes>
    implements CopyWith$Input$OrderSortParameter<TRes> {
  _CopyWithStubImpl$Input$OrderSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? orderPlacedAt,
          Enum$SortOrder? code,
          Enum$SortOrder? state,
          Enum$SortOrder? totalQuantity,
          Enum$SortOrder? subTotal,
          Enum$SortOrder? subTotalWithTax,
          Enum$SortOrder? shipping,
          Enum$SortOrder? shippingWithTax,
          Enum$SortOrder? total,
          Enum$SortOrder? totalWithTax}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$HistoryEntryFilterParameter {
  Input$HistoryEntryFilterParameter(
      {this.id, this.createdAt, this.updatedAt, this.type});

  @override
  factory Input$HistoryEntryFilterParameter.fromJson(
          Map<String, dynamic> json) =>
      _$Input$HistoryEntryFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? type;

  Map<String, dynamic> toJson() =>
      _$Input$HistoryEntryFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$type = type;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt, l$type]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$HistoryEntryFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) return false;
    return true;
  }

  CopyWith$Input$HistoryEntryFilterParameter<Input$HistoryEntryFilterParameter>
      get copyWith =>
          CopyWith$Input$HistoryEntryFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$HistoryEntryFilterParameter<TRes> {
  factory CopyWith$Input$HistoryEntryFilterParameter(
          Input$HistoryEntryFilterParameter instance,
          TRes Function(Input$HistoryEntryFilterParameter) then) =
      _CopyWithImpl$Input$HistoryEntryFilterParameter;

  factory CopyWith$Input$HistoryEntryFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$HistoryEntryFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? type});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get type;
}

class _CopyWithImpl$Input$HistoryEntryFilterParameter<TRes>
    implements CopyWith$Input$HistoryEntryFilterParameter<TRes> {
  _CopyWithImpl$Input$HistoryEntryFilterParameter(this._instance, this._then);

  final Input$HistoryEntryFilterParameter _instance;

  final TRes Function(Input$HistoryEntryFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? type = _undefined}) =>
      _then(Input$HistoryEntryFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          type: type == _undefined
              ? _instance.type
              : (type as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get type {
    final local$type = _instance.type;
    return local$type == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$type, (e) => call(type: e));
  }
}

class _CopyWithStubImpl$Input$HistoryEntryFilterParameter<TRes>
    implements CopyWith$Input$HistoryEntryFilterParameter<TRes> {
  _CopyWithStubImpl$Input$HistoryEntryFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? type}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get type =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$HistoryEntrySortParameter {
  Input$HistoryEntrySortParameter({this.id, this.createdAt, this.updatedAt});

  @override
  factory Input$HistoryEntrySortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$HistoryEntrySortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  Map<String, dynamic> toJson() =>
      _$Input$HistoryEntrySortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$HistoryEntrySortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    return true;
  }

  CopyWith$Input$HistoryEntrySortParameter<Input$HistoryEntrySortParameter>
      get copyWith => CopyWith$Input$HistoryEntrySortParameter(this, (i) => i);
}

abstract class CopyWith$Input$HistoryEntrySortParameter<TRes> {
  factory CopyWith$Input$HistoryEntrySortParameter(
          Input$HistoryEntrySortParameter instance,
          TRes Function(Input$HistoryEntrySortParameter) then) =
      _CopyWithImpl$Input$HistoryEntrySortParameter;

  factory CopyWith$Input$HistoryEntrySortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$HistoryEntrySortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt});
}

class _CopyWithImpl$Input$HistoryEntrySortParameter<TRes>
    implements CopyWith$Input$HistoryEntrySortParameter<TRes> {
  _CopyWithImpl$Input$HistoryEntrySortParameter(this._instance, this._then);

  final Input$HistoryEntrySortParameter _instance;

  final TRes Function(Input$HistoryEntrySortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined}) =>
      _then(Input$HistoryEntrySortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$HistoryEntrySortParameter<TRes>
    implements CopyWith$Input$HistoryEntrySortParameter<TRes> {
  _CopyWithStubImpl$Input$HistoryEntrySortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CollectionFilterParameter {
  Input$CollectionFilterParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.languageCode,
      this.name,
      this.slug,
      this.position,
      this.description});

  @override
  factory Input$CollectionFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$CollectionFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? languageCode;

  final Input$StringOperators? name;

  final Input$StringOperators? slug;

  final Input$NumberOperators? position;

  final Input$StringOperators? description;

  Map<String, dynamic> toJson() =>
      _$Input$CollectionFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$languageCode = languageCode;
    final l$name = name;
    final l$slug = slug;
    final l$position = position;
    final l$description = description;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$languageCode,
      l$name,
      l$slug,
      l$position,
      l$description
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CollectionFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$position = position;
    final lOther$position = other.position;
    if (l$position != lOther$position) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    return true;
  }

  CopyWith$Input$CollectionFilterParameter<Input$CollectionFilterParameter>
      get copyWith => CopyWith$Input$CollectionFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$CollectionFilterParameter<TRes> {
  factory CopyWith$Input$CollectionFilterParameter(
          Input$CollectionFilterParameter instance,
          TRes Function(Input$CollectionFilterParameter) then) =
      _CopyWithImpl$Input$CollectionFilterParameter;

  factory CopyWith$Input$CollectionFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$CollectionFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? languageCode,
      Input$StringOperators? name,
      Input$StringOperators? slug,
      Input$NumberOperators? position,
      Input$StringOperators? description});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get languageCode;
  CopyWith$Input$StringOperators<TRes> get name;
  CopyWith$Input$StringOperators<TRes> get slug;
  CopyWith$Input$NumberOperators<TRes> get position;
  CopyWith$Input$StringOperators<TRes> get description;
}

class _CopyWithImpl$Input$CollectionFilterParameter<TRes>
    implements CopyWith$Input$CollectionFilterParameter<TRes> {
  _CopyWithImpl$Input$CollectionFilterParameter(this._instance, this._then);

  final Input$CollectionFilterParameter _instance;

  final TRes Function(Input$CollectionFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? languageCode = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? position = _undefined,
          Object? description = _undefined}) =>
      _then(Input$CollectionFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          languageCode: languageCode == _undefined
              ? _instance.languageCode
              : (languageCode as Input$StringOperators?),
          name: name == _undefined
              ? _instance.name
              : (name as Input$StringOperators?),
          slug: slug == _undefined
              ? _instance.slug
              : (slug as Input$StringOperators?),
          position: position == _undefined
              ? _instance.position
              : (position as Input$NumberOperators?),
          description: description == _undefined
              ? _instance.description
              : (description as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get languageCode {
    final local$languageCode = _instance.languageCode;
    return local$languageCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$languageCode, (e) => call(languageCode: e));
  }

  CopyWith$Input$StringOperators<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperators<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$NumberOperators<TRes> get position {
    final local$position = _instance.position;
    return local$position == null
        ? CopyWith$Input$NumberOperators.stub(_then(_instance))
        : CopyWith$Input$NumberOperators(
            local$position, (e) => call(position: e));
  }

  CopyWith$Input$StringOperators<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$description, (e) => call(description: e));
  }
}

class _CopyWithStubImpl$Input$CollectionFilterParameter<TRes>
    implements CopyWith$Input$CollectionFilterParameter<TRes> {
  _CopyWithStubImpl$Input$CollectionFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? languageCode,
          Input$StringOperators? name,
          Input$StringOperators? slug,
          Input$NumberOperators? position,
          Input$StringOperators? description}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get languageCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get name =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get slug =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$NumberOperators<TRes> get position =>
      CopyWith$Input$NumberOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get description =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$CollectionSortParameter {
  Input$CollectionSortParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.slug,
      this.position,
      this.description});

  @override
  factory Input$CollectionSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$CollectionSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? name;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? slug;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? position;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? description;

  Map<String, dynamic> toJson() => _$Input$CollectionSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$name = name;
    final l$slug = slug;
    final l$position = position;
    final l$description = description;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$name,
      l$slug,
      l$position,
      l$description
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CollectionSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$position = position;
    final lOther$position = other.position;
    if (l$position != lOther$position) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    return true;
  }

  CopyWith$Input$CollectionSortParameter<Input$CollectionSortParameter>
      get copyWith => CopyWith$Input$CollectionSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$CollectionSortParameter<TRes> {
  factory CopyWith$Input$CollectionSortParameter(
          Input$CollectionSortParameter instance,
          TRes Function(Input$CollectionSortParameter) then) =
      _CopyWithImpl$Input$CollectionSortParameter;

  factory CopyWith$Input$CollectionSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$CollectionSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? name,
      Enum$SortOrder? slug,
      Enum$SortOrder? position,
      Enum$SortOrder? description});
}

class _CopyWithImpl$Input$CollectionSortParameter<TRes>
    implements CopyWith$Input$CollectionSortParameter<TRes> {
  _CopyWithImpl$Input$CollectionSortParameter(this._instance, this._then);

  final Input$CollectionSortParameter _instance;

  final TRes Function(Input$CollectionSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? position = _undefined,
          Object? description = _undefined}) =>
      _then(Input$CollectionSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          name: name == _undefined ? _instance.name : (name as Enum$SortOrder?),
          slug: slug == _undefined ? _instance.slug : (slug as Enum$SortOrder?),
          position: position == _undefined
              ? _instance.position
              : (position as Enum$SortOrder?),
          description: description == _undefined
              ? _instance.description
              : (description as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$CollectionSortParameter<TRes>
    implements CopyWith$Input$CollectionSortParameter<TRes> {
  _CopyWithStubImpl$Input$CollectionSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? name,
          Enum$SortOrder? slug,
          Enum$SortOrder? position,
          Enum$SortOrder? description}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$FacetFilterParameter {
  Input$FacetFilterParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.languageCode,
      this.name,
      this.code});

  @override
  factory Input$FacetFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$FacetFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? languageCode;

  final Input$StringOperators? name;

  final Input$StringOperators? code;

  Map<String, dynamic> toJson() => _$Input$FacetFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$languageCode = languageCode;
    final l$name = name;
    final l$code = code;
    return Object.hashAll(
        [l$id, l$createdAt, l$updatedAt, l$languageCode, l$name, l$code]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$FacetFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    return true;
  }

  CopyWith$Input$FacetFilterParameter<Input$FacetFilterParameter>
      get copyWith => CopyWith$Input$FacetFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$FacetFilterParameter<TRes> {
  factory CopyWith$Input$FacetFilterParameter(
          Input$FacetFilterParameter instance,
          TRes Function(Input$FacetFilterParameter) then) =
      _CopyWithImpl$Input$FacetFilterParameter;

  factory CopyWith$Input$FacetFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$FacetFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? languageCode,
      Input$StringOperators? name,
      Input$StringOperators? code});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get languageCode;
  CopyWith$Input$StringOperators<TRes> get name;
  CopyWith$Input$StringOperators<TRes> get code;
}

class _CopyWithImpl$Input$FacetFilterParameter<TRes>
    implements CopyWith$Input$FacetFilterParameter<TRes> {
  _CopyWithImpl$Input$FacetFilterParameter(this._instance, this._then);

  final Input$FacetFilterParameter _instance;

  final TRes Function(Input$FacetFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? languageCode = _undefined,
          Object? name = _undefined,
          Object? code = _undefined}) =>
      _then(Input$FacetFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          languageCode: languageCode == _undefined
              ? _instance.languageCode
              : (languageCode as Input$StringOperators?),
          name: name == _undefined
              ? _instance.name
              : (name as Input$StringOperators?),
          code: code == _undefined
              ? _instance.code
              : (code as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get languageCode {
    final local$languageCode = _instance.languageCode;
    return local$languageCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$languageCode, (e) => call(languageCode: e));
  }

  CopyWith$Input$StringOperators<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperators<TRes> get code {
    final local$code = _instance.code;
    return local$code == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$code, (e) => call(code: e));
  }
}

class _CopyWithStubImpl$Input$FacetFilterParameter<TRes>
    implements CopyWith$Input$FacetFilterParameter<TRes> {
  _CopyWithStubImpl$Input$FacetFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? languageCode,
          Input$StringOperators? name,
          Input$StringOperators? code}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get languageCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get name =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get code =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$FacetSortParameter {
  Input$FacetSortParameter(
      {this.id, this.createdAt, this.updatedAt, this.name, this.code});

  @override
  factory Input$FacetSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$FacetSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? name;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? code;

  Map<String, dynamic> toJson() => _$Input$FacetSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$name = name;
    final l$code = code;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt, l$name, l$code]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$FacetSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) return false;
    return true;
  }

  CopyWith$Input$FacetSortParameter<Input$FacetSortParameter> get copyWith =>
      CopyWith$Input$FacetSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$FacetSortParameter<TRes> {
  factory CopyWith$Input$FacetSortParameter(Input$FacetSortParameter instance,
          TRes Function(Input$FacetSortParameter) then) =
      _CopyWithImpl$Input$FacetSortParameter;

  factory CopyWith$Input$FacetSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$FacetSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? name,
      Enum$SortOrder? code});
}

class _CopyWithImpl$Input$FacetSortParameter<TRes>
    implements CopyWith$Input$FacetSortParameter<TRes> {
  _CopyWithImpl$Input$FacetSortParameter(this._instance, this._then);

  final Input$FacetSortParameter _instance;

  final TRes Function(Input$FacetSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? name = _undefined,
          Object? code = _undefined}) =>
      _then(Input$FacetSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          name: name == _undefined ? _instance.name : (name as Enum$SortOrder?),
          code:
              code == _undefined ? _instance.code : (code as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$FacetSortParameter<TRes>
    implements CopyWith$Input$FacetSortParameter<TRes> {
  _CopyWithStubImpl$Input$FacetSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? name,
          Enum$SortOrder? code}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$ProductFilterParameter {
  Input$ProductFilterParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.languageCode,
      this.name,
      this.slug,
      this.description});

  @override
  factory Input$ProductFilterParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$ProductFilterParameterFromJson(json);

  final Input$IDOperators? id;

  final Input$DateOperators? createdAt;

  final Input$DateOperators? updatedAt;

  final Input$StringOperators? languageCode;

  final Input$StringOperators? name;

  final Input$StringOperators? slug;

  final Input$StringOperators? description;

  Map<String, dynamic> toJson() => _$Input$ProductFilterParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$languageCode = languageCode;
    final l$name = name;
    final l$slug = slug;
    final l$description = description;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$languageCode,
      l$name,
      l$slug,
      l$description
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductFilterParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$languageCode = languageCode;
    final lOther$languageCode = other.languageCode;
    if (l$languageCode != lOther$languageCode) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    return true;
  }

  CopyWith$Input$ProductFilterParameter<Input$ProductFilterParameter>
      get copyWith => CopyWith$Input$ProductFilterParameter(this, (i) => i);
}

abstract class CopyWith$Input$ProductFilterParameter<TRes> {
  factory CopyWith$Input$ProductFilterParameter(
          Input$ProductFilterParameter instance,
          TRes Function(Input$ProductFilterParameter) then) =
      _CopyWithImpl$Input$ProductFilterParameter;

  factory CopyWith$Input$ProductFilterParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductFilterParameter;

  TRes call(
      {Input$IDOperators? id,
      Input$DateOperators? createdAt,
      Input$DateOperators? updatedAt,
      Input$StringOperators? languageCode,
      Input$StringOperators? name,
      Input$StringOperators? slug,
      Input$StringOperators? description});
  CopyWith$Input$IDOperators<TRes> get id;
  CopyWith$Input$DateOperators<TRes> get createdAt;
  CopyWith$Input$DateOperators<TRes> get updatedAt;
  CopyWith$Input$StringOperators<TRes> get languageCode;
  CopyWith$Input$StringOperators<TRes> get name;
  CopyWith$Input$StringOperators<TRes> get slug;
  CopyWith$Input$StringOperators<TRes> get description;
}

class _CopyWithImpl$Input$ProductFilterParameter<TRes>
    implements CopyWith$Input$ProductFilterParameter<TRes> {
  _CopyWithImpl$Input$ProductFilterParameter(this._instance, this._then);

  final Input$ProductFilterParameter _instance;

  final TRes Function(Input$ProductFilterParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? languageCode = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? description = _undefined}) =>
      _then(Input$ProductFilterParameter(
          id: id == _undefined ? _instance.id : (id as Input$IDOperators?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DateOperators?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DateOperators?),
          languageCode: languageCode == _undefined
              ? _instance.languageCode
              : (languageCode as Input$StringOperators?),
          name: name == _undefined
              ? _instance.name
              : (name as Input$StringOperators?),
          slug: slug == _undefined
              ? _instance.slug
              : (slug as Input$StringOperators?),
          description: description == _undefined
              ? _instance.description
              : (description as Input$StringOperators?)));
  CopyWith$Input$IDOperators<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDOperators.stub(_then(_instance))
        : CopyWith$Input$IDOperators(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DateOperators<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DateOperators<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DateOperators.stub(_then(_instance))
        : CopyWith$Input$DateOperators(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$StringOperators<TRes> get languageCode {
    final local$languageCode = _instance.languageCode;
    return local$languageCode == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$languageCode, (e) => call(languageCode: e));
  }

  CopyWith$Input$StringOperators<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$name, (e) => call(name: e));
  }

  CopyWith$Input$StringOperators<TRes> get slug {
    final local$slug = _instance.slug;
    return local$slug == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(local$slug, (e) => call(slug: e));
  }

  CopyWith$Input$StringOperators<TRes> get description {
    final local$description = _instance.description;
    return local$description == null
        ? CopyWith$Input$StringOperators.stub(_then(_instance))
        : CopyWith$Input$StringOperators(
            local$description, (e) => call(description: e));
  }
}

class _CopyWithStubImpl$Input$ProductFilterParameter<TRes>
    implements CopyWith$Input$ProductFilterParameter<TRes> {
  _CopyWithStubImpl$Input$ProductFilterParameter(this._res);

  TRes _res;

  call(
          {Input$IDOperators? id,
          Input$DateOperators? createdAt,
          Input$DateOperators? updatedAt,
          Input$StringOperators? languageCode,
          Input$StringOperators? name,
          Input$StringOperators? slug,
          Input$StringOperators? description}) =>
      _res;
  CopyWith$Input$IDOperators<TRes> get id =>
      CopyWith$Input$IDOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get createdAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$DateOperators<TRes> get updatedAt =>
      CopyWith$Input$DateOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get languageCode =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get name =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get slug =>
      CopyWith$Input$StringOperators.stub(_res);
  CopyWith$Input$StringOperators<TRes> get description =>
      CopyWith$Input$StringOperators.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$ProductSortParameter {
  Input$ProductSortParameter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.slug,
      this.description});

  @override
  factory Input$ProductSortParameter.fromJson(Map<String, dynamic> json) =>
      _$Input$ProductSortParameterFromJson(json);

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? id;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? createdAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? updatedAt;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? name;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? slug;

  @JsonKey(unknownEnumValue: Enum$SortOrder.$unknown)
  final Enum$SortOrder? description;

  Map<String, dynamic> toJson() => _$Input$ProductSortParameterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$name = name;
    final l$slug = slug;
    final l$description = description;
    return Object.hashAll(
        [l$id, l$createdAt, l$updatedAt, l$name, l$slug, l$description]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$ProductSortParameter) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$slug = slug;
    final lOther$slug = other.slug;
    if (l$slug != lOther$slug) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    return true;
  }

  CopyWith$Input$ProductSortParameter<Input$ProductSortParameter>
      get copyWith => CopyWith$Input$ProductSortParameter(this, (i) => i);
}

abstract class CopyWith$Input$ProductSortParameter<TRes> {
  factory CopyWith$Input$ProductSortParameter(
          Input$ProductSortParameter instance,
          TRes Function(Input$ProductSortParameter) then) =
      _CopyWithImpl$Input$ProductSortParameter;

  factory CopyWith$Input$ProductSortParameter.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductSortParameter;

  TRes call(
      {Enum$SortOrder? id,
      Enum$SortOrder? createdAt,
      Enum$SortOrder? updatedAt,
      Enum$SortOrder? name,
      Enum$SortOrder? slug,
      Enum$SortOrder? description});
}

class _CopyWithImpl$Input$ProductSortParameter<TRes>
    implements CopyWith$Input$ProductSortParameter<TRes> {
  _CopyWithImpl$Input$ProductSortParameter(this._instance, this._then);

  final Input$ProductSortParameter _instance;

  final TRes Function(Input$ProductSortParameter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? name = _undefined,
          Object? slug = _undefined,
          Object? description = _undefined}) =>
      _then(Input$ProductSortParameter(
          id: id == _undefined ? _instance.id : (id as Enum$SortOrder?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Enum$SortOrder?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Enum$SortOrder?),
          name: name == _undefined ? _instance.name : (name as Enum$SortOrder?),
          slug: slug == _undefined ? _instance.slug : (slug as Enum$SortOrder?),
          description: description == _undefined
              ? _instance.description
              : (description as Enum$SortOrder?)));
}

class _CopyWithStubImpl$Input$ProductSortParameter<TRes>
    implements CopyWith$Input$ProductSortParameter<TRes> {
  _CopyWithStubImpl$Input$ProductSortParameter(this._res);

  TRes _res;

  call(
          {Enum$SortOrder? id,
          Enum$SortOrder? createdAt,
          Enum$SortOrder? updatedAt,
          Enum$SortOrder? name,
          Enum$SortOrder? slug,
          Enum$SortOrder? description}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$NativeAuthInput {
  Input$NativeAuthInput({required this.username, required this.password});

  @override
  factory Input$NativeAuthInput.fromJson(Map<String, dynamic> json) =>
      _$Input$NativeAuthInputFromJson(json);

  final String username;

  final String password;

  Map<String, dynamic> toJson() => _$Input$NativeAuthInputToJson(this);
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([l$username, l$password]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$NativeAuthInput) || runtimeType != other.runtimeType)
      return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    return true;
  }

  CopyWith$Input$NativeAuthInput<Input$NativeAuthInput> get copyWith =>
      CopyWith$Input$NativeAuthInput(this, (i) => i);
}

abstract class CopyWith$Input$NativeAuthInput<TRes> {
  factory CopyWith$Input$NativeAuthInput(Input$NativeAuthInput instance,
          TRes Function(Input$NativeAuthInput) then) =
      _CopyWithImpl$Input$NativeAuthInput;

  factory CopyWith$Input$NativeAuthInput.stub(TRes res) =
      _CopyWithStubImpl$Input$NativeAuthInput;

  TRes call({String? username, String? password});
}

class _CopyWithImpl$Input$NativeAuthInput<TRes>
    implements CopyWith$Input$NativeAuthInput<TRes> {
  _CopyWithImpl$Input$NativeAuthInput(this._instance, this._then);

  final Input$NativeAuthInput _instance;

  final TRes Function(Input$NativeAuthInput) _then;

  static const _undefined = {};

  TRes call({Object? username = _undefined, Object? password = _undefined}) =>
      _then(Input$NativeAuthInput(
          username: username == _undefined || username == null
              ? _instance.username
              : (username as String),
          password: password == _undefined || password == null
              ? _instance.password
              : (password as String)));
}

class _CopyWithStubImpl$Input$NativeAuthInput<TRes>
    implements CopyWith$Input$NativeAuthInput<TRes> {
  _CopyWithStubImpl$Input$NativeAuthInput(this._res);

  TRes _res;

  call({String? username, String? password}) => _res;
}

enum Enum$AssetType {
  @JsonValue('IMAGE')
  IMAGE,
  @JsonValue('VIDEO')
  VIDEO,
  @JsonValue('BINARY')
  BINARY,
  $unknown
}

enum Enum$GlobalFlag {
  @JsonValue('TRUE')
  TRUE,
  @JsonValue('FALSE')
  FALSE,
  @JsonValue('INHERIT')
  INHERIT,
  $unknown
}

enum Enum$AdjustmentType {
  @JsonValue('PROMOTION')
  PROMOTION,
  @JsonValue('DISTRIBUTED_ORDER_PROMOTION')
  DISTRIBUTED_ORDER_PROMOTION,
  @JsonValue('OTHER')
  OTHER,
  $unknown
}

enum Enum$DeletionResult {
  @JsonValue('DELETED')
  DELETED,
  @JsonValue('NOT_DELETED')
  NOT_DELETED,
  $unknown
}

enum Enum$Permission {
  @JsonValue('Authenticated')
  Authenticated,
  @JsonValue('SuperAdmin')
  SuperAdmin,
  @JsonValue('Owner')
  Owner,
  @JsonValue('Public')
  Public,
  @JsonValue('UpdateGlobalSettings')
  UpdateGlobalSettings,
  @JsonValue('CreateCatalog')
  CreateCatalog,
  @JsonValue('ReadCatalog')
  ReadCatalog,
  @JsonValue('UpdateCatalog')
  UpdateCatalog,
  @JsonValue('DeleteCatalog')
  DeleteCatalog,
  @JsonValue('CreateSettings')
  CreateSettings,
  @JsonValue('ReadSettings')
  ReadSettings,
  @JsonValue('UpdateSettings')
  UpdateSettings,
  @JsonValue('DeleteSettings')
  DeleteSettings,
  @JsonValue('CreateAdministrator')
  CreateAdministrator,
  @JsonValue('ReadAdministrator')
  ReadAdministrator,
  @JsonValue('UpdateAdministrator')
  UpdateAdministrator,
  @JsonValue('DeleteAdministrator')
  DeleteAdministrator,
  @JsonValue('CreateAsset')
  CreateAsset,
  @JsonValue('ReadAsset')
  ReadAsset,
  @JsonValue('UpdateAsset')
  UpdateAsset,
  @JsonValue('DeleteAsset')
  DeleteAsset,
  @JsonValue('CreateChannel')
  CreateChannel,
  @JsonValue('ReadChannel')
  ReadChannel,
  @JsonValue('UpdateChannel')
  UpdateChannel,
  @JsonValue('DeleteChannel')
  DeleteChannel,
  @JsonValue('CreateCollection')
  CreateCollection,
  @JsonValue('ReadCollection')
  ReadCollection,
  @JsonValue('UpdateCollection')
  UpdateCollection,
  @JsonValue('DeleteCollection')
  DeleteCollection,
  @JsonValue('CreateCountry')
  CreateCountry,
  @JsonValue('ReadCountry')
  ReadCountry,
  @JsonValue('UpdateCountry')
  UpdateCountry,
  @JsonValue('DeleteCountry')
  DeleteCountry,
  @JsonValue('CreateCustomer')
  CreateCustomer,
  @JsonValue('ReadCustomer')
  ReadCustomer,
  @JsonValue('UpdateCustomer')
  UpdateCustomer,
  @JsonValue('DeleteCustomer')
  DeleteCustomer,
  @JsonValue('CreateCustomerGroup')
  CreateCustomerGroup,
  @JsonValue('ReadCustomerGroup')
  ReadCustomerGroup,
  @JsonValue('UpdateCustomerGroup')
  UpdateCustomerGroup,
  @JsonValue('DeleteCustomerGroup')
  DeleteCustomerGroup,
  @JsonValue('CreateFacet')
  CreateFacet,
  @JsonValue('ReadFacet')
  ReadFacet,
  @JsonValue('UpdateFacet')
  UpdateFacet,
  @JsonValue('DeleteFacet')
  DeleteFacet,
  @JsonValue('CreateOrder')
  CreateOrder,
  @JsonValue('ReadOrder')
  ReadOrder,
  @JsonValue('UpdateOrder')
  UpdateOrder,
  @JsonValue('DeleteOrder')
  DeleteOrder,
  @JsonValue('CreatePaymentMethod')
  CreatePaymentMethod,
  @JsonValue('ReadPaymentMethod')
  ReadPaymentMethod,
  @JsonValue('UpdatePaymentMethod')
  UpdatePaymentMethod,
  @JsonValue('DeletePaymentMethod')
  DeletePaymentMethod,
  @JsonValue('CreateProduct')
  CreateProduct,
  @JsonValue('ReadProduct')
  ReadProduct,
  @JsonValue('UpdateProduct')
  UpdateProduct,
  @JsonValue('DeleteProduct')
  DeleteProduct,
  @JsonValue('CreatePromotion')
  CreatePromotion,
  @JsonValue('ReadPromotion')
  ReadPromotion,
  @JsonValue('UpdatePromotion')
  UpdatePromotion,
  @JsonValue('DeletePromotion')
  DeletePromotion,
  @JsonValue('CreateShippingMethod')
  CreateShippingMethod,
  @JsonValue('ReadShippingMethod')
  ReadShippingMethod,
  @JsonValue('UpdateShippingMethod')
  UpdateShippingMethod,
  @JsonValue('DeleteShippingMethod')
  DeleteShippingMethod,
  @JsonValue('CreateTag')
  CreateTag,
  @JsonValue('ReadTag')
  ReadTag,
  @JsonValue('UpdateTag')
  UpdateTag,
  @JsonValue('DeleteTag')
  DeleteTag,
  @JsonValue('CreateTaxCategory')
  CreateTaxCategory,
  @JsonValue('ReadTaxCategory')
  ReadTaxCategory,
  @JsonValue('UpdateTaxCategory')
  UpdateTaxCategory,
  @JsonValue('DeleteTaxCategory')
  DeleteTaxCategory,
  @JsonValue('CreateTaxRate')
  CreateTaxRate,
  @JsonValue('ReadTaxRate')
  ReadTaxRate,
  @JsonValue('UpdateTaxRate')
  UpdateTaxRate,
  @JsonValue('DeleteTaxRate')
  DeleteTaxRate,
  @JsonValue('CreateSystem')
  CreateSystem,
  @JsonValue('ReadSystem')
  ReadSystem,
  @JsonValue('UpdateSystem')
  UpdateSystem,
  @JsonValue('DeleteSystem')
  DeleteSystem,
  @JsonValue('CreateZone')
  CreateZone,
  @JsonValue('ReadZone')
  ReadZone,
  @JsonValue('UpdateZone')
  UpdateZone,
  @JsonValue('DeleteZone')
  DeleteZone,
  $unknown
}

enum Enum$SortOrder {
  @JsonValue('ASC')
  ASC,
  @JsonValue('DESC')
  DESC,
  $unknown
}

enum Enum$ErrorCode {
  @JsonValue('UNKNOWN_ERROR')
  UNKNOWN_ERROR,
  @JsonValue('NATIVE_AUTH_STRATEGY_ERROR')
  NATIVE_AUTH_STRATEGY_ERROR,
  @JsonValue('INVALID_CREDENTIALS_ERROR')
  INVALID_CREDENTIALS_ERROR,
  @JsonValue('ORDER_STATE_TRANSITION_ERROR')
  ORDER_STATE_TRANSITION_ERROR,
  @JsonValue('EMAIL_ADDRESS_CONFLICT_ERROR')
  EMAIL_ADDRESS_CONFLICT_ERROR,
  @JsonValue('ORDER_LIMIT_ERROR')
  ORDER_LIMIT_ERROR,
  @JsonValue('NEGATIVE_QUANTITY_ERROR')
  NEGATIVE_QUANTITY_ERROR,
  @JsonValue('INSUFFICIENT_STOCK_ERROR')
  INSUFFICIENT_STOCK_ERROR,
  @JsonValue('COUPON_CODE_INVALID_ERROR')
  COUPON_CODE_INVALID_ERROR,
  @JsonValue('COUPON_CODE_EXPIRED_ERROR')
  COUPON_CODE_EXPIRED_ERROR,
  @JsonValue('COUPON_CODE_LIMIT_ERROR')
  COUPON_CODE_LIMIT_ERROR,
  @JsonValue('ORDER_MODIFICATION_ERROR')
  ORDER_MODIFICATION_ERROR,
  @JsonValue('INELIGIBLE_SHIPPING_METHOD_ERROR')
  INELIGIBLE_SHIPPING_METHOD_ERROR,
  @JsonValue('ORDER_PAYMENT_STATE_ERROR')
  ORDER_PAYMENT_STATE_ERROR,
  @JsonValue('INELIGIBLE_PAYMENT_METHOD_ERROR')
  INELIGIBLE_PAYMENT_METHOD_ERROR,
  @JsonValue('PAYMENT_FAILED_ERROR')
  PAYMENT_FAILED_ERROR,
  @JsonValue('PAYMENT_DECLINED_ERROR')
  PAYMENT_DECLINED_ERROR,
  @JsonValue('ALREADY_LOGGED_IN_ERROR')
  ALREADY_LOGGED_IN_ERROR,
  @JsonValue('MISSING_PASSWORD_ERROR')
  MISSING_PASSWORD_ERROR,
  @JsonValue('PASSWORD_VALIDATION_ERROR')
  PASSWORD_VALIDATION_ERROR,
  @JsonValue('PASSWORD_ALREADY_SET_ERROR')
  PASSWORD_ALREADY_SET_ERROR,
  @JsonValue('VERIFICATION_TOKEN_INVALID_ERROR')
  VERIFICATION_TOKEN_INVALID_ERROR,
  @JsonValue('VERIFICATION_TOKEN_EXPIRED_ERROR')
  VERIFICATION_TOKEN_EXPIRED_ERROR,
  @JsonValue('IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR')
  IDENTIFIER_CHANGE_TOKEN_INVALID_ERROR,
  @JsonValue('IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR')
  IDENTIFIER_CHANGE_TOKEN_EXPIRED_ERROR,
  @JsonValue('PASSWORD_RESET_TOKEN_INVALID_ERROR')
  PASSWORD_RESET_TOKEN_INVALID_ERROR,
  @JsonValue('PASSWORD_RESET_TOKEN_EXPIRED_ERROR')
  PASSWORD_RESET_TOKEN_EXPIRED_ERROR,
  @JsonValue('NOT_VERIFIED_ERROR')
  NOT_VERIFIED_ERROR,
  @JsonValue('NO_ACTIVE_ORDER_ERROR')
  NO_ACTIVE_ORDER_ERROR,
  $unknown
}

enum Enum$LogicalOperator {
  @JsonValue('AND')
  AND,
  @JsonValue('OR')
  OR,
  $unknown
}

enum Enum$CurrencyCode {
  @JsonValue('AED')
  AED,
  @JsonValue('AFN')
  AFN,
  @JsonValue('ALL')
  ALL,
  @JsonValue('AMD')
  AMD,
  @JsonValue('ANG')
  ANG,
  @JsonValue('AOA')
  AOA,
  @JsonValue('ARS')
  ARS,
  @JsonValue('AUD')
  AUD,
  @JsonValue('AWG')
  AWG,
  @JsonValue('AZN')
  AZN,
  @JsonValue('BAM')
  BAM,
  @JsonValue('BBD')
  BBD,
  @JsonValue('BDT')
  BDT,
  @JsonValue('BGN')
  BGN,
  @JsonValue('BHD')
  BHD,
  @JsonValue('BIF')
  BIF,
  @JsonValue('BMD')
  BMD,
  @JsonValue('BND')
  BND,
  @JsonValue('BOB')
  BOB,
  @JsonValue('BRL')
  BRL,
  @JsonValue('BSD')
  BSD,
  @JsonValue('BTN')
  BTN,
  @JsonValue('BWP')
  BWP,
  @JsonValue('BYN')
  BYN,
  @JsonValue('BZD')
  BZD,
  @JsonValue('CAD')
  CAD,
  @JsonValue('CDF')
  CDF,
  @JsonValue('CHF')
  CHF,
  @JsonValue('CLP')
  CLP,
  @JsonValue('CNY')
  CNY,
  @JsonValue('COP')
  COP,
  @JsonValue('CRC')
  CRC,
  @JsonValue('CUC')
  CUC,
  @JsonValue('CUP')
  CUP,
  @JsonValue('CVE')
  CVE,
  @JsonValue('CZK')
  CZK,
  @JsonValue('DJF')
  DJF,
  @JsonValue('DKK')
  DKK,
  @JsonValue('DOP')
  DOP,
  @JsonValue('DZD')
  DZD,
  @JsonValue('EGP')
  EGP,
  @JsonValue('ERN')
  ERN,
  @JsonValue('ETB')
  ETB,
  @JsonValue('EUR')
  EUR,
  @JsonValue('FJD')
  FJD,
  @JsonValue('FKP')
  FKP,
  @JsonValue('GBP')
  GBP,
  @JsonValue('GEL')
  GEL,
  @JsonValue('GHS')
  GHS,
  @JsonValue('GIP')
  GIP,
  @JsonValue('GMD')
  GMD,
  @JsonValue('GNF')
  GNF,
  @JsonValue('GTQ')
  GTQ,
  @JsonValue('GYD')
  GYD,
  @JsonValue('HKD')
  HKD,
  @JsonValue('HNL')
  HNL,
  @JsonValue('HRK')
  HRK,
  @JsonValue('HTG')
  HTG,
  @JsonValue('HUF')
  HUF,
  @JsonValue('IDR')
  IDR,
  @JsonValue('ILS')
  ILS,
  @JsonValue('INR')
  INR,
  @JsonValue('IQD')
  IQD,
  @JsonValue('IRR')
  IRR,
  @JsonValue('ISK')
  ISK,
  @JsonValue('JMD')
  JMD,
  @JsonValue('JOD')
  JOD,
  @JsonValue('JPY')
  JPY,
  @JsonValue('KES')
  KES,
  @JsonValue('KGS')
  KGS,
  @JsonValue('KHR')
  KHR,
  @JsonValue('KMF')
  KMF,
  @JsonValue('KPW')
  KPW,
  @JsonValue('KRW')
  KRW,
  @JsonValue('KWD')
  KWD,
  @JsonValue('KYD')
  KYD,
  @JsonValue('KZT')
  KZT,
  @JsonValue('LAK')
  LAK,
  @JsonValue('LBP')
  LBP,
  @JsonValue('LKR')
  LKR,
  @JsonValue('LRD')
  LRD,
  @JsonValue('LSL')
  LSL,
  @JsonValue('LYD')
  LYD,
  @JsonValue('MAD')
  MAD,
  @JsonValue('MDL')
  MDL,
  @JsonValue('MGA')
  MGA,
  @JsonValue('MKD')
  MKD,
  @JsonValue('MMK')
  MMK,
  @JsonValue('MNT')
  MNT,
  @JsonValue('MOP')
  MOP,
  @JsonValue('MRU')
  MRU,
  @JsonValue('MUR')
  MUR,
  @JsonValue('MVR')
  MVR,
  @JsonValue('MWK')
  MWK,
  @JsonValue('MXN')
  MXN,
  @JsonValue('MYR')
  MYR,
  @JsonValue('MZN')
  MZN,
  @JsonValue('NAD')
  NAD,
  @JsonValue('NGN')
  NGN,
  @JsonValue('NIO')
  NIO,
  @JsonValue('NOK')
  NOK,
  @JsonValue('NPR')
  NPR,
  @JsonValue('NZD')
  NZD,
  @JsonValue('OMR')
  OMR,
  @JsonValue('PAB')
  PAB,
  @JsonValue('PEN')
  PEN,
  @JsonValue('PGK')
  PGK,
  @JsonValue('PHP')
  PHP,
  @JsonValue('PKR')
  PKR,
  @JsonValue('PLN')
  PLN,
  @JsonValue('PYG')
  PYG,
  @JsonValue('QAR')
  QAR,
  @JsonValue('RON')
  RON,
  @JsonValue('RSD')
  RSD,
  @JsonValue('RUB')
  RUB,
  @JsonValue('RWF')
  RWF,
  @JsonValue('SAR')
  SAR,
  @JsonValue('SBD')
  SBD,
  @JsonValue('SCR')
  SCR,
  @JsonValue('SDG')
  SDG,
  @JsonValue('SEK')
  SEK,
  @JsonValue('SGD')
  SGD,
  @JsonValue('SHP')
  SHP,
  @JsonValue('SLL')
  SLL,
  @JsonValue('SOS')
  SOS,
  @JsonValue('SRD')
  SRD,
  @JsonValue('SSP')
  SSP,
  @JsonValue('STN')
  STN,
  @JsonValue('SVC')
  SVC,
  @JsonValue('SYP')
  SYP,
  @JsonValue('SZL')
  SZL,
  @JsonValue('THB')
  THB,
  @JsonValue('TJS')
  TJS,
  @JsonValue('TMT')
  TMT,
  @JsonValue('TND')
  TND,
  @JsonValue('TOP')
  TOP,
  @JsonValue('TRY')
  TRY,
  @JsonValue('TTD')
  TTD,
  @JsonValue('TWD')
  TWD,
  @JsonValue('TZS')
  TZS,
  @JsonValue('UAH')
  UAH,
  @JsonValue('UGX')
  UGX,
  @JsonValue('USD')
  USD,
  @JsonValue('UYU')
  UYU,
  @JsonValue('UZS')
  UZS,
  @JsonValue('VES')
  VES,
  @JsonValue('VND')
  VND,
  @JsonValue('VUV')
  VUV,
  @JsonValue('WST')
  WST,
  @JsonValue('XAF')
  XAF,
  @JsonValue('XCD')
  XCD,
  @JsonValue('XOF')
  XOF,
  @JsonValue('XPF')
  XPF,
  @JsonValue('YER')
  YER,
  @JsonValue('ZAR')
  ZAR,
  @JsonValue('ZMW')
  ZMW,
  @JsonValue('ZWL')
  ZWL,
  $unknown
}

enum Enum$HistoryEntryType {
  @JsonValue('CUSTOMER_REGISTERED')
  CUSTOMER_REGISTERED,
  @JsonValue('CUSTOMER_VERIFIED')
  CUSTOMER_VERIFIED,
  @JsonValue('CUSTOMER_DETAIL_UPDATED')
  CUSTOMER_DETAIL_UPDATED,
  @JsonValue('CUSTOMER_ADDED_TO_GROUP')
  CUSTOMER_ADDED_TO_GROUP,
  @JsonValue('CUSTOMER_REMOVED_FROM_GROUP')
  CUSTOMER_REMOVED_FROM_GROUP,
  @JsonValue('CUSTOMER_ADDRESS_CREATED')
  CUSTOMER_ADDRESS_CREATED,
  @JsonValue('CUSTOMER_ADDRESS_UPDATED')
  CUSTOMER_ADDRESS_UPDATED,
  @JsonValue('CUSTOMER_ADDRESS_DELETED')
  CUSTOMER_ADDRESS_DELETED,
  @JsonValue('CUSTOMER_PASSWORD_UPDATED')
  CUSTOMER_PASSWORD_UPDATED,
  @JsonValue('CUSTOMER_PASSWORD_RESET_REQUESTED')
  CUSTOMER_PASSWORD_RESET_REQUESTED,
  @JsonValue('CUSTOMER_PASSWORD_RESET_VERIFIED')
  CUSTOMER_PASSWORD_RESET_VERIFIED,
  @JsonValue('CUSTOMER_EMAIL_UPDATE_REQUESTED')
  CUSTOMER_EMAIL_UPDATE_REQUESTED,
  @JsonValue('CUSTOMER_EMAIL_UPDATE_VERIFIED')
  CUSTOMER_EMAIL_UPDATE_VERIFIED,
  @JsonValue('CUSTOMER_NOTE')
  CUSTOMER_NOTE,
  @JsonValue('ORDER_STATE_TRANSITION')
  ORDER_STATE_TRANSITION,
  @JsonValue('ORDER_PAYMENT_TRANSITION')
  ORDER_PAYMENT_TRANSITION,
  @JsonValue('ORDER_FULFILLMENT')
  ORDER_FULFILLMENT,
  @JsonValue('ORDER_CANCELLATION')
  ORDER_CANCELLATION,
  @JsonValue('ORDER_REFUND_TRANSITION')
  ORDER_REFUND_TRANSITION,
  @JsonValue('ORDER_FULFILLMENT_TRANSITION')
  ORDER_FULFILLMENT_TRANSITION,
  @JsonValue('ORDER_NOTE')
  ORDER_NOTE,
  @JsonValue('ORDER_COUPON_APPLIED')
  ORDER_COUPON_APPLIED,
  @JsonValue('ORDER_COUPON_REMOVED')
  ORDER_COUPON_REMOVED,
  @JsonValue('ORDER_MODIFIED')
  ORDER_MODIFIED,
  $unknown
}

enum Enum$LanguageCode {
  @JsonValue('af')
  af,
  @JsonValue('ak')
  ak,
  @JsonValue('sq')
  sq,
  @JsonValue('am')
  am,
  @JsonValue('ar')
  ar,
  @JsonValue('hy')
  hy,
  @JsonValue('as')
  $as,
  @JsonValue('az')
  az,
  @JsonValue('bm')
  bm,
  @JsonValue('bn')
  bn,
  @JsonValue('eu')
  eu,
  @JsonValue('be')
  be,
  @JsonValue('bs')
  bs,
  @JsonValue('br')
  br,
  @JsonValue('bg')
  bg,
  @JsonValue('my')
  my,
  @JsonValue('ca')
  ca,
  @JsonValue('ce')
  ce,
  @JsonValue('zh')
  zh,
  @JsonValue('zh_Hans')
  zh_Hans,
  @JsonValue('zh_Hant')
  zh_Hant,
  @JsonValue('cu')
  cu,
  @JsonValue('kw')
  kw,
  @JsonValue('co')
  co,
  @JsonValue('hr')
  hr,
  @JsonValue('cs')
  cs,
  @JsonValue('da')
  da,
  @JsonValue('nl')
  nl,
  @JsonValue('nl_BE')
  nl_BE,
  @JsonValue('dz')
  dz,
  @JsonValue('en')
  en,
  @JsonValue('en_AU')
  en_AU,
  @JsonValue('en_CA')
  en_CA,
  @JsonValue('en_GB')
  en_GB,
  @JsonValue('en_US')
  en_US,
  @JsonValue('eo')
  eo,
  @JsonValue('et')
  et,
  @JsonValue('ee')
  ee,
  @JsonValue('fo')
  fo,
  @JsonValue('fi')
  fi,
  @JsonValue('fr')
  fr,
  @JsonValue('fr_CA')
  fr_CA,
  @JsonValue('fr_CH')
  fr_CH,
  @JsonValue('ff')
  ff,
  @JsonValue('gl')
  gl,
  @JsonValue('lg')
  lg,
  @JsonValue('ka')
  ka,
  @JsonValue('de')
  de,
  @JsonValue('de_AT')
  de_AT,
  @JsonValue('de_CH')
  de_CH,
  @JsonValue('el')
  el,
  @JsonValue('gu')
  gu,
  @JsonValue('ht')
  ht,
  @JsonValue('ha')
  ha,
  @JsonValue('he')
  he,
  @JsonValue('hi')
  hi,
  @JsonValue('hu')
  hu,
  @JsonValue('is')
  $is,
  @JsonValue('ig')
  ig,
  @JsonValue('id')
  id,
  @JsonValue('ia')
  ia,
  @JsonValue('ga')
  ga,
  @JsonValue('it')
  it,
  @JsonValue('ja')
  ja,
  @JsonValue('jv')
  jv,
  @JsonValue('kl')
  kl,
  @JsonValue('kn')
  kn,
  @JsonValue('ks')
  ks,
  @JsonValue('kk')
  kk,
  @JsonValue('km')
  km,
  @JsonValue('ki')
  ki,
  @JsonValue('rw')
  rw,
  @JsonValue('ko')
  ko,
  @JsonValue('ku')
  ku,
  @JsonValue('ky')
  ky,
  @JsonValue('lo')
  lo,
  @JsonValue('la')
  la,
  @JsonValue('lv')
  lv,
  @JsonValue('ln')
  ln,
  @JsonValue('lt')
  lt,
  @JsonValue('lu')
  lu,
  @JsonValue('lb')
  lb,
  @JsonValue('mk')
  mk,
  @JsonValue('mg')
  mg,
  @JsonValue('ms')
  ms,
  @JsonValue('ml')
  ml,
  @JsonValue('mt')
  mt,
  @JsonValue('gv')
  gv,
  @JsonValue('mi')
  mi,
  @JsonValue('mr')
  mr,
  @JsonValue('mn')
  mn,
  @JsonValue('ne')
  ne,
  @JsonValue('nd')
  nd,
  @JsonValue('se')
  se,
  @JsonValue('nb')
  nb,
  @JsonValue('nn')
  nn,
  @JsonValue('ny')
  ny,
  @JsonValue('or')
  or,
  @JsonValue('om')
  om,
  @JsonValue('os')
  os,
  @JsonValue('ps')
  ps,
  @JsonValue('fa')
  fa,
  @JsonValue('fa_AF')
  fa_AF,
  @JsonValue('pl')
  pl,
  @JsonValue('pt')
  pt,
  @JsonValue('pt_BR')
  pt_BR,
  @JsonValue('pt_PT')
  pt_PT,
  @JsonValue('pa')
  pa,
  @JsonValue('qu')
  qu,
  @JsonValue('ro')
  ro,
  @JsonValue('ro_MD')
  ro_MD,
  @JsonValue('rm')
  rm,
  @JsonValue('rn')
  rn,
  @JsonValue('ru')
  ru,
  @JsonValue('sm')
  sm,
  @JsonValue('sg')
  sg,
  @JsonValue('sa')
  sa,
  @JsonValue('gd')
  gd,
  @JsonValue('sr')
  sr,
  @JsonValue('sn')
  sn,
  @JsonValue('ii')
  ii,
  @JsonValue('sd')
  sd,
  @JsonValue('si')
  si,
  @JsonValue('sk')
  sk,
  @JsonValue('sl')
  sl,
  @JsonValue('so')
  so,
  @JsonValue('st')
  st,
  @JsonValue('es')
  es,
  @JsonValue('es_ES')
  es_ES,
  @JsonValue('es_MX')
  es_MX,
  @JsonValue('su')
  su,
  @JsonValue('sw')
  sw,
  @JsonValue('sw_CD')
  sw_CD,
  @JsonValue('sv')
  sv,
  @JsonValue('tg')
  tg,
  @JsonValue('ta')
  ta,
  @JsonValue('tt')
  tt,
  @JsonValue('te')
  te,
  @JsonValue('th')
  th,
  @JsonValue('bo')
  bo,
  @JsonValue('ti')
  ti,
  @JsonValue('to')
  to,
  @JsonValue('tr')
  tr,
  @JsonValue('tk')
  tk,
  @JsonValue('uk')
  uk,
  @JsonValue('ur')
  ur,
  @JsonValue('ug')
  ug,
  @JsonValue('uz')
  uz,
  @JsonValue('vi')
  vi,
  @JsonValue('vo')
  vo,
  @JsonValue('cy')
  cy,
  @JsonValue('fy')
  fy,
  @JsonValue('wo')
  wo,
  @JsonValue('xh')
  xh,
  @JsonValue('yi')
  yi,
  @JsonValue('yo')
  yo,
  @JsonValue('zu')
  zu,
  $unknown
}

const possibleTypesMap = {
  'Node': {
    'Address',
    'Asset',
    'Channel',
    'Collection',
    'Country',
    'CustomerGroup',
    'Customer',
    'FacetValue',
    'Facet',
    'HistoryEntry',
    'Order',
    'OrderItem',
    'OrderLine',
    'Payment',
    'Refund',
    'Fulfillment',
    'Surcharge',
    'PaymentMethod',
    'ProductOptionGroup',
    'ProductOption',
    'Product',
    'ProductVariant',
    'Promotion',
    'Role',
    'ShippingMethod',
    'Tag',
    'TaxCategory',
    'TaxRate',
    'User',
    'AuthenticationMethod',
    'Zone'
  },
  'PaginatedList': {
    'AssetList',
    'CollectionList',
    'CountryList',
    'CustomerList',
    'FacetList',
    'HistoryEntryList',
    'OrderList',
    'ProductList',
    'ProductVariantList',
    'PromotionList',
    'RoleList',
    'ShippingMethodList',
    'TagList',
    'TaxRateList'
  },
  'ErrorResult': {
    'NativeAuthStrategyError',
    'InvalidCredentialsError',
    'OrderStateTransitionError',
    'EmailAddressConflictError',
    'OrderLimitError',
    'NegativeQuantityError',
    'InsufficientStockError',
    'CouponCodeInvalidError',
    'CouponCodeExpiredError',
    'CouponCodeLimitError',
    'OrderModificationError',
    'IneligibleShippingMethodError',
    'OrderPaymentStateError',
    'IneligiblePaymentMethodError',
    'PaymentFailedError',
    'PaymentDeclinedError',
    'AlreadyLoggedInError',
    'MissingPasswordError',
    'PasswordValidationError',
    'PasswordAlreadySetError',
    'VerificationTokenInvalidError',
    'VerificationTokenExpiredError',
    'IdentifierChangeTokenInvalidError',
    'IdentifierChangeTokenExpiredError',
    'PasswordResetTokenInvalidError',
    'PasswordResetTokenExpiredError',
    'NotVerifiedError',
    'NoActiveOrderError'
  },
  'CustomField': {
    'StringCustomFieldConfig',
    'LocaleStringCustomFieldConfig',
    'IntCustomFieldConfig',
    'FloatCustomFieldConfig',
    'BooleanCustomFieldConfig',
    'DateTimeCustomFieldConfig',
    'RelationCustomFieldConfig',
    'TextCustomFieldConfig'
  },
  'CustomFieldConfig': {
    'StringCustomFieldConfig',
    'LocaleStringCustomFieldConfig',
    'IntCustomFieldConfig',
    'FloatCustomFieldConfig',
    'BooleanCustomFieldConfig',
    'DateTimeCustomFieldConfig',
    'RelationCustomFieldConfig',
    'TextCustomFieldConfig'
  },
  'SearchResultPrice': {'PriceRange', 'SinglePrice'},
  'UpdateOrderItemsResult': {
    'Order',
    'OrderModificationError',
    'OrderLimitError',
    'NegativeQuantityError',
    'InsufficientStockError'
  },
  'RemoveOrderItemsResult': {'Order', 'OrderModificationError'},
  'SetOrderShippingMethodResult': {
    'Order',
    'OrderModificationError',
    'IneligibleShippingMethodError',
    'NoActiveOrderError'
  },
  'ApplyCouponCodeResult': {
    'Order',
    'CouponCodeExpiredError',
    'CouponCodeInvalidError',
    'CouponCodeLimitError'
  },
  'AddPaymentToOrderResult': {
    'Order',
    'OrderPaymentStateError',
    'IneligiblePaymentMethodError',
    'PaymentFailedError',
    'PaymentDeclinedError',
    'OrderStateTransitionError',
    'NoActiveOrderError'
  },
  'TransitionOrderToStateResult': {'Order', 'OrderStateTransitionError'},
  'SetCustomerForOrderResult': {
    'Order',
    'AlreadyLoggedInError',
    'EmailAddressConflictError',
    'NoActiveOrderError'
  },
  'RegisterCustomerAccountResult': {
    'Success',
    'MissingPasswordError',
    'PasswordValidationError',
    'NativeAuthStrategyError'
  },
  'RefreshCustomerVerificationResult': {'Success', 'NativeAuthStrategyError'},
  'VerifyCustomerAccountResult': {
    'CurrentUser',
    'VerificationTokenInvalidError',
    'VerificationTokenExpiredError',
    'MissingPasswordError',
    'PasswordValidationError',
    'PasswordAlreadySetError',
    'NativeAuthStrategyError'
  },
  'UpdateCustomerPasswordResult': {
    'Success',
    'InvalidCredentialsError',
    'PasswordValidationError',
    'NativeAuthStrategyError'
  },
  'RequestUpdateCustomerEmailAddressResult': {
    'Success',
    'InvalidCredentialsError',
    'EmailAddressConflictError',
    'NativeAuthStrategyError'
  },
  'UpdateCustomerEmailAddressResult': {
    'Success',
    'IdentifierChangeTokenInvalidError',
    'IdentifierChangeTokenExpiredError',
    'NativeAuthStrategyError'
  },
  'RequestPasswordResetResult': {'Success', 'NativeAuthStrategyError'},
  'ResetPasswordResult': {
    'CurrentUser',
    'PasswordResetTokenInvalidError',
    'PasswordResetTokenExpiredError',
    'PasswordValidationError',
    'NativeAuthStrategyError',
    'NotVerifiedError'
  },
  'NativeAuthenticationResult': {
    'CurrentUser',
    'InvalidCredentialsError',
    'NotVerifiedError',
    'NativeAuthStrategyError'
  },
  'AuthenticationResult': {
    'CurrentUser',
    'InvalidCredentialsError',
    'NotVerifiedError'
  },
  'ActiveOrderResult': {'Order', 'NoActiveOrderError'}
};
