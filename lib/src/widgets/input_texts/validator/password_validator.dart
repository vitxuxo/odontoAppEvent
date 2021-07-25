import 'text_field_validator.dart';

class PasswordValidator extends TextFieldValidator {
  PasswordValidator({
    String errorText = 'Sua senha deve conter no mínimo 8 caracteres',
  }) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String value) {
    bool oitoCaracteres = value.length >= 8;
    return oitoCaracteres;
  }

  // @override
  // String? call(String value) {
  //   return isValid(value) ? null : errorText;
  // }
}
