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
