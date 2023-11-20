import 'package:formz/formz.dart';

enum FirstNameFormzModelValidationError {
  empty,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'First Name can\'t be empty';
    }
  }
}

class FirstNameFormzModel extends FormzInput<String, FirstNameFormzModelValidationError> {
  const FirstNameFormzModel.pure() : super.pure('');

  const FirstNameFormzModel.dirty(String value) : super.dirty(value);

  @override
  FirstNameFormzModelValidationError? validator(String value) {
    if (isPure) {
      return null;
    }
    if (value.isEmpty) return FirstNameFormzModelValidationError.empty;

    return null;
  }
}
