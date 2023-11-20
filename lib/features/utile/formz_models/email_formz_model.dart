import 'package:formz/formz.dart';

enum EmailValidationError {
  empty,
  invalid,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Email can\'t be empty';
      case invalid:
        return 'Invalid email';
    }
  }
}

class EmailFormzModel extends FormzInput<String, EmailValidationError> {
  const EmailFormzModel.pure() : super.pure('');

  const EmailFormzModel.dirty(String value) : super.dirty(value);

  @override
  EmailValidationError? validator(String value) {
    if (isPure) {
      return null;
    }
    if (value.isEmpty) return EmailValidationError.empty;

    final RegExp regex = RegExp(r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)');

    final bool matches = regex.hasMatch(value);

    if (!matches) {
      return EmailValidationError.invalid;
    }

    return null;
  }
}
