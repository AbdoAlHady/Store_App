// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GetAllProductsModel> productLis) success,
    required TResult Function() empty,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GetAllProductsModel> productLis)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GetAllProductsModel> productLis)? success,
    TResult Function()? empty,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaodingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaodingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaodingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductsStateCopyWith<$Res> {
  factory $CategoryProductsStateCopyWith(CategoryProductsState value,
          $Res Function(CategoryProductsState) then) =
      _$CategoryProductsStateCopyWithImpl<$Res, CategoryProductsState>;
}

/// @nodoc
class _$CategoryProductsStateCopyWithImpl<$Res,
        $Val extends CategoryProductsState>
    implements $CategoryProductsStateCopyWith<$Res> {
  _$CategoryProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LaodingStateImplCopyWith<$Res> {
  factory _$$LaodingStateImplCopyWith(
          _$LaodingStateImpl value, $Res Function(_$LaodingStateImpl) then) =
      __$$LaodingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaodingStateImplCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res, _$LaodingStateImpl>
    implements _$$LaodingStateImplCopyWith<$Res> {
  __$$LaodingStateImplCopyWithImpl(
      _$LaodingStateImpl _value, $Res Function(_$LaodingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LaodingStateImpl implements LaodingState {
  const _$LaodingStateImpl();

  @override
  String toString() {
    return 'CategoryProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LaodingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GetAllProductsModel> productLis) success,
    required TResult Function() empty,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GetAllProductsModel> productLis)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GetAllProductsModel> productLis)? success,
    TResult Function()? empty,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaodingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaodingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaodingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LaodingState implements CategoryProductsState {
  const factory LaodingState() = _$LaodingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetAllProductsModel> productLis});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productLis = null,
  }) {
    return _then(_$SuccessStateImpl(
      productLis: null == productLis
          ? _value._productLis
          : productLis // ignore: cast_nullable_to_non_nullable
              as List<GetAllProductsModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl(
      {required final List<GetAllProductsModel> productLis})
      : _productLis = productLis;

  final List<GetAllProductsModel> _productLis;
  @override
  List<GetAllProductsModel> get productLis {
    if (_productLis is EqualUnmodifiableListView) return _productLis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productLis);
  }

  @override
  String toString() {
    return 'CategoryProductsState.success(productLis: $productLis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productLis, _productLis));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productLis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GetAllProductsModel> productLis) success,
    required TResult Function() empty,
    required TResult Function(String error) failure,
  }) {
    return success(productLis);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GetAllProductsModel> productLis)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(productLis);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GetAllProductsModel> productLis)? success,
    TResult Function()? empty,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(productLis);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaodingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(FailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaodingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(FailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaodingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements CategoryProductsState {
  const factory SuccessState(
          {required final List<GetAllProductsModel> productLis}) =
      _$SuccessStateImpl;

  List<GetAllProductsModel> get productLis;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyStateImplCopyWith<$Res> {
  factory _$$EmptyStateImplCopyWith(
          _$EmptyStateImpl value, $Res Function(_$EmptyStateImpl) then) =
      __$$EmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyStateImplCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res, _$EmptyStateImpl>
    implements _$$EmptyStateImplCopyWith<$Res> {
  __$$EmptyStateImplCopyWithImpl(
      _$EmptyStateImpl _value, $Res Function(_$EmptyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyStateImpl implements EmptyState {
  const _$EmptyStateImpl();

  @override
  String toString() {
    return 'CategoryProductsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GetAllProductsModel> productLis) success,
    required TResult Function() empty,
    required TResult Function(String error) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GetAllProductsModel> productLis)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GetAllProductsModel> productLis)? success,
    TResult Function()? empty,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaodingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(FailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaodingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(FailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaodingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState implements CategoryProductsState {
  const factory EmptyState() = _$EmptyStateImpl;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$CategoryProductsStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl implements FailureState {
  const _$FailureStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryProductsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<GetAllProductsModel> productLis) success,
    required TResult Function() empty,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<GetAllProductsModel> productLis)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<GetAllProductsModel> productLis)? success,
    TResult Function()? empty,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LaodingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaodingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaodingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureState implements CategoryProductsState {
  const factory FailureState({required final String error}) =
      _$FailureStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
