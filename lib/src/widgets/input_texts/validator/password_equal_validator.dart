import 'text_field_validator.dart';

class PasswordEqualValidator extends TextFieldValidator {
  PasswordEqualValidator({
    required this.senha,
    String errorText =
        'A confirmação da senha deve ser igual a senha anterior.',
  }) : super(errorText);

  final String senha;

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String value) {
    return value.isNotEmpty && this.senha == value;
  }

  // @override
  // String? call(String value) {
  //   return isValid(value) ? null : errorText;
  // }
}
