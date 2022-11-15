// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SliderEvent {
  double get currentPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double currentPage) setCurrentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double currentPage)? setCurrentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double currentPage)? setCurrentPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCurrentPage value) setCurrentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCurrentPage value)? setCurrentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCurrentPage value)? setCurrentPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SliderEventCopyWith<SliderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderEventCopyWith<$Res> {
  factory $SliderEventCopyWith(
          SliderEvent value, $Res Function(SliderEvent) then) =
      _$SliderEventCopyWithImpl<$Res, SliderEvent>;
  @useResult
  $Res call({double currentPage});
}

/// @nodoc
class _$SliderEventCopyWithImpl<$Res, $Val extends SliderEvent>
    implements $SliderEventCopyWith<$Res> {
  _$SliderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetCurrentPageCopyWith<$Res>
    implements $SliderEventCopyWith<$Res> {
  factory _$$SetCurrentPageCopyWith(
          _$SetCurrentPage value, $Res Function(_$SetCurrentPage) then) =
      __$$SetCurrentPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double currentPage});
}

/// @nodoc
class __$$SetCurrentPageCopyWithImpl<$Res>
    extends _$SliderEventCopyWithImpl<$Res, _$SetCurrentPage>
    implements _$$SetCurrentPageCopyWith<$Res> {
  __$$SetCurrentPageCopyWithImpl(
      _$SetCurrentPage _value, $Res Function(_$SetCurrentPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$SetCurrentPage(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetCurrentPage implements SetCurrentPage {
  const _$SetCurrentPage(this.currentPage);

  @override
  final double currentPage;

  @override
  String toString() {
    return 'SliderEvent.setCurrentPage(currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentPage &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentPageCopyWith<_$SetCurrentPage> get copyWith =>
      __$$SetCurrentPageCopyWithImpl<_$SetCurrentPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double currentPage) setCurrentPage,
  }) {
    return setCurrentPage(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double currentPage)? setCurrentPage,
  }) {
    return setCurrentPage?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double currentPage)? setCurrentPage,
    required TResult orElse(),
  }) {
    if (setCurrentPage != null) {
      return setCurrentPage(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetCurrentPage value) setCurrentPage,
  }) {
    return setCurrentPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetCurrentPage value)? setCurrentPage,
  }) {
    return setCurrentPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetCurrentPage value)? setCurrentPage,
    required TResult orElse(),
  }) {
    if (setCurrentPage != null) {
      return setCurrentPage(this);
    }
    return orElse();
  }
}

abstract class SetCurrentPage implements SliderEvent {
  const factory SetCurrentPage(final double currentPage) = _$SetCurrentPage;

  @override
  double get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$SetCurrentPageCopyWith<_$SetCurrentPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SliderState {
  double? get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SliderStateCopyWith<SliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderStateCopyWith<$Res> {
  factory $SliderStateCopyWith(
          SliderState value, $Res Function(SliderState) then) =
      _$SliderStateCopyWithImpl<$Res, SliderState>;
  @useResult
  $Res call({double? currentPage});
}

/// @nodoc
class _$SliderStateCopyWithImpl<$Res, $Val extends SliderState>
    implements $SliderStateCopyWith<$Res> {
  _$SliderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SliderStateCopyWith<$Res>
    implements $SliderStateCopyWith<$Res> {
  factory _$$_SliderStateCopyWith(
          _$_SliderState value, $Res Function(_$_SliderState) then) =
      __$$_SliderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? currentPage});
}

/// @nodoc
class __$$_SliderStateCopyWithImpl<$Res>
    extends _$SliderStateCopyWithImpl<$Res, _$_SliderState>
    implements _$$_SliderStateCopyWith<$Res> {
  __$$_SliderStateCopyWithImpl(
      _$_SliderState _value, $Res Function(_$_SliderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
  }) {
    return _then(_$_SliderState(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_SliderState extends _SliderState {
  const _$_SliderState({this.currentPage}) : super._();

  @override
  final double? currentPage;

  @override
  String toString() {
    return 'SliderState(currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliderState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SliderStateCopyWith<_$_SliderState> get copyWith =>
      __$$_SliderStateCopyWithImpl<_$_SliderState>(this, _$identity);
}

abstract class _SliderState extends SliderState {
  const factory _SliderState({final double? currentPage}) = _$_SliderState;
  const _SliderState._() : super._();

  @override
  double? get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_SliderStateCopyWith<_$_SliderState> get copyWith =>
      throw _privateConstructorUsedError;
}
