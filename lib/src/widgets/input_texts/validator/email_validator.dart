import 'package:odonto_app_event/src/widgets/input_texts/validator/text_field_validator.dart';

class EmailValidator extends TextFieldValidator {
  EmailValidator({
    String errorText = 'e-mail inválido.',
  }) : super(errorText);

  @override
  bool get ignoreEmptyValues => false;

  @override
  bool isValid(String value) {
    RegExp _regex = RegExp(
        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
    return value.isNotEmpty && _regex.hasMatch(value);
  }

  // @override
  // String? call(String value) {
  //   return isValid(value) ? null : errorText;
  // }
}
