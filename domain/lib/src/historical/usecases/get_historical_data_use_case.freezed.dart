// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'get_historical_data_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HistoricalDataParamsTearOff {
  const _$HistoricalDataParamsTearOff();

  _HistoricalDataParams call(
      {@required StatisticScope scope,
      @required Category category,
      @required int days}) {
    return _HistoricalDataParams(
      scope: scope,
      category: category,
      days: days,
    );
  }
}

// ignore: unused_element
const $HistoricalDataParams = _$HistoricalDataParamsTearOff();

mixin _$HistoricalDataParams {
  StatisticScope get scope;
  Category get category;
  int get days;

  $HistoricalDataParamsCopyWith<HistoricalDataParams> get copyWith;
}

abstract class $HistoricalDataParamsCopyWith<$Res> {
  factory $HistoricalDataParamsCopyWith(HistoricalDataParams value,
          $Res Function(HistoricalDataParams) then) =
      _$HistoricalDataParamsCopyWithImpl<$Res>;
  $Res call({StatisticScope scope, Category category, int days});

  $StatisticScopeCopyWith<$Res> get scope;
}

class _$HistoricalDataParamsCopyWithImpl<$Res>
    implements $HistoricalDataParamsCopyWith<$Res> {
  _$HistoricalDataParamsCopyWithImpl(this._value, this._then);

  final HistoricalDataParams _value;
  // ignore: unused_field
  final $Res Function(HistoricalDataParams) _then;

  @override
  $Res call({
    Object scope = freezed,
    Object category = freezed,
    Object days = freezed,
  }) {
    return _then(_value.copyWith(
      scope: scope == freezed ? _value.scope : scope as StatisticScope,
      category: category == freezed ? _value.category : category as Category,
      days: days == freezed ? _value.days : days as int,
    ));
  }

  @override
  $StatisticScopeCopyWith<$Res> get scope {
    if (_value.scope == null) {
      return null;
    }
    return $StatisticScopeCopyWith<$Res>(_value.scope, (value) {
      return _then(_value.copyWith(scope: value));
    });
  }
}

abstract class _$HistoricalDataParamsCopyWith<$Res>
    implements $HistoricalDataParamsCopyWith<$Res> {
  factory _$HistoricalDataParamsCopyWith(_HistoricalDataParams value,
          $Res Function(_HistoricalDataParams) then) =
      __$HistoricalDataParamsCopyWithImpl<$Res>;
  @override
  $Res call({StatisticScope scope, Category category, int days});

  @override
  $StatisticScopeCopyWith<$Res> get scope;
}

class __$HistoricalDataParamsCopyWithImpl<$Res>
    extends _$HistoricalDataParamsCopyWithImpl<$Res>
    implements _$HistoricalDataParamsCopyWith<$Res> {
  __$HistoricalDataParamsCopyWithImpl(
      _HistoricalDataParams _value, $Res Function(_HistoricalDataParams) _then)
      : super(_value, (v) => _then(v as _HistoricalDataParams));

  @override
  _HistoricalDataParams get _value => super._value as _HistoricalDataParams;

  @override
  $Res call({
    Object scope = freezed,
    Object category = freezed,
    Object days = freezed,
  }) {
    return _then(_HistoricalDataParams(
      scope: scope == freezed ? _value.scope : scope as StatisticScope,
      category: category == freezed ? _value.category : category as Category,
      days: days == freezed ? _value.days : days as int,
    ));
  }
}

class _$_HistoricalDataParams implements _HistoricalDataParams {
  const _$_HistoricalDataParams(
      {@required this.scope, @required this.category, @required this.days})
      : assert(scope != null),
        assert(category != null),
        assert(days != null);

  @override
  final StatisticScope scope;
  @override
  final Category category;
  @override
  final int days;

  @override
  String toString() {
    return 'HistoricalDataParams(scope: $scope, category: $category, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HistoricalDataParams &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(days);

  @override
  _$HistoricalDataParamsCopyWith<_HistoricalDataParams> get copyWith =>
      __$HistoricalDataParamsCopyWithImpl<_HistoricalDataParams>(
          this, _$identity);
}

abstract class _HistoricalDataParams implements HistoricalDataParams {
  const factory _HistoricalDataParams(
      {@required StatisticScope scope,
      @required Category category,
      @required int days}) = _$_HistoricalDataParams;

  @override
  StatisticScope get scope;
  @override
  Category get category;
  @override
  int get days;
  @override
  _$HistoricalDataParamsCopyWith<_HistoricalDataParams> get copyWith;
}
