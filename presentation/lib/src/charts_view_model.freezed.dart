// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'charts_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChartsActionTearOff {
  const _$ChartsActionTearOff();

  _ChartsActionInit init() {
    return const _ChartsActionInit();
  }

  _ChartsActionSelectCategory selectCategory(Category category) {
    return _ChartsActionSelectCategory(
      category,
    );
  }
}

// ignore: unused_element
const $ChartsAction = _$ChartsActionTearOff();

mixin _$ChartsAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result selectCategory(Category category),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result selectCategory(Category category),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ChartsActionInit value),
    @required Result selectCategory(_ChartsActionSelectCategory value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ChartsActionInit value),
    Result selectCategory(_ChartsActionSelectCategory value),
    @required Result orElse(),
  });
}

abstract class $ChartsActionCopyWith<$Res> {
  factory $ChartsActionCopyWith(
          ChartsAction value, $Res Function(ChartsAction) then) =
      _$ChartsActionCopyWithImpl<$Res>;
}

class _$ChartsActionCopyWithImpl<$Res> implements $ChartsActionCopyWith<$Res> {
  _$ChartsActionCopyWithImpl(this._value, this._then);

  final ChartsAction _value;
  // ignore: unused_field
  final $Res Function(ChartsAction) _then;
}

abstract class _$ChartsActionInitCopyWith<$Res> {
  factory _$ChartsActionInitCopyWith(
          _ChartsActionInit value, $Res Function(_ChartsActionInit) then) =
      __$ChartsActionInitCopyWithImpl<$Res>;
}

class __$ChartsActionInitCopyWithImpl<$Res>
    extends _$ChartsActionCopyWithImpl<$Res>
    implements _$ChartsActionInitCopyWith<$Res> {
  __$ChartsActionInitCopyWithImpl(
      _ChartsActionInit _value, $Res Function(_ChartsActionInit) _then)
      : super(_value, (v) => _then(v as _ChartsActionInit));

  @override
  _ChartsActionInit get _value => super._value as _ChartsActionInit;
}

class _$_ChartsActionInit implements _ChartsActionInit {
  const _$_ChartsActionInit();

  @override
  String toString() {
    return 'ChartsAction.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChartsActionInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result selectCategory(Category category),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result selectCategory(Category category),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ChartsActionInit value),
    @required Result selectCategory(_ChartsActionSelectCategory value),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ChartsActionInit value),
    Result selectCategory(_ChartsActionSelectCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _ChartsActionInit implements ChartsAction {
  const factory _ChartsActionInit() = _$_ChartsActionInit;
}

abstract class _$ChartsActionSelectCategoryCopyWith<$Res> {
  factory _$ChartsActionSelectCategoryCopyWith(
          _ChartsActionSelectCategory value,
          $Res Function(_ChartsActionSelectCategory) then) =
      __$ChartsActionSelectCategoryCopyWithImpl<$Res>;
  $Res call({Category category});
}

class __$ChartsActionSelectCategoryCopyWithImpl<$Res>
    extends _$ChartsActionCopyWithImpl<$Res>
    implements _$ChartsActionSelectCategoryCopyWith<$Res> {
  __$ChartsActionSelectCategoryCopyWithImpl(_ChartsActionSelectCategory _value,
      $Res Function(_ChartsActionSelectCategory) _then)
      : super(_value, (v) => _then(v as _ChartsActionSelectCategory));

  @override
  _ChartsActionSelectCategory get _value =>
      super._value as _ChartsActionSelectCategory;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_ChartsActionSelectCategory(
      category == freezed ? _value.category : category as Category,
    ));
  }
}

class _$_ChartsActionSelectCategory implements _ChartsActionSelectCategory {
  const _$_ChartsActionSelectCategory(this.category) : assert(category != null);

  @override
  final Category category;

  @override
  String toString() {
    return 'ChartsAction.selectCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChartsActionSelectCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$ChartsActionSelectCategoryCopyWith<_ChartsActionSelectCategory>
      get copyWith => __$ChartsActionSelectCategoryCopyWithImpl<
          _ChartsActionSelectCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result selectCategory(Category category),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return selectCategory(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result selectCategory(Category category),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectCategory != null) {
      return selectCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_ChartsActionInit value),
    @required Result selectCategory(_ChartsActionSelectCategory value),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_ChartsActionInit value),
    Result selectCategory(_ChartsActionSelectCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _ChartsActionSelectCategory implements ChartsAction {
  const factory _ChartsActionSelectCategory(Category category) =
      _$_ChartsActionSelectCategory;

  Category get category;
  _$ChartsActionSelectCategoryCopyWith<_ChartsActionSelectCategory>
      get copyWith;
}

class _$ChartsStateTearOff {
  const _$ChartsStateTearOff();

  _ChartsState call(
      {@required Category currentCategory,
      @required List<HistoricalDataPoint> dataPoints}) {
    return _ChartsState(
      currentCategory: currentCategory,
      dataPoints: dataPoints,
    );
  }
}

// ignore: unused_element
const $ChartsState = _$ChartsStateTearOff();

mixin _$ChartsState {
  Category get currentCategory;
  List<HistoricalDataPoint> get dataPoints;

  $ChartsStateCopyWith<ChartsState> get copyWith;
}

abstract class $ChartsStateCopyWith<$Res> {
  factory $ChartsStateCopyWith(
          ChartsState value, $Res Function(ChartsState) then) =
      _$ChartsStateCopyWithImpl<$Res>;
  $Res call({Category currentCategory, List<HistoricalDataPoint> dataPoints});
}

class _$ChartsStateCopyWithImpl<$Res> implements $ChartsStateCopyWith<$Res> {
  _$ChartsStateCopyWithImpl(this._value, this._then);

  final ChartsState _value;
  // ignore: unused_field
  final $Res Function(ChartsState) _then;

  @override
  $Res call({
    Object currentCategory = freezed,
    Object dataPoints = freezed,
  }) {
    return _then(_value.copyWith(
      currentCategory: currentCategory == freezed
          ? _value.currentCategory
          : currentCategory as Category,
      dataPoints: dataPoints == freezed
          ? _value.dataPoints
          : dataPoints as List<HistoricalDataPoint>,
    ));
  }
}

abstract class _$ChartsStateCopyWith<$Res>
    implements $ChartsStateCopyWith<$Res> {
  factory _$ChartsStateCopyWith(
          _ChartsState value, $Res Function(_ChartsState) then) =
      __$ChartsStateCopyWithImpl<$Res>;
  @override
  $Res call({Category currentCategory, List<HistoricalDataPoint> dataPoints});
}

class __$ChartsStateCopyWithImpl<$Res> extends _$ChartsStateCopyWithImpl<$Res>
    implements _$ChartsStateCopyWith<$Res> {
  __$ChartsStateCopyWithImpl(
      _ChartsState _value, $Res Function(_ChartsState) _then)
      : super(_value, (v) => _then(v as _ChartsState));

  @override
  _ChartsState get _value => super._value as _ChartsState;

  @override
  $Res call({
    Object currentCategory = freezed,
    Object dataPoints = freezed,
  }) {
    return _then(_ChartsState(
      currentCategory: currentCategory == freezed
          ? _value.currentCategory
          : currentCategory as Category,
      dataPoints: dataPoints == freezed
          ? _value.dataPoints
          : dataPoints as List<HistoricalDataPoint>,
    ));
  }
}

class _$_ChartsState implements _ChartsState {
  const _$_ChartsState(
      {@required this.currentCategory, @required this.dataPoints})
      : assert(currentCategory != null),
        assert(dataPoints != null);

  @override
  final Category currentCategory;
  @override
  final List<HistoricalDataPoint> dataPoints;

  @override
  String toString() {
    return 'ChartsState(currentCategory: $currentCategory, dataPoints: $dataPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChartsState &&
            (identical(other.currentCategory, currentCategory) ||
                const DeepCollectionEquality()
                    .equals(other.currentCategory, currentCategory)) &&
            (identical(other.dataPoints, dataPoints) ||
                const DeepCollectionEquality()
                    .equals(other.dataPoints, dataPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentCategory) ^
      const DeepCollectionEquality().hash(dataPoints);

  @override
  _$ChartsStateCopyWith<_ChartsState> get copyWith =>
      __$ChartsStateCopyWithImpl<_ChartsState>(this, _$identity);
}

abstract class _ChartsState implements ChartsState {
  const factory _ChartsState(
      {@required Category currentCategory,
      @required List<HistoricalDataPoint> dataPoints}) = _$_ChartsState;

  @override
  Category get currentCategory;
  @override
  List<HistoricalDataPoint> get dataPoints;
  @override
  _$ChartsStateCopyWith<_ChartsState> get copyWith;
}
