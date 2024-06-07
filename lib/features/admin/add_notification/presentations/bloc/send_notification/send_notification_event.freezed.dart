// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SendNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int index, String title, String body, int productId)
        sendNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String title, String body, int productId)?
        sendNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String title, String body, int productId)?
        sendNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendNewNotificationEvent value) sendNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNotificationEventCopyWith<$Res> {
  factory $SendNotificationEventCopyWith(SendNotificationEvent value,
          $Res Function(SendNotificationEvent) then) =
      _$SendNotificationEventCopyWithImpl<$Res, SendNotificationEvent>;
}

/// @nodoc
class _$SendNotificationEventCopyWithImpl<$Res,
        $Val extends SendNotificationEvent>
    implements $SendNotificationEventCopyWith<$Res> {
  _$SendNotificationEventCopyWithImpl(this._value, this._then);

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
    extends _$SendNotificationEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SendNotificationEvent.started()';
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
    required TResult Function(
            int index, String title, String body, int productId)
        sendNotification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String title, String body, int productId)?
        sendNotification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String title, String body, int productId)?
        sendNotification,
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
    required TResult Function(SendNewNotificationEvent value) sendNotification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SendNotificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendNewNotificationEventImplCopyWith<$Res> {
  factory _$$SendNewNotificationEventImplCopyWith(
          _$SendNewNotificationEventImpl value,
          $Res Function(_$SendNewNotificationEventImpl) then) =
      __$$SendNewNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, String title, String body, int productId});
}

/// @nodoc
class __$$SendNewNotificationEventImplCopyWithImpl<$Res>
    extends _$SendNotificationEventCopyWithImpl<$Res,
        _$SendNewNotificationEventImpl>
    implements _$$SendNewNotificationEventImplCopyWith<$Res> {
  __$$SendNewNotificationEventImplCopyWithImpl(
      _$SendNewNotificationEventImpl _value,
      $Res Function(_$SendNewNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? title = null,
    Object? body = null,
    Object? productId = null,
  }) {
    return _then(_$SendNewNotificationEventImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SendNewNotificationEventImpl implements SendNewNotificationEvent {
  const _$SendNewNotificationEventImpl(
      {required this.index,
      required this.title,
      required this.body,
      required this.productId});

  @override
  final int index;
  @override
  final String title;
  @override
  final String body;
  @override
  final int productId;

  @override
  String toString() {
    return 'SendNotificationEvent.sendNotification(index: $index, title: $title, body: $body, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewNotificationEventImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, title, body, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewNotificationEventImplCopyWith<_$SendNewNotificationEventImpl>
      get copyWith => __$$SendNewNotificationEventImplCopyWithImpl<
          _$SendNewNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            int index, String title, String body, int productId)
        sendNotification,
  }) {
    return sendNotification(index, title, body, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index, String title, String body, int productId)?
        sendNotification,
  }) {
    return sendNotification?.call(index, title, body, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index, String title, String body, int productId)?
        sendNotification,
    required TResult orElse(),
  }) {
    if (sendNotification != null) {
      return sendNotification(index, title, body, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SendNewNotificationEvent value) sendNotification,
  }) {
    return sendNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(SendNewNotificationEvent value)? sendNotification,
  }) {
    return sendNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SendNewNotificationEvent value)? sendNotification,
    required TResult orElse(),
  }) {
    if (sendNotification != null) {
      return sendNotification(this);
    }
    return orElse();
  }
}

abstract class SendNewNotificationEvent implements SendNotificationEvent {
  const factory SendNewNotificationEvent(
      {required final int index,
      required final String title,
      required final String body,
      required final int productId}) = _$SendNewNotificationEventImpl;

  int get index;
  String get title;
  String get body;
  int get productId;
  @JsonKey(ignore: true)
  _$$SendNewNotificationEventImplCopyWith<_$SendNewNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
