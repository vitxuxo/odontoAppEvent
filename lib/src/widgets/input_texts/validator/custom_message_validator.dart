import 'field_validator.dart';

class CustomMessageValidator extends FieldValidator<String> {
  CustomMessageValidator(String errorText) : super(errorText);

  bool get ignoreEmptyValues => true;

  @override
  bool isValid(String value) {
    return false;
  }

  @override
  String? call(String value) {
    return isValid(value) ? null : errorText;
  }
}
