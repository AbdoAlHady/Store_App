// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeModeState,
    required TResult Function(Locale locale) changeAppLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeModeState,
    TResult? Function(Locale locale)? changeAppLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeModeState,
    TResult Function(Locale locale)? changeAppLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeThemeModeState value) changeThemeModeState,
    required TResult Function(ChangeAppLanguageState value) changeAppLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult? Function(ChangeAppLanguageState value)? changeAppLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult Function(ChangeAppLanguageState value)? changeAppLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeModeState,
    required TResult Function(Locale locale) changeAppLanguage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeModeState,
    TResult? Function(Locale locale)? changeAppLanguage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeModeState,
    TResult Function(Locale locale)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeThemeModeState value) changeThemeModeState,
    required TResult Function(ChangeAppLanguageState value) changeAppLanguage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult? Function(ChangeAppLanguageState value)? changeAppLanguage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult Function(ChangeAppLanguageState value)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChangeThemeModeStateImplCopyWith<$Res> {
  factory _$$ChangeThemeModeStateImplCopyWith(_$ChangeThemeModeStateImpl value,
          $Res Function(_$ChangeThemeModeStateImpl) then) =
      __$$ChangeThemeModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ChangeThemeModeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ChangeThemeModeStateImpl>
    implements _$$ChangeThemeModeStateImplCopyWith<$Res> {
  __$$ChangeThemeModeStateImplCopyWithImpl(_$ChangeThemeModeStateImpl _value,
      $Res Function(_$ChangeThemeModeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ChangeThemeModeStateImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeThemeModeStateImpl implements ChangeThemeModeState {
  const _$ChangeThemeModeStateImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState.changeThemeModeState(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeModeStateImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeModeStateImplCopyWith<_$ChangeThemeModeStateImpl>
      get copyWith =>
          __$$ChangeThemeModeStateImplCopyWithImpl<_$ChangeThemeModeStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeModeState,
    required TResult Function(Locale locale) changeAppLanguage,
  }) {
    return changeThemeModeState(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeModeState,
    TResult? Function(Locale locale)? changeAppLanguage,
  }) {
    return changeThemeModeState?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeModeState,
    TResult Function(Locale locale)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeModeState != null) {
      return changeThemeModeState(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeThemeModeState value) changeThemeModeState,
    required TResult Function(ChangeAppLanguageState value) changeAppLanguage,
  }) {
    return changeThemeModeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult? Function(ChangeAppLanguageState value)? changeAppLanguage,
  }) {
    return changeThemeModeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult Function(ChangeAppLanguageState value)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeModeState != null) {
      return changeThemeModeState(this);
    }
    return orElse();
  }
}

abstract class ChangeThemeModeState implements AppState {
  const factory ChangeThemeModeState({required final bool isDark}) =
      _$ChangeThemeModeStateImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$ChangeThemeModeStateImplCopyWith<_$ChangeThemeModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAppLanguageStateImplCopyWith<$Res> {
  factory _$$ChangeAppLanguageStateImplCopyWith(
          _$ChangeAppLanguageStateImpl value,
          $Res Function(_$ChangeAppLanguageStateImpl) then) =
      __$$ChangeAppLanguageStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeAppLanguageStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ChangeAppLanguageStateImpl>
    implements _$$ChangeAppLanguageStateImplCopyWith<$Res> {
  __$$ChangeAppLanguageStateImplCopyWithImpl(
      _$ChangeAppLanguageStateImpl _value,
      $Res Function(_$ChangeAppLanguageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeAppLanguageStateImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeAppLanguageStateImpl implements ChangeAppLanguageState {
  const _$ChangeAppLanguageStateImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppState.changeAppLanguage(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppLanguageStateImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAppLanguageStateImplCopyWith<_$ChangeAppLanguageStateImpl>
      get copyWith => __$$ChangeAppLanguageStateImplCopyWithImpl<
          _$ChangeAppLanguageStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) changeThemeModeState,
    required TResult Function(Locale locale) changeAppLanguage,
  }) {
    return changeAppLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? changeThemeModeState,
    TResult? Function(Locale locale)? changeAppLanguage,
  }) {
    return changeAppLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? changeThemeModeState,
    TResult Function(Locale locale)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (changeAppLanguage != null) {
      return changeAppLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChangeThemeModeState value) changeThemeModeState,
    required TResult Function(ChangeAppLanguageState value) changeAppLanguage,
  }) {
    return changeAppLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult? Function(ChangeAppLanguageState value)? changeAppLanguage,
  }) {
    return changeAppLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChangeThemeModeState value)? changeThemeModeState,
    TResult Function(ChangeAppLanguageState value)? changeAppLanguage,
    required TResult orElse(),
  }) {
    if (changeAppLanguage != null) {
      return changeAppLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeAppLanguageState implements AppState {
  const factory ChangeAppLanguageState({required final Locale locale}) =
      _$ChangeAppLanguageStateImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$ChangeAppLanguageStateImplCopyWith<_$ChangeAppLanguageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
