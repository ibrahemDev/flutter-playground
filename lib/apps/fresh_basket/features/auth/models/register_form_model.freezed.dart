// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterFormModel {
  EmailFormzModel get email => throw _privateConstructorUsedError;
  FirstNameFormzModel get firstName => throw _privateConstructorUsedError;
  LastNameFormzModel get lastName => throw _privateConstructorUsedError;
  PasswordFormzModel get password => throw _privateConstructorUsedError;
  FormzSubmissionStatus get submissionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormModelCopyWith<RegisterFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormModelCopyWith<$Res> {
  factory $RegisterFormModelCopyWith(
          RegisterFormModel value, $Res Function(RegisterFormModel) then) =
      _$RegisterFormModelCopyWithImpl<$Res, RegisterFormModel>;
  @useResult
  $Res call(
      {EmailFormzModel email,
      FirstNameFormzModel firstName,
      LastNameFormzModel lastName,
      PasswordFormzModel password,
      FormzSubmissionStatus submissionStatus});
}

/// @nodoc
class _$RegisterFormModelCopyWithImpl<$Res, $Val extends RegisterFormModel>
    implements $RegisterFormModelCopyWith<$Res> {
  _$RegisterFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? submissionStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormzModel,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstNameFormzModel,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastNameFormzModel,
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
abstract class _$$RegisterFormModelImplCopyWith<$Res>
    implements $RegisterFormModelCopyWith<$Res> {
  factory _$$RegisterFormModelImplCopyWith(_$RegisterFormModelImpl value,
          $Res Function(_$RegisterFormModelImpl) then) =
      __$$RegisterFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailFormzModel email,
      FirstNameFormzModel firstName,
      LastNameFormzModel lastName,
      PasswordFormzModel password,
      FormzSubmissionStatus submissionStatus});
}

/// @nodoc
class __$$RegisterFormModelImplCopyWithImpl<$Res>
    extends _$RegisterFormModelCopyWithImpl<$Res, _$RegisterFormModelImpl>
    implements _$$RegisterFormModelImplCopyWith<$Res> {
  __$$RegisterFormModelImplCopyWithImpl(_$RegisterFormModelImpl _value,
      $Res Function(_$RegisterFormModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? submissionStatus = null,
  }) {
    return _then(_$RegisterFormModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailFormzModel,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstNameFormzModel,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastNameFormzModel,
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

class _$RegisterFormModelImpl extends _RegisterFormModel {
  const _$RegisterFormModelImpl(
      {this.email = const EmailFormzModel.pure(),
      this.firstName = const FirstNameFormzModel.pure(),
      this.lastName = const LastNameFormzModel.pure(),
      this.password = const PasswordFormzModel.pure(),
      this.submissionStatus = FormzSubmissionStatus.initial})
      : super._();

  @override
  @JsonKey()
  final EmailFormzModel email;
  @override
  @JsonKey()
  final FirstNameFormzModel firstName;
  @override
  @JsonKey()
  final LastNameFormzModel lastName;
  @override
  @JsonKey()
  final PasswordFormzModel password;
  @override
  @JsonKey()
  final FormzSubmissionStatus submissionStatus;

  @override
  String toString() {
    return 'RegisterFormModel(email: $email, firstName: $firstName, lastName: $lastName, password: $password, submissionStatus: $submissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, firstName, lastName, password, submissionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormModelImplCopyWith<_$RegisterFormModelImpl> get copyWith =>
      __$$RegisterFormModelImplCopyWithImpl<_$RegisterFormModelImpl>(
          this, _$identity);
}

abstract class _RegisterFormModel extends RegisterFormModel {
  const factory _RegisterFormModel(
      {final EmailFormzModel email,
      final FirstNameFormzModel firstName,
      final LastNameFormzModel lastName,
      final PasswordFormzModel password,
      final FormzSubmissionStatus submissionStatus}) = _$RegisterFormModelImpl;
  const _RegisterFormModel._() : super._();

  @override
  EmailFormzModel get email;
  @override
  FirstNameFormzModel get firstName;
  @override
  LastNameFormzModel get lastName;
  @override
  PasswordFormzModel get password;
  @override
  FormzSubmissionStatus get submissionStatus;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFormModelImplCopyWith<_$RegisterFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
