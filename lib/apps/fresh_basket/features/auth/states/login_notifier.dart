import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/fresh_basket/features/auth/models/login_form_model.dart';

import 'package:flutter_playground/features/utile/formz_models/email_formz_model.dart';
import 'package:flutter_playground/features/utile/formz_models/password_formz_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

class LoginNotifier extends StateNotifier<LoginFormModel> {
  static final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginFormModel>((ref) => LoginNotifier());
  LoginNotifier() : super(const LoginFormModel());

  void updateEmail(String value) {
    final email = EmailFormzModel.dirty(value);
    state = state.copyWith(
      email: email,
    );
  }

  void updatePassword(String value) {
    final password = PasswordFormzModel.dirty(value);
    state = state.copyWith(
      password: password,
    );
  }

  void submit(BuildContext context) {
    if (state.isPure || state.isNotValid || !state.submissionStatus.isInitial) {
      return;
    }
  }
}
