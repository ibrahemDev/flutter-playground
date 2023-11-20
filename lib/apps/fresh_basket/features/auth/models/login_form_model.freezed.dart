// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormModel {
  EmailFormzModel get email => throw _privateConstructorUsedError;
  PasswordFormzModel get password => throw _privateConstructorUsedError;
  FormzSubmissionStatus get submissionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormModelCopyWith<LoginFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormModelCopyWith<$Res> {
  factory $LoginFormModelCopyWith(
          LoginFormModel value, $Res Function(LoginFormModel) then) =
      _$LoginFormModelCopyWithImpl<$Res, LoginFormModel>;
  @useResult
  $Res call(
      {EmailFormzModel email,
      PasswordFormzModel password,
      FormzSubmissionStatus submissionStatus});
}

/// @nodoc
class _$LoginFormModelCopyWithImpl<$Res, $Val extends LoginFormModel>
    implements $LoginFormModelCopyWith<$Res> {
  _$LoginFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submissionStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormzModel,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormzModel,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormModelImplCopyWith<$Res>
    implements $LoginFormModelCopyWith<$Res> {
  factory _$$LoginFormModelImplCopyWith(_$LoginFormModelImpl value,
          $Res Function(_$LoginFormModelImpl) then) =
      __$$LoginFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailFormzModel email,
      PasswordFormzModel password,
      FormzSubmissionStatus submissionStatus});
}

/// @nodoc
class __$$LoginFormModelImplCopyWithImpl<$Res>
    extends _$LoginFormModelCopyWithImpl<$Res, _$LoginFormModelImpl>
    implements _$$LoginFormModelImplCopyWith<$Res> {
  __$$LoginFormModelImplCopyWithImpl(
      _$LoginFormModelImpl _value, $Res Function(_$LoginFormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submissionStatus = null,
  }) {
    return _then(_$LoginFormModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormzModel,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordFormzModel,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$LoginFormModelImpl extends _LoginFormModel {
  const _$LoginFormModelImpl(
      {this.email = const EmailFormzModel.pure(),
      this.password = const PasswordFormzModel.pure(),
      this.submissionStatus = FormzSubmissionStatus.initial})
      : super._();

  @override
  @JsonKey()
  final EmailFormzModel email;
  @override
  @JsonKey()
  final PasswordFormzModel password;
  @override
  @JsonKey()
  final FormzSubmissionStatus submissionStatus;

  @override
  String toString() {
    return 'LoginFormModel(email: $email, password: $password, submissionStatus: $submissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, submissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormModelImplCopyWith<_$LoginFormModelImpl> get copyWith =>
      __$$LoginFormModelImplCopyWithImpl<_$LoginFormModelImpl>(
          this, _$identity);
}

abstract class _LoginFormModel extends LoginFormModel {
  const factory _LoginFormModel(
      {final EmailFormzModel email,
      final PasswordFormzModel password,
      final FormzSubmissionStatus submissionStatus}) = _$LoginFormModelImpl;
  const _LoginFormModel._() : super._();

  @override
  EmailFormzModel get email;
  @override
  PasswordFormzModel get password;
  @override
  FormzSubmissionStatus get submissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormModelImplCopyWith<_$LoginFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
