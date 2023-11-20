import 'package:flutter_playground/features/utile/formz_models/email_formz_model.dart';
import 'package:flutter_playground/features/utile/formz_models/first_name.dart';
import 'package:flutter_playground/features/utile/formz_models/last_name.dart';
import 'package:flutter_playground/features/utile/formz_models/password_formz_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'register_form_model.freezed.dart';

@freezed
class RegisterFormModel with FormzMixin, _$RegisterFormModel {
  const RegisterFormModel._();
  const factory RegisterFormModel({
    @Default(EmailFormzModel.pure()) EmailFormzModel email,
    @Default(FirstNameFormzModel.pure()) FirstNameFormzModel firstName,
    @Default(LastNameFormzModel.pure()) LastNameFormzModel lastName,
    @Default(PasswordFormzModel.pure()) PasswordFormzModel password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus submissionStatus,
  }) = _RegisterFormModel;
//FormzSubmissionStatus
  @override
  List<FormzInput> get inputs => [email, firstName, lastName, password];
}
