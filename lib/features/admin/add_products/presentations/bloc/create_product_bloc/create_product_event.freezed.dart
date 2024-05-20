// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateProductRequestBody body)
        createNewProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateProductRequestBody body)? createNewProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateProductRequestBody body)? createNewProductEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(createNewProductEvent value)
        createNewProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(createNewProductEvent value)? createNewProductEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(createNewProductEvent value)? createNewProductEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductEventCopyWith<$Res> {
  factory $CreateProductEventCopyWith(
          CreateProductEvent value, $Res Function(CreateProductEvent) then) =
      _$CreateProductEventCopyWithImpl<$Res, CreateProductEvent>;
}

/// @nodoc
class _$CreateProductEventCopyWithImpl<$Res, $Val extends CreateProductEvent>
    implements $CreateProductEventCopyWith<$Res> {
  _$CreateProductEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateProductEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateProductEvent.started()';
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
    required TResult Function(CreateProductRequestBody body)
        createNewProductEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateProductRequestBody body)? createNewProductEvent,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateProductRequestBody body)? createNewProductEvent,
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
    required TResult Function(createNewProductEvent value)
        createNewProductEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(createNewProductEvent value)? createNewProductEvent,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(createNewProductEvent value)? createNewProductEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$createNewProductEventImplCopyWith<$Res> {
  factory _$$createNewProductEventImplCopyWith(
          _$createNewProductEventImpl value,
          $Res Function(_$createNewProductEventImpl) then) =
      __$$createNewProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateProductRequestBody body});
}

/// @nodoc
class __$$createNewProductEventImplCopyWithImpl<$Res>
    extends _$CreateProductEventCopyWithImpl<$Res, _$createNewProductEventImpl>
    implements _$$createNewProductEventImplCopyWith<$Res> {
  __$$createNewProductEventImplCopyWithImpl(_$createNewProductEventImpl _value,
      $Res Function(_$createNewProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = null,
  }) {
    return _then(_$createNewProductEventImpl(
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as CreateProductRequestBody,
    ));
  }
}

/// @nodoc

class _$createNewProductEventImpl implements createNewProductEvent {
  const _$createNewProductEventImpl({required this.body});

  @override
  final CreateProductRequestBody body;

  @override
  String toString() {
    return 'CreateProductEvent.createNewProductEvent(body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createNewProductEventImpl &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$createNewProductEventImplCopyWith<_$createNewProductEventImpl>
      get copyWith => __$$createNewProductEventImplCopyWithImpl<
          _$createNewProductEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(CreateProductRequestBody body)
        createNewProductEvent,
  }) {
    return createNewProductEvent(body);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(CreateProductRequestBody body)? createNewProductEvent,
  }) {
    return createNewProductEvent?.call(body);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(CreateProductRequestBody body)? createNewProductEvent,
    required TResult orElse(),
  }) {
    if (createNewProductEvent != null) {
      return createNewProductEvent(body);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(createNewProductEvent value)
        createNewProductEvent,
  }) {
    return createNewProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(createNewProductEvent value)? createNewProductEvent,
  }) {
    return createNewProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(createNewProductEvent value)? createNewProductEvent,
    required TResult orElse(),
  }) {
    if (createNewProductEvent != null) {
      return createNewProductEvent(this);
    }
    return orElse();
  }
}

abstract class createNewProductEvent implements CreateProductEvent {
  const factory createNewProductEvent(
          {required final CreateProductRequestBody body}) =
      _$createNewProductEventImpl;

  CreateProductRequestBody get body;
  @JsonKey(ignore: true)
  _$$createNewProductEventImplCopyWith<_$createNewProductEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
