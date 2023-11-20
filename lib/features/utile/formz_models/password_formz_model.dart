import 'package:formz/formz.dart';

enum PasswordValidationError {
  empty,
  tooShort,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Password can\'t be empty';
      case tooShort:
        return 'Password is too short';
      case invalid:
        return 'Must contain at least 1 characters and 1 symbol';
    }
  }
}

class PasswordFormzModel extends FormzInput<String, PasswordValidationError> {
  const PasswordFormzModel.pure() : super.pure('');

  const PasswordFormzModel.dirty(String value) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    if (isPure) {
      return null;
    }
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    }

    if (value.length <= 4) {
      return PasswordValidationError.tooShort;
    }
    final regex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*();:,."-_/#?&])[A-Za-z\d@$!%*();:,."-_/#?&]{8,}$');
    final bool matche = regex.hasMatch(value);
    if (!matche) {
      return PasswordValidationError.invalid;
    }

    return null;
  }
}
