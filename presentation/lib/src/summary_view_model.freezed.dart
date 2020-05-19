// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'summary_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

  _SummaryState call(
      {@required Map<Category, SummaryItemState> summaryItems,
      @required Category selectedCategory}) {
    return _SummaryState(
      summaryItems: summaryItems,
      selectedCategory: selectedCategory,
    );
  }
}

// ignore: unused_element
const $SummaryState = _$SummaryStateTearOff();

mixin _$SummaryState {
  Map<Category, SummaryItemState> get summaryItems;
  Category get selectedCategory;

  $SummaryStateCopyWith<SummaryState> get copyWith;
}

abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res>;
  $Res call(
      {Map<Category, SummaryItemState> summaryItems,
      Category selectedCategory});
}

class _$SummaryStateCopyWithImpl<$Res> implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  final SummaryState _value;
  // ignore: unused_field
  final $Res Function(SummaryState) _then;

  @override
  $Res call({
    Object summaryItems = freezed,
    Object selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      summaryItems: summaryItems == freezed
          ? _value.summaryItems
          : summaryItems as Map<Category, SummaryItemState>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Category,
    ));
  }
}

abstract class _$SummaryStateCopyWith<$Res>
    implements $SummaryStateCopyWith<$Res> {
  factory _$SummaryStateCopyWith(
          _SummaryState value, $Res Function(_SummaryState) then) =
      __$SummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<Category, SummaryItemState> summaryItems,
      Category selectedCategory});
}

class __$SummaryStateCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$SummaryStateCopyWith<$Res> {
  __$SummaryStateCopyWithImpl(
      _SummaryState _value, $Res Function(_SummaryState) _then)
      : super(_value, (v) => _then(v as _SummaryState));

  @override
  _SummaryState get _value => super._value as _SummaryState;

  @override
  $Res call({
    Object summaryItems = freezed,
    Object selectedCategory = freezed,
  }) {
    return _then(_SummaryState(
      summaryItems: summaryItems == freezed
          ? _value.summaryItems
          : summaryItems as Map<Category, SummaryItemState>,
      selectedCategory: selectedCategory == freezed
          ? _value.selectedCategory
          : selectedCategory as Category,
    ));
  }
}

class _$_SummaryState implements _SummaryState {
  const _$_SummaryState(
      {@required this.summaryItems, @required this.selectedCategory})
      : assert(summaryItems != null),
        assert(selectedCategory != null);

  @override
  final Map<Category, SummaryItemState> summaryItems;
  @override
  final Category selectedCategory;

  @override
  String toString() {
    return 'SummaryState(summaryItems: $summaryItems, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryState &&
            (identical(other.summaryItems, summaryItems) ||
                const DeepCollectionEquality()
                    .equals(other.summaryItems, summaryItems)) &&
            (identical(other.selectedCategory, selectedCategory) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCategory, selectedCategory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(summaryItems) ^
      const DeepCollectionEquality().hash(selectedCategory);

  @override
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      __$SummaryStateCopyWithImpl<_SummaryState>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {@required Map<Category, SummaryItemState> summaryItems,
      @required Category selectedCategory}) = _$_SummaryState;

  @override
  Map<Category, SummaryItemState> get summaryItems;
  @override
  Category get selectedCategory;
  @override
  _$SummaryStateCopyWith<_SummaryState> get copyWith;
}

class _$SummaryItemStateTearOff {
  const _$SummaryItemStateTearOff();

  _SummaryItemState call(
      {@required String title, @required String total, @required String diff}) {
    return _SummaryItemState(
      title: title,
      total: total,
      diff: diff,
    );
  }
}

// ignore: unused_element
const $SummaryItemState = _$SummaryItemStateTearOff();

mixin _$SummaryItemState {
  String get title;
  String get total;
  String get diff;

  $SummaryItemStateCopyWith<SummaryItemState> get copyWith;
}

abstract class $SummaryItemStateCopyWith<$Res> {
  factory $SummaryItemStateCopyWith(
          SummaryItemState value, $Res Function(SummaryItemState) then) =
      _$SummaryItemStateCopyWithImpl<$Res>;
  $Res call({String title, String total, String diff});
}

class _$SummaryItemStateCopyWithImpl<$Res>
    implements $SummaryItemStateCopyWith<$Res> {
  _$SummaryItemStateCopyWithImpl(this._value, this._then);

  final SummaryItemState _value;
  // ignore: unused_field
  final $Res Function(SummaryItemState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object total = freezed,
    Object diff = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      total: total == freezed ? _value.total : total as String,
      diff: diff == freezed ? _value.diff : diff as String,
    ));
  }
}

abstract class _$SummaryItemStateCopyWith<$Res>
    implements $SummaryItemStateCopyWith<$Res> {
  factory _$SummaryItemStateCopyWith(
          _SummaryItemState value, $Res Function(_SummaryItemState) then) =
      __$SummaryItemStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, String total, String diff});
}

class __$SummaryItemStateCopyWithImpl<$Res>
    extends _$SummaryItemStateCopyWithImpl<$Res>
    implements _$SummaryItemStateCopyWith<$Res> {
  __$SummaryItemStateCopyWithImpl(
      _SummaryItemState _value, $Res Function(_SummaryItemState) _then)
      : super(_value, (v) => _then(v as _SummaryItemState));

  @override
  _SummaryItemState get _value => super._value as _SummaryItemState;

  @override
  $Res call({
    Object title = freezed,
    Object total = freezed,
    Object diff = freezed,
  }) {
    return _then(_SummaryItemState(
      title: title == freezed ? _value.title : title as String,
      total: total == freezed ? _value.total : total as String,
      diff: diff == freezed ? _value.diff : diff as String,
    ));
  }
}

class _$_SummaryItemState implements _SummaryItemState {
  const _$_SummaryItemState(
      {@required this.title, @required this.total, @required this.diff})
      : assert(title != null),
        assert(total != null),
        assert(diff != null);

  @override
  final String title;
  @override
  final String total;
  @override
  final String diff;

  @override
  String toString() {
    return 'SummaryItemState(title: $title, total: $total, diff: $diff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryItemState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.diff, diff) ||
                const DeepCollectionEquality().equals(other.diff, diff)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(diff);

  @override
  _$SummaryItemStateCopyWith<_SummaryItemState> get copyWith =>
      __$SummaryItemStateCopyWithImpl<_SummaryItemState>(this, _$identity);
}

abstract class _SummaryItemState implements SummaryItemState {
  const factory _SummaryItemState(
      {@required String title,
      @required String total,
      @required String diff}) = _$_SummaryItemState;

  @override
  String get title;
  @override
  String get total;
  @override
  String get diff;
  @override
  _$SummaryItemStateCopyWith<_SummaryItemState> get copyWith;
}

class _$SummaryActionTearOff {
  const _$SummaryActionTearOff();

  _CategoryTapped categoryTapped(Category category) {
    return _CategoryTapped(
      category,
    );
  }

  _SummaryActionInit init() {
    return const _SummaryActionInit();
  }
}

// ignore: unused_element
const $SummaryAction = _$SummaryActionTearOff();

mixin _$SummaryAction {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result categoryTapped(Category category),
    @required Result init(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result categoryTapped(Category category),
    Result init(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result categoryTapped(_CategoryTapped value),
    @required Result init(_SummaryActionInit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result categoryTapped(_CategoryTapped value),
    Result init(_SummaryActionInit value),
    @required Result orElse(),
  });
}

abstract class $SummaryActionCopyWith<$Res> {
  factory $SummaryActionCopyWith(
          SummaryAction value, $Res Function(SummaryAction) then) =
      _$SummaryActionCopyWithImpl<$Res>;
}

class _$SummaryActionCopyWithImpl<$Res>
    implements $SummaryActionCopyWith<$Res> {
  _$SummaryActionCopyWithImpl(this._value, this._then);

  final SummaryAction _value;
  // ignore: unused_field
  final $Res Function(SummaryAction) _then;
}

abstract class _$CategoryTappedCopyWith<$Res> {
  factory _$CategoryTappedCopyWith(
          _CategoryTapped value, $Res Function(_CategoryTapped) then) =
      __$CategoryTappedCopyWithImpl<$Res>;
  $Res call({Category category});
}

class __$CategoryTappedCopyWithImpl<$Res>
    extends _$SummaryActionCopyWithImpl<$Res>
    implements _$CategoryTappedCopyWith<$Res> {
  __$CategoryTappedCopyWithImpl(
      _CategoryTapped _value, $Res Function(_CategoryTapped) _then)
      : super(_value, (v) => _then(v as _CategoryTapped));

  @override
  _CategoryTapped get _value => super._value as _CategoryTapped;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_CategoryTapped(
      category == freezed ? _value.category : category as Category,
    ));
  }
}

class _$_CategoryTapped implements _CategoryTapped {
  const _$_CategoryTapped(this.category) : assert(category != null);

  @override
  final Category category;

  @override
  String toString() {
    return 'SummaryAction.categoryTapped(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryTapped &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$CategoryTappedCopyWith<_CategoryTapped> get copyWith =>
      __$CategoryTappedCopyWithImpl<_CategoryTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result categoryTapped(Category category),
    @required Result init(),
  }) {
    assert(categoryTapped != null);
    assert(init != null);
    return categoryTapped(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result categoryTapped(Category category),
    Result init(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryTapped != null) {
      return categoryTapped(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result categoryTapped(_CategoryTapped value),
    @required Result init(_SummaryActionInit value),
  }) {
    assert(categoryTapped != null);
    assert(init != null);
    return categoryTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result categoryTapped(_CategoryTapped value),
    Result init(_SummaryActionInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryTapped != null) {
      return categoryTapped(this);
    }
    return orElse();
  }
}

abstract class _CategoryTapped implements SummaryAction {
  const factory _CategoryTapped(Category category) = _$_CategoryTapped;

  Category get category;
  _$CategoryTappedCopyWith<_CategoryTapped> get copyWith;
}

abstract class _$SummaryActionInitCopyWith<$Res> {
  factory _$SummaryActionInitCopyWith(
          _SummaryActionInit value, $Res Function(_SummaryActionInit) then) =
      __$SummaryActionInitCopyWithImpl<$Res>;
}

class __$SummaryActionInitCopyWithImpl<$Res>
    extends _$SummaryActionCopyWithImpl<$Res>
    implements _$SummaryActionInitCopyWith<$Res> {
  __$SummaryActionInitCopyWithImpl(
      _SummaryActionInit _value, $Res Function(_SummaryActionInit) _then)
      : super(_value, (v) => _then(v as _SummaryActionInit));

  @override
  _SummaryActionInit get _value => super._value as _SummaryActionInit;
}

class _$_SummaryActionInit implements _SummaryActionInit {
  const _$_SummaryActionInit();

  @override
  String toString() {
    return 'SummaryAction.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SummaryActionInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result categoryTapped(Category category),
    @required Result init(),
  }) {
    assert(categoryTapped != null);
    assert(init != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result categoryTapped(Category category),
    Result init(),
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
    @required Result categoryTapped(_CategoryTapped value),
    @required Result init(_SummaryActionInit value),
  }) {
    assert(categoryTapped != null);
    assert(init != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result categoryTapped(_CategoryTapped value),
    Result init(_SummaryActionInit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _SummaryActionInit implements SummaryAction {
  const factory _SummaryActionInit() = _$_SummaryActionInit;
}
