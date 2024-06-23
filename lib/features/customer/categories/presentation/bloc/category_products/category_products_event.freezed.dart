// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryid) getCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryid)? getCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryid)? getCategoryProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoryProductsEvent value)
        getCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoryProductsEvent value)? getCategoryProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoryProductsEvent value)? getCategoryProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductsEventCopyWith<$Res> {
  factory $CategoryProductsEventCopyWith(CategoryProductsEvent value,
          $Res Function(CategoryProductsEvent) then) =
      _$CategoryProductsEventCopyWithImpl<$Res, CategoryProductsEvent>;
}

/// @nodoc
class _$CategoryProductsEventCopyWithImpl<$Res,
        $Val extends CategoryProductsEvent>
    implements $CategoryProductsEventCopyWith<$Res> {
  _$CategoryProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CategoryProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CategoryProductsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryid) getCategoryProducts,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryid)? getCategoryProducts,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryid)? getCategoryProducts,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoryProductsEvent value)
        getCategoryProducts,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoryProductsEvent value)? getCategoryProducts,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoryProductsEvent value)? getCategoryProducts,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCategoryProductsEventImplCopyWith<$Res> {
  factory _$$GetCategoryProductsEventImplCopyWith(
          _$GetCategoryProductsEventImpl value,
          $Res Function(_$GetCategoryProductsEventImpl) then) =
      __$$GetCategoryProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryid});
}

/// @nodoc
class __$$GetCategoryProductsEventImplCopyWithImpl<$Res>
    extends _$CategoryProductsEventCopyWithImpl<$Res,
        _$GetCategoryProductsEventImpl>
    implements _$$GetCategoryProductsEventImplCopyWith<$Res> {
  __$$GetCategoryProductsEventImplCopyWithImpl(
      _$GetCategoryProductsEventImpl _value,
      $Res Function(_$GetCategoryProductsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryid = null,
  }) {
    return _then(_$GetCategoryProductsEventImpl(
      null == categoryid
          ? _value.categoryid
          : categoryid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCategoryProductsEventImpl implements GetCategoryProductsEvent {
  const _$GetCategoryProductsEventImpl(this.categoryid);

  @override
  final int categoryid;

  @override
  String toString() {
    return 'CategoryProductsEvent.getCategoryProducts(categoryid: $categoryid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryProductsEventImpl &&
            (identical(other.categoryid, categoryid) ||
                other.categoryid == categoryid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryProductsEventImplCopyWith<_$GetCategoryProductsEventImpl>
      get copyWith => __$$GetCategoryProductsEventImplCopyWithImpl<
          _$GetCategoryProductsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryid) getCategoryProducts,
  }) {
    return getCategoryProducts(categoryid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryid)? getCategoryProducts,
  }) {
    return getCategoryProducts?.call(categoryid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryid)? getCategoryProducts,
    required TResult orElse(),
  }) {
    if (getCategoryProducts != null) {
      return getCategoryProducts(categoryid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetCategoryProductsEvent value)
        getCategoryProducts,
  }) {
    return getCategoryProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetCategoryProductsEvent value)? getCategoryProducts,
  }) {
    return getCategoryProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetCategoryProductsEvent value)? getCategoryProducts,
    required TResult orElse(),
  }) {
    if (getCategoryProducts != null) {
      return getCategoryProducts(this);
    }
    return orElse();
  }
}

abstract class GetCategoryProductsEvent implements CategoryProductsEvent {
  const factory GetCategoryProductsEvent(final int categoryid) =
      _$GetCategoryProductsEventImpl;

  int get categoryid;
  @JsonKey(ignore: true)
  _$$GetCategoryProductsEventImplCopyWith<_$GetCategoryProductsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
