// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function() addNoteButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateTime)? dateTimeChanged,
    TResult? Function()? addNoteButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function()? addNoteButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AddNoteButtonPressed value) addNoteButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateTimeChanged value)? dateTimeChanged,
    TResult? Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res, NoteFormEvent>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res, $Val extends NoteFormEvent>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String titleStr});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleStr = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == titleStr
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'NoteFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.titleStr, titleStr) ||
                other.titleStr == titleStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleStr);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function() addNoteButtonPressed,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateTime)? dateTimeChanged,
    TResult? Function()? addNoteButtonPressed,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function()? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AddNoteButtonPressed value) addNoteButtonPressed,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateTimeChanged value)? dateTimeChanged,
    TResult? Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements NoteFormEvent {
  const factory _TitleChanged(final String titleStr) = _$TitleChangedImpl;

  String get titleStr;

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'NoteFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function() addNoteButtonPressed,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateTime)? dateTimeChanged,
    TResult? Function()? addNoteButtonPressed,
  }) {
    return descriptionChanged?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function()? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AddNoteButtonPressed value) addNoteButtonPressed,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateTimeChanged value)? dateTimeChanged,
    TResult? Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements NoteFormEvent {
  const factory _DescriptionChanged(final String descriptionStr) =
      _$DescriptionChangedImpl;

  String get descriptionStr;

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateTimeChangedImplCopyWith<$Res> {
  factory _$$DateTimeChangedImplCopyWith(_$DateTimeChangedImpl value,
          $Res Function(_$DateTimeChangedImpl) then) =
      __$$DateTimeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$DateTimeChangedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$DateTimeChangedImpl>
    implements _$$DateTimeChangedImplCopyWith<$Res> {
  __$$DateTimeChangedImplCopyWithImpl(
      _$DateTimeChangedImpl _value, $Res Function(_$DateTimeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$DateTimeChangedImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTimeChangedImpl implements _DateTimeChanged {
  const _$DateTimeChangedImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'NoteFormEvent.dateTimeChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeChangedImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeChangedImplCopyWith<_$DateTimeChangedImpl> get copyWith =>
      __$$DateTimeChangedImplCopyWithImpl<_$DateTimeChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function() addNoteButtonPressed,
  }) {
    return dateTimeChanged(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateTime)? dateTimeChanged,
    TResult? Function()? addNoteButtonPressed,
  }) {
    return dateTimeChanged?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function()? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (dateTimeChanged != null) {
      return dateTimeChanged(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AddNoteButtonPressed value) addNoteButtonPressed,
  }) {
    return dateTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateTimeChanged value)? dateTimeChanged,
    TResult? Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
  }) {
    return dateTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (dateTimeChanged != null) {
      return dateTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateTimeChanged implements NoteFormEvent {
  const factory _DateTimeChanged(final DateTime dateTime) =
      _$DateTimeChangedImpl;

  DateTime get dateTime;

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimeChangedImplCopyWith<_$DateTimeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNoteButtonPressedImplCopyWith<$Res> {
  factory _$$AddNoteButtonPressedImplCopyWith(_$AddNoteButtonPressedImpl value,
          $Res Function(_$AddNoteButtonPressedImpl) then) =
      __$$AddNoteButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddNoteButtonPressedImplCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res, _$AddNoteButtonPressedImpl>
    implements _$$AddNoteButtonPressedImplCopyWith<$Res> {
  __$$AddNoteButtonPressedImplCopyWithImpl(_$AddNoteButtonPressedImpl _value,
      $Res Function(_$AddNoteButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddNoteButtonPressedImpl implements _AddNoteButtonPressed {
  const _$AddNoteButtonPressedImpl();

  @override
  String toString() {
    return 'NoteFormEvent.addNoteButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(DateTime dateTime) dateTimeChanged,
    required TResult Function() addNoteButtonPressed,
  }) {
    return addNoteButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String titleStr)? titleChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(DateTime dateTime)? dateTimeChanged,
    TResult? Function()? addNoteButtonPressed,
  }) {
    return addNoteButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(DateTime dateTime)? dateTimeChanged,
    TResult Function()? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (addNoteButtonPressed != null) {
      return addNoteButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_DateTimeChanged value) dateTimeChanged,
    required TResult Function(_AddNoteButtonPressed value) addNoteButtonPressed,
  }) {
    return addNoteButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_DateTimeChanged value)? dateTimeChanged,
    TResult? Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
  }) {
    return addNoteButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_DateTimeChanged value)? dateTimeChanged,
    TResult Function(_AddNoteButtonPressed value)? addNoteButtonPressed,
    required TResult orElse(),
  }) {
    if (addNoteButtonPressed != null) {
      return addNoteButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddNoteButtonPressed implements NoteFormEvent {
  const factory _AddNoteButtonPressed() = _$AddNoteButtonPressedImpl;
}

/// @nodoc
mixin _$NoteFormState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  NoteModel get noteFormParams => throw _privateConstructorUsedError;
  Option<Either<NetworkExceptions, String>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res, NoteFormState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      NoteModel noteFormParams,
      Option<Either<NetworkExceptions, String>> failureOrSuccessOption});

  $NoteModelCopyWith<$Res> get noteFormParams;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res, $Val extends NoteFormState>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? noteFormParams = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFormParams: null == noteFormParams
          ? _value.noteFormParams
          : noteFormParams // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkExceptions, String>>,
    ) as $Val);
  }

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res> get noteFormParams {
    return $NoteModelCopyWith<$Res>(_value.noteFormParams, (value) {
      return _then(_value.copyWith(noteFormParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteFormStateImplCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$$NoteFormStateImplCopyWith(
          _$NoteFormStateImpl value, $Res Function(_$NoteFormStateImpl) then) =
      __$$NoteFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      NoteModel noteFormParams,
      Option<Either<NetworkExceptions, String>> failureOrSuccessOption});

  @override
  $NoteModelCopyWith<$Res> get noteFormParams;
}

/// @nodoc
class __$$NoteFormStateImplCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res, _$NoteFormStateImpl>
    implements _$$NoteFormStateImplCopyWith<$Res> {
  __$$NoteFormStateImplCopyWithImpl(
      _$NoteFormStateImpl _value, $Res Function(_$NoteFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? noteFormParams = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$NoteFormStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noteFormParams: null == noteFormParams
          ? _value.noteFormParams
          : noteFormParams // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NetworkExceptions, String>>,
    ));
  }
}

/// @nodoc

class _$NoteFormStateImpl implements _NoteFormState {
  const _$NoteFormStateImpl(
      {required this.isSubmitting,
      required this.noteFormParams,
      required this.failureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final NoteModel noteFormParams;
  @override
  final Option<Either<NetworkExceptions, String>> failureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(isSubmitting: $isSubmitting, noteFormParams: $noteFormParams, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFormStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.noteFormParams, noteFormParams) ||
                other.noteFormParams == noteFormParams) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSubmitting, noteFormParams, failureOrSuccessOption);

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      __$$NoteFormStateImplCopyWithImpl<_$NoteFormStateImpl>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required final bool isSubmitting,
      required final NoteModel noteFormParams,
      required final Option<Either<NetworkExceptions, String>>
          failureOrSuccessOption}) = _$NoteFormStateImpl;

  @override
  bool get isSubmitting;
  @override
  NoteModel get noteFormParams;
  @override
  Option<Either<NetworkExceptions, String>> get failureOrSuccessOption;

  /// Create a copy of NoteFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteFormStateImplCopyWith<_$NoteFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
