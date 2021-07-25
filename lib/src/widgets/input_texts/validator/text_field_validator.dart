import 'field_validator.dart';

abstract class TextFieldValidator extends FieldValidator<String> {
  TextFieldValidator(String errorText) : super(errorText);

  bool get ignoreEmptyValues => true;

  @override
  String? call(String value) {
    return (ignoreEmptyValues && value.isEmpty) ? null : super.call(value);
  }

  bool hasMatch(String pattern, String input, {bool caseSensitive: true}) =>
      RegExp(pattern, caseSensitive: caseSensitive).hasMatch(input);
}
