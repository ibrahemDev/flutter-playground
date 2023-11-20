import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/fresh_basket/features/auth/models/register_form_model.dart';

import 'package:flutter_playground/features/utile/formz_models/email_formz_model.dart';
import 'package:flutter_playground/features/utile/formz_models/first_name.dart';
import 'package:flutter_playground/features/utile/formz_models/last_name.dart';
import 'package:flutter_playground/features/utile/formz_models/password_formz_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';

class RegisterNotifier extends StateNotifier<RegisterFormModel> {
  static final registerNotifierProvider = StateNotifierProvider<RegisterNotifier, RegisterFormModel>((ref) => RegisterNotifier());
  RegisterNotifier() : super(const RegisterFormModel());

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

  void updateFirstName(String value) {
    final firstName = FirstNameFormzModel.dirty(value);
    state = state.copyWith(firstName: firstName);
  }

  void updateLastName(String value) {
    final lastName = LastNameFormzModel.dirty(value);
    state = state.copyWith(
      lastName: lastName,
    );
  }

  void submit(BuildContext context) {
    if (state.isPure || state.isNotValid || !state.submissionStatus.isInitial) {
      return;
    }
  }
}
