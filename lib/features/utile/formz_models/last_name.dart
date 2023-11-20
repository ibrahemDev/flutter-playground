import 'package:formz/formz.dart';

enum LastNameFormzModelValidationError {
  empty,
  ;

  String getMessage() {
    switch (this) {
      case empty:
        return 'Last Name can\'t be empty';
    }
  }
}

class LastNameFormzModel extends FormzInput<String, LastNameFormzModelValidationError> {
  const LastNameFormzModel.pure() : super.pure('');

  const LastNameFormzModel.dirty(String value) : super.dirty(value);

  @override
  LastNameFormzModelValidationError? validator(String value) {
    if (isPure) {
      return null;
    }
    if (value.isEmpty) return LastNameFormzModelValidationError.empty;

    return null;
  }
}
