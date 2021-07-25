typedef ValidatorFunction<T> = T Function(T value);

abstract class FieldValidator<T> {
  final String errorText;

  // ignore: unnecessary_null_comparison
  FieldValidator(this.errorText) : assert(errorText != null);

  bool isValid(T value);

  String? call(T value) {
    return isValid(value) ? null : errorText;
  }
}
