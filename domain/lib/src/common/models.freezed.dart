// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SummaryInfoTearOff {
  const _$SummaryInfoTearOff();

  _SummaryInfo call(int total, int deltaToday) {
    return _SummaryInfo(
      total,
      deltaToday,
    );
  }
}

// ignore: unused_element
const $SummaryInfo = _$SummaryInfoTearOff();

mixin _$SummaryInfo {
  int get total;
  int get deltaToday;

  $SummaryInfoCopyWith<SummaryInfo> get copyWith;
}

abstract class $SummaryInfoCopyWith<$Res> {
  factory $SummaryInfoCopyWith(
          SummaryInfo value, $Res Function(SummaryInfo) then) =
      _$SummaryInfoCopyWithImpl<$Res>;
  $Res call({int total, int deltaToday});
}

class _$SummaryInfoCopyWithImpl<$Res> implements $SummaryInfoCopyWith<$Res> {
  _$SummaryInfoCopyWithImpl(this._value, this._then);

  final SummaryInfo _value;
  // ignore: unused_field
  final $Res Function(SummaryInfo) _then;

  @override
  $Res call({
    Object total = freezed,
    Object deltaToday = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed ? _value.total : total as int,
      deltaToday: deltaToday == freezed ? _value.deltaToday : deltaToday as int,
    ));
  }
}

abstract class _$SummaryInfoCopyWith<$Res>
    implements $SummaryInfoCopyWith<$Res> {
  factory _$SummaryInfoCopyWith(
          _SummaryInfo value, $Res Function(_SummaryInfo) then) =
      __$SummaryInfoCopyWithImpl<$Res>;
  @override
  $Res call({int total, int deltaToday});
}

class __$SummaryInfoCopyWithImpl<$Res> extends _$SummaryInfoCopyWithImpl<$Res>
    implements _$SummaryInfoCopyWith<$Res> {
  __$SummaryInfoCopyWithImpl(
      _SummaryInfo _value, $Res Function(_SummaryInfo) _then)
      : super(_value, (v) => _then(v as _SummaryInfo));

  @override
  _SummaryInfo get _value => super._value as _SummaryInfo;

  @override
  $Res call({
    Object total = freezed,
    Object deltaToday = freezed,
  }) {
    return _then(_SummaryInfo(
      total == freezed ? _value.total : total as int,
      deltaToday == freezed ? _value.deltaToday : deltaToday as int,
    ));
  }
}

class _$_SummaryInfo implements _SummaryInfo {
  const _$_SummaryInfo(this.total, this.deltaToday)
      : assert(total != null),
        assert(deltaToday != null);

  @override
  final int total;
  @override
  final int deltaToday;

  @override
  String toString() {
    return 'SummaryInfo(total: $total, deltaToday: $deltaToday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryInfo &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.deltaToday, deltaToday) ||
                const DeepCollectionEquality()
                    .equals(other.deltaToday, deltaToday)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(deltaToday);

  @override
  _$SummaryInfoCopyWith<_SummaryInfo> get copyWith =>
      __$SummaryInfoCopyWithImpl<_SummaryInfo>(this, _$identity);
}

abstract class _SummaryInfo implements SummaryInfo {
  const factory _SummaryInfo(int total, int deltaToday) = _$_SummaryInfo;

  @override
  int get total;
  @override
  int get deltaToday;
  @override
  _$SummaryInfoCopyWith<_SummaryInfo> get copyWith;
}

class _$HistoricalDataPointTearOff {
  const _$HistoricalDataPointTearOff();

  _HistoricalDataPoint call(DateTime date, int count) {
    return _HistoricalDataPoint(
      date,
      count,
    );
  }
}

// ignore: unused_element
const $HistoricalDataPoint = _$HistoricalDataPointTearOff();

mixin _$HistoricalDataPoint {
  DateTime get date;
  int get count;

  $HistoricalDataPointCopyWith<HistoricalDataPoint> get copyWith;
}

abstract class $HistoricalDataPointCopyWith<$Res> {
  factory $HistoricalDataPointCopyWith(
          HistoricalDataPoint value, $Res Function(HistoricalDataPoint) then) =
      _$HistoricalDataPointCopyWithImpl<$Res>;
  $Res call({DateTime date, int count});
}

class _$HistoricalDataPointCopyWithImpl<$Res>
    implements $HistoricalDataPointCopyWith<$Res> {
  _$HistoricalDataPointCopyWithImpl(this._value, this._then);

  final HistoricalDataPoint _value;
  // ignore: unused_field
  final $Res Function(HistoricalDataPoint) _then;

  @override
  $Res call({
    Object date = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$HistoricalDataPointCopyWith<$Res>
    implements $HistoricalDataPointCopyWith<$Res> {
  factory _$HistoricalDataPointCopyWith(_HistoricalDataPoint value,
          $Res Function(_HistoricalDataPoint) then) =
      __$HistoricalDataPointCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, int count});
}

class __$HistoricalDataPointCopyWithImpl<$Res>
    extends _$HistoricalDataPointCopyWithImpl<$Res>
    implements _$HistoricalDataPointCopyWith<$Res> {
  __$HistoricalDataPointCopyWithImpl(
      _HistoricalDataPoint _value, $Res Function(_HistoricalDataPoint) _then)
      : super(_value, (v) => _then(v as _HistoricalDataPoint));

  @override
  _HistoricalDataPoint get _value => super._value as _HistoricalDataPoint;

  @override
  $Res call({
    Object date = freezed,
    Object count = freezed,
  }) {
    return _then(_HistoricalDataPoint(
      date == freezed ? _value.date : date as DateTime,
      count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_HistoricalDataPoint implements _HistoricalDataPoint {
  const _$_HistoricalDataPoint(this.date, this.count)
      : assert(date != null),
        assert(count != null);

  @override
  final DateTime date;
  @override
  final int count;

  @override
  String toString() {
    return 'HistoricalDataPoint(date: $date, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HistoricalDataPoint &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$HistoricalDataPointCopyWith<_HistoricalDataPoint> get copyWith =>
      __$HistoricalDataPointCopyWithImpl<_HistoricalDataPoint>(
          this, _$identity);
}

abstract class _HistoricalDataPoint implements HistoricalDataPoint {
  const factory _HistoricalDataPoint(DateTime date, int count) =
      _$_HistoricalDataPoint;

  @override
  DateTime get date;
  @override
  int get count;
  @override
  _$HistoricalDataPointCopyWith<_HistoricalDataPoint> get copyWith;
}

class _$StatisticScopeTearOff {
  const _$StatisticScopeTearOff();

  _StatisticScopeCountry country() {
    return const _StatisticScopeCountry();
  }

  _StatisticScopeStateUT stateUt(StateUT stateUt) {
    return _StatisticScopeStateUT(
      stateUt,
    );
  }
}

// ignore: unused_element
const $StatisticScope = _$StatisticScopeTearOff();

mixin _$StatisticScope {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result country(),
    @required Result stateUt(StateUT stateUt),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result country(),
    Result stateUt(StateUT stateUt),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result country(_StatisticScopeCountry value),
    @required Result stateUt(_StatisticScopeStateUT value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result country(_StatisticScopeCountry value),
    Result stateUt(_StatisticScopeStateUT value),
    @required Result orElse(),
  });
}

abstract class $StatisticScopeCopyWith<$Res> {
  factory $StatisticScopeCopyWith(
          StatisticScope value, $Res Function(StatisticScope) then) =
      _$StatisticScopeCopyWithImpl<$Res>;
}

class _$StatisticScopeCopyWithImpl<$Res>
    implements $StatisticScopeCopyWith<$Res> {
  _$StatisticScopeCopyWithImpl(this._value, this._then);

  final StatisticScope _value;
  // ignore: unused_field
  final $Res Function(StatisticScope) _then;
}

abstract class _$StatisticScopeCountryCopyWith<$Res> {
  factory _$StatisticScopeCountryCopyWith(_StatisticScopeCountry value,
          $Res Function(_StatisticScopeCountry) then) =
      __$StatisticScopeCountryCopyWithImpl<$Res>;
}

class __$StatisticScopeCountryCopyWithImpl<$Res>
    extends _$StatisticScopeCopyWithImpl<$Res>
    implements _$StatisticScopeCountryCopyWith<$Res> {
  __$StatisticScopeCountryCopyWithImpl(_StatisticScopeCountry _value,
      $Res Function(_StatisticScopeCountry) _then)
      : super(_value, (v) => _then(v as _StatisticScopeCountry));

  @override
  _StatisticScopeCountry get _value => super._value as _StatisticScopeCountry;
}

class _$_StatisticScopeCountry implements _StatisticScopeCountry {
  const _$_StatisticScopeCountry();

  @override
  String toString() {
    return 'StatisticScope.country()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StatisticScopeCountry);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result country(),
    @required Result stateUt(StateUT stateUt),
  }) {
    assert(country != null);
    assert(stateUt != null);
    return country();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result country(),
    Result stateUt(StateUT stateUt),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (country != null) {
      return country();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result country(_StatisticScopeCountry value),
    @required Result stateUt(_StatisticScopeStateUT value),
  }) {
    assert(country != null);
    assert(stateUt != null);
    return country(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result country(_StatisticScopeCountry value),
    Result stateUt(_StatisticScopeStateUT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (country != null) {
      return country(this);
    }
    return orElse();
  }
}

abstract class _StatisticScopeCountry implements StatisticScope {
  const factory _StatisticScopeCountry() = _$_StatisticScopeCountry;
}

abstract class _$StatisticScopeStateUTCopyWith<$Res> {
  factory _$StatisticScopeStateUTCopyWith(_StatisticScopeStateUT value,
          $Res Function(_StatisticScopeStateUT) then) =
      __$StatisticScopeStateUTCopyWithImpl<$Res>;
  $Res call({StateUT stateUt});
}

class __$StatisticScopeStateUTCopyWithImpl<$Res>
    extends _$StatisticScopeCopyWithImpl<$Res>
    implements _$StatisticScopeStateUTCopyWith<$Res> {
  __$StatisticScopeStateUTCopyWithImpl(_StatisticScopeStateUT _value,
      $Res Function(_StatisticScopeStateUT) _then)
      : super(_value, (v) => _then(v as _StatisticScopeStateUT));

  @override
  _StatisticScopeStateUT get _value => super._value as _StatisticScopeStateUT;

  @override
  $Res call({
    Object stateUt = freezed,
  }) {
    return _then(_StatisticScopeStateUT(
      stateUt == freezed ? _value.stateUt : stateUt as StateUT,
    ));
  }
}

class _$_StatisticScopeStateUT implements _StatisticScopeStateUT {
  const _$_StatisticScopeStateUT(this.stateUt) : assert(stateUt != null);

  @override
  final StateUT stateUt;

  @override
  String toString() {
    return 'StatisticScope.stateUt(stateUt: $stateUt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatisticScopeStateUT &&
            (identical(other.stateUt, stateUt) ||
                const DeepCollectionEquality().equals(other.stateUt, stateUt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stateUt);

  @override
  _$StatisticScopeStateUTCopyWith<_StatisticScopeStateUT> get copyWith =>
      __$StatisticScopeStateUTCopyWithImpl<_StatisticScopeStateUT>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result country(),
    @required Result stateUt(StateUT stateUt),
  }) {
    assert(country != null);
    assert(stateUt != null);
    return stateUt(this.stateUt);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result country(),
    Result stateUt(StateUT stateUt),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateUt != null) {
      return stateUt(this.stateUt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result country(_StatisticScopeCountry value),
    @required Result stateUt(_StatisticScopeStateUT value),
  }) {
    assert(country != null);
    assert(stateUt != null);
    return stateUt(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result country(_StatisticScopeCountry value),
    Result stateUt(_StatisticScopeStateUT value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stateUt != null) {
      return stateUt(this);
    }
    return orElse();
  }
}

abstract class _StatisticScopeStateUT implements StatisticScope {
  const factory _StatisticScopeStateUT(StateUT stateUt) =
      _$_StatisticScopeStateUT;

  StateUT get stateUt;
  _$StatisticScopeStateUTCopyWith<_StatisticScopeStateUT> get copyWith;
}
