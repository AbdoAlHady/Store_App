// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banners_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllBannersEvent value) getAllBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllBannersEvent value)? getAllBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllBannersEvent value)? getAllBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersEventCopyWith<$Res> {
  factory $BannersEventCopyWith(
          BannersEvent value, $Res Function(BannersEvent) then) =
      _$BannersEventCopyWithImpl<$Res, BannersEvent>;
}

/// @nodoc
class _$BannersEventCopyWithImpl<$Res, $Val extends BannersEvent>
    implements $BannersEventCopyWith<$Res> {
  _$BannersEventCopyWithImpl(this._value, this._then);

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
    extends _$BannersEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'BannersEvent.started()';
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
    required TResult Function() getAllBanners,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllBanners,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllBanners,
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
    required TResult Function(GetAllBannersEvent value) getAllBanners,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllBannersEvent value)? getAllBanners,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllBannersEvent value)? getAllBanners,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BannersEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllBannersEventImplCopyWith<$Res> {
  factory _$$GetAllBannersEventImplCopyWith(_$GetAllBannersEventImpl value,
          $Res Function(_$GetAllBannersEventImpl) then) =
      __$$GetAllBannersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllBannersEventImplCopyWithImpl<$Res>
    extends _$BannersEventCopyWithImpl<$Res, _$GetAllBannersEventImpl>
    implements _$$GetAllBannersEventImplCopyWith<$Res> {
  __$$GetAllBannersEventImplCopyWithImpl(_$GetAllBannersEventImpl _value,
      $Res Function(_$GetAllBannersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllBannersEventImpl implements GetAllBannersEvent {
  const _$GetAllBannersEventImpl();

  @override
  String toString() {
    return 'BannersEvent.getAllBanners()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllBannersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllBanners,
  }) {
    return getAllBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllBanners,
  }) {
    return getAllBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllBanners,
    required TResult orElse(),
  }) {
    if (getAllBanners != null) {
      return getAllBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetAllBannersEvent value) getAllBanners,
  }) {
    return getAllBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetAllBannersEvent value)? getAllBanners,
  }) {
    return getAllBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetAllBannersEvent value)? getAllBanners,
    required TResult orElse(),
  }) {
    if (getAllBanners != null) {
      return getAllBanners(this);
    }
    return orElse();
  }
}

abstract class GetAllBannersEvent implements BannersEvent {
  const factory GetAllBannersEvent() = _$GetAllBannersEventImpl;
}
