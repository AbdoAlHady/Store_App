// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddNotificationModel addNotificationModel)
        createNewNotification,
    required TResult Function(AddNotificationModel addNotificationModel)
        deleteNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult? Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CreateNewNotification value)
        createNewNotification,
    required TResult Function(DeleteNotification value) deleteNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CreateNewNotification value)? createNewNotification,
    TResult? Function(DeleteNotification value)? deleteNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CreateNewNotification value)? createNewNotification,
    TResult Function(DeleteNotification value)? deleteNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationEventCopyWith<$Res> {
  factory $CreateNotificationEventCopyWith(CreateNotificationEvent value,
          $Res Function(CreateNotificationEvent) then) =
      _$CreateNotificationEventCopyWithImpl<$Res, CreateNotificationEvent>;
}

/// @nodoc
class _$CreateNotificationEventCopyWithImpl<$Res,
        $Val extends CreateNotificationEvent>
    implements $CreateNotificationEventCopyWith<$Res> {
  _$CreateNotificationEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateNotificationEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateNotificationEvent.started()';
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
    required TResult Function(AddNotificationModel addNotificationModel)
        createNewNotification,
    required TResult Function(AddNotificationModel addNotificationModel)
        deleteNotification,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult? Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
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
    required TResult Function(CreateNewNotification value)
        createNewNotification,
    required TResult Function(DeleteNotification value) deleteNotification,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CreateNewNotification value)? createNewNotification,
    TResult? Function(DeleteNotification value)? deleteNotification,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CreateNewNotification value)? createNewNotification,
    TResult Function(DeleteNotification value)? deleteNotification,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateNotificationEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateNewNotificationImplCopyWith<$Res> {
  factory _$$CreateNewNotificationImplCopyWith(
          _$CreateNewNotificationImpl value,
          $Res Function(_$CreateNewNotificationImpl) then) =
      __$$CreateNewNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNotificationModel addNotificationModel});
}

/// @nodoc
class __$$CreateNewNotificationImplCopyWithImpl<$Res>
    extends _$CreateNotificationEventCopyWithImpl<$Res,
        _$CreateNewNotificationImpl>
    implements _$$CreateNewNotificationImplCopyWith<$Res> {
  __$$CreateNewNotificationImplCopyWithImpl(_$CreateNewNotificationImpl _value,
      $Res Function(_$CreateNewNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addNotificationModel = null,
  }) {
    return _then(_$CreateNewNotificationImpl(
      null == addNotificationModel
          ? _value.addNotificationModel
          : addNotificationModel // ignore: cast_nullable_to_non_nullable
              as AddNotificationModel,
    ));
  }
}

/// @nodoc

class _$CreateNewNotificationImpl implements CreateNewNotification {
  const _$CreateNewNotificationImpl(this.addNotificationModel);

  @override
  final AddNotificationModel addNotificationModel;

  @override
  String toString() {
    return 'CreateNotificationEvent.createNewNotification(addNotificationModel: $addNotificationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNewNotificationImpl &&
            (identical(other.addNotificationModel, addNotificationModel) ||
                other.addNotificationModel == addNotificationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addNotificationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNewNotificationImplCopyWith<_$CreateNewNotificationImpl>
      get copyWith => __$$CreateNewNotificationImplCopyWithImpl<
          _$CreateNewNotificationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddNotificationModel addNotificationModel)
        createNewNotification,
    required TResult Function(AddNotificationModel addNotificationModel)
        deleteNotification,
  }) {
    return createNewNotification(addNotificationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult? Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
  }) {
    return createNewNotification?.call(addNotificationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
    required TResult orElse(),
  }) {
    if (createNewNotification != null) {
      return createNewNotification(addNotificationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CreateNewNotification value)
        createNewNotification,
    required TResult Function(DeleteNotification value) deleteNotification,
  }) {
    return createNewNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CreateNewNotification value)? createNewNotification,
    TResult? Function(DeleteNotification value)? deleteNotification,
  }) {
    return createNewNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CreateNewNotification value)? createNewNotification,
    TResult Function(DeleteNotification value)? deleteNotification,
    required TResult orElse(),
  }) {
    if (createNewNotification != null) {
      return createNewNotification(this);
    }
    return orElse();
  }
}

abstract class CreateNewNotification implements CreateNotificationEvent {
  const factory CreateNewNotification(
          final AddNotificationModel addNotificationModel) =
      _$CreateNewNotificationImpl;

  AddNotificationModel get addNotificationModel;
  @JsonKey(ignore: true)
  _$$CreateNewNotificationImplCopyWith<_$CreateNewNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotificationImplCopyWith<$Res> {
  factory _$$DeleteNotificationImplCopyWith(_$DeleteNotificationImpl value,
          $Res Function(_$DeleteNotificationImpl) then) =
      __$$DeleteNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNotificationModel addNotificationModel});
}

/// @nodoc
class __$$DeleteNotificationImplCopyWithImpl<$Res>
    extends _$CreateNotificationEventCopyWithImpl<$Res,
        _$DeleteNotificationImpl>
    implements _$$DeleteNotificationImplCopyWith<$Res> {
  __$$DeleteNotificationImplCopyWithImpl(_$DeleteNotificationImpl _value,
      $Res Function(_$DeleteNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addNotificationModel = null,
  }) {
    return _then(_$DeleteNotificationImpl(
      null == addNotificationModel
          ? _value.addNotificationModel
          : addNotificationModel // ignore: cast_nullable_to_non_nullable
              as AddNotificationModel,
    ));
  }
}

/// @nodoc

class _$DeleteNotificationImpl implements DeleteNotification {
  const _$DeleteNotificationImpl(this.addNotificationModel);

  @override
  final AddNotificationModel addNotificationModel;

  @override
  String toString() {
    return 'CreateNotificationEvent.deleteNotification(addNotificationModel: $addNotificationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationImpl &&
            (identical(other.addNotificationModel, addNotificationModel) ||
                other.addNotificationModel == addNotificationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addNotificationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      __$$DeleteNotificationImplCopyWithImpl<_$DeleteNotificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(AddNotificationModel addNotificationModel)
        createNewNotification,
    required TResult Function(AddNotificationModel addNotificationModel)
        deleteNotification,
  }) {
    return deleteNotification(addNotificationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult? Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
  }) {
    return deleteNotification?.call(addNotificationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(AddNotificationModel addNotificationModel)?
        createNewNotification,
    TResult Function(AddNotificationModel addNotificationModel)?
        deleteNotification,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(addNotificationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CreateNewNotification value)
        createNewNotification,
    required TResult Function(DeleteNotification value) deleteNotification,
  }) {
    return deleteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CreateNewNotification value)? createNewNotification,
    TResult? Function(DeleteNotification value)? deleteNotification,
  }) {
    return deleteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CreateNewNotification value)? createNewNotification,
    TResult Function(DeleteNotification value)? deleteNotification,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(this);
    }
    return orElse();
  }
}

abstract class DeleteNotification implements CreateNotificationEvent {
  const factory DeleteNotification(
          final AddNotificationModel addNotificationModel) =
      _$DeleteNotificationImpl;

  AddNotificationModel get addNotificationModel;
  @JsonKey(ignore: true)
  _$$DeleteNotificationImplCopyWith<_$DeleteNotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
