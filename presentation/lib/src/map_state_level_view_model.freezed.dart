// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'map_state_level_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StateLevelStateTearOff {
  const _$StateLevelStateTearOff();

  _StateLevelState call(
      {@required Category selectedCategory,
      @required Map<StateUT, SummaryInfo> stateLevelInfo}) {
    return _StateLevelState(
      selectedCategory: selectedCategory,
      stateLevelInfo: stateLevelInfo,
    );
  }
}

// ignore: unused_element
const $StateLevelState = _$StateLevelStateTearOff();

mixin _$StateLevelState {
  Category get selectedCategory;
  Map<StateUT, SummaryInfo> get stateLevelInfo;

  $StateLevelStateCopyWith<StateLevelState> get copyWith;
}

abstract class $StateLevelStateCopyWith<$Res> {
  factory $StateLevelStateCopyWith(
          StateLevelState value, $Res Function(StateLevelState) then) =
      _$StateLevelStateCopyWithImpl<$Res>;
  $Res call(
      {Category selectedCategory, Map<StateUT, SummaryInfo> stateLevelInfo});
}

class _$StateLevelStateCopyWithImpl<$Res>
    implements $StateLevelStateCopyWith<$Res> {
  _$StateLevelStateCopyWithImpl(this._value, this._then);

  final StateLevelState _value;
  // ignore: unused_field
  final $Res Function(StateLevelState) _then;

  @override
  $Res call({
    Object selectedCategory = freezed,
    Object stateLevelInfo = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Category,
      stateLevelInfo: stateLevelInfo == freezed
          ? _value.stateLevelInfo
          : stateLevelInfo as Map<StateUT, SummaryInfo>,
    ));
  }
}

abstract class _$StateLevelStateCopyWith<$Res>
    implements $StateLevelStateCopyWith<$Res> {
  factory _$StateLevelStateCopyWith(
          _StateLevelState value, $Res Function(_StateLevelState) then) =
      __$StateLevelStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Category selectedCategory, Map<StateUT, SummaryInfo> stateLevelInfo});
}

class __$StateLevelStateCopyWithImpl<$Res>
    extends _$StateLevelStateCopyWithImpl<$Res>
    implements _$StateLevelStateCopyWith<$Res> {
  __$StateLevelStateCopyWithImpl(
      _StateLevelState _value, $Res Function(_StateLevelState) _then)
      : super(_value, (v) => _then(v as _StateLevelState));

  @override
  _StateLevelState get _value => super._value as _StateLevelState;

  @override
  $Res call({
    Object selectedCategory = freezed,
    Object stateLevelInfo = freezed,
  }) {
    return _then(_StateLevelState(
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Category,
      stateLevelInfo: stateLevelInfo == freezed
          ? _value.stateLevelInfo
          : stateLevelInfo as Map<StateUT, SummaryInfo>,
    ));
  }
}

class _$_StateLevelState
    with DiagnosticableTreeMixin
    implements _StateLevelState {
  const _$_StateLevelState(
      {@required this.selectedCategory, @required this.stateLevelInfo})
      : assert(selectedCategory != null),
        assert(stateLevelInfo != null);

  @override
  final Category selectedCategory;
  @override
  final Map<StateUT, SummaryInfo> stateLevelInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateLevelState(selectedCategory: $selectedCategory, stateLevelInfo: $stateLevelInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateLevelState'))
      ..add(DiagnosticsProperty('selectedCategory', selectedCategory))
      ..add(DiagnosticsProperty('stateLevelInfo', stateLevelInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateLevelState &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)) &&
            (identical(other.stateLevelInfo, stateLevelInfo) ||
                const DeepCollectionEquality()
                    .equals(other.stateLevelInfo, stateLevelInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCategory) ^
      const DeepCollectionEquality().hash(stateLevelInfo);

  @override
  _$StateLevelStateCopyWith<_StateLevelState> get copyWith =>
      __$StateLevelStateCopyWithImpl<_StateLevelState>(this, _$identity);
}

abstract class _StateLevelState implements StateLevelState {
  const factory _StateLevelState(
      {@required Category selectedCategory,
      @required Map<StateUT, SummaryInfo> stateLevelInfo}) = _$_StateLevelState;

  @override
  Category get selectedCategory;
  @override
  Map<StateUT, SummaryInfo> get stateLevelInfo;
  @override
  _$StateLevelStateCopyWith<_StateLevelState> get copyWith;
}

class _$StateLevelActionTearOff {
  const _$StateLevelActionTearOff();

  _StateLevelActionInit init() {
    return const _StateLevelActionInit();
  }

  _SelectCategory selectCategory(Category category) {
    return _SelectCategory(
      category,
    );
  }
}

// ignore: unused_element
const $StateLevelAction = _$StateLevelActionTearOff();

mixin _$StateLevelAction {
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
    @required Result init(_StateLevelActionInit value),
    @required Result selectCategory(_SelectCategory value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_StateLevelActionInit value),
    Result selectCategory(_SelectCategory value),
    @required Result orElse(),
  });
}

abstract class $StateLevelActionCopyWith<$Res> {
  factory $StateLevelActionCopyWith(
          StateLevelAction value, $Res Function(StateLevelAction) then) =
      _$StateLevelActionCopyWithImpl<$Res>;
}

class _$StateLevelActionCopyWithImpl<$Res>
    implements $StateLevelActionCopyWith<$Res> {
  _$StateLevelActionCopyWithImpl(this._value, this._then);

  final StateLevelAction _value;
  // ignore: unused_field
  final $Res Function(StateLevelAction) _then;
}

abstract class _$StateLevelActionInitCopyWith<$Res> {
  factory _$StateLevelActionInitCopyWith(_StateLevelActionInit value,
          $Res Function(_StateLevelActionInit) then) =
      __$StateLevelActionInitCopyWithImpl<$Res>;
}

class __$StateLevelActionInitCopyWithImpl<$Res>
    extends _$StateLevelActionCopyWithImpl<$Res>
    implements _$StateLevelActionInitCopyWith<$Res> {
  __$StateLevelActionInitCopyWithImpl(
      _StateLevelActionInit _value, $Res Function(_StateLevelActionInit) _then)
      : super(_value, (v) => _then(v as _StateLevelActionInit));

  @override
  _StateLevelActionInit get _value => super._value as _StateLevelActionInit;
}

class _$_StateLevelActionInit
    with DiagnosticableTreeMixin
    implements _StateLevelActionInit {
  const _$_StateLevelActionInit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateLevelAction.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'StateLevelAction.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StateLevelActionInit);
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
    @required Result init(_StateLevelActionInit value),
    @required Result selectCategory(_SelectCategory value),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_StateLevelActionInit value),
    Result selectCategory(_SelectCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _StateLevelActionInit implements StateLevelAction {
  const factory _StateLevelActionInit() = _$_StateLevelActionInit;
}

abstract class _$SelectCategoryCopyWith<$Res> {
  factory _$SelectCategoryCopyWith(
          _SelectCategory value, $Res Function(_SelectCategory) then) =
      __$SelectCategoryCopyWithImpl<$Res>;
  $Res call({Category category});
}

class __$SelectCategoryCopyWithImpl<$Res>
    extends _$StateLevelActionCopyWithImpl<$Res>
    implements _$SelectCategoryCopyWith<$Res> {
  __$SelectCategoryCopyWithImpl(
      _SelectCategory _value, $Res Function(_SelectCategory) _then)
      : super(_value, (v) => _then(v as _SelectCategory));

  @override
  _SelectCategory get _value => super._value as _SelectCategory;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_SelectCategory(
      category == freezed ? _value.category : category as Category,
    ));
  }
}

class _$_SelectCategory
    with DiagnosticableTreeMixin
    implements _SelectCategory {
  const _$_SelectCategory(this.category) : assert(category != null);

  @override
  final Category category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StateLevelAction.selectCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StateLevelAction.selectCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$SelectCategoryCopyWith<_SelectCategory> get copyWith =>
      __$SelectCategoryCopyWithImpl<_SelectCategory>(this, _$identity);

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
    @required Result init(_StateLevelActionInit value),
    @required Result selectCategory(_SelectCategory value),
  }) {
    assert(init != null);
    assert(selectCategory != null);
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_StateLevelActionInit value),
    Result selectCategory(_SelectCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategory implements StateLevelAction {
  const factory _SelectCategory(Category category) = _$_SelectCategory;

  Category get category;
  _$SelectCategoryCopyWith<_SelectCategory> get copyWith;
}
