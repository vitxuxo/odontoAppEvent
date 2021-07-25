import 'text_field_validator.dart';

class RequiredValidator extends TextFieldValidator {
  RequiredValidator({
    String errorText = 'campo obrigário, por favor preencha.',
  }) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String? value) {
    return value!.isNotEmpty;
  }

  // @override
  // String? call(String? value) {
  //   return isValid(value!) ? null : errorText;
  // }
}
