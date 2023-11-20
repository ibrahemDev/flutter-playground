import 'package:flutter_playground/features/utile/formz_models/email_formz_model.dart';
import 'package:flutter_playground/features/utile/formz_models/password_formz_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'login_form_model.freezed.dart';

@freezed
class LoginFormModel with FormzMixin, _$LoginFormModel {
  const LoginFormModel._();
  const factory LoginFormModel({
    @Default(EmailFormzModel.pure()) EmailFormzModel email,
    @Default(PasswordFormzModel.pure()) PasswordFormzModel password,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus submissionStatus,
  }) = _LoginFormModel;
//FormzSubmissionStatus
  @override
  List<FormzInput> get inputs => [email, password];
}
