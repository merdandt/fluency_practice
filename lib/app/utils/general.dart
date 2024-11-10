import 'package:formz/formz.dart';

/// General Form Input Validation Error
enum GeneralValidationError {
  /// Name is empty
  empty,

  /// Name is invalid (generic validation error)
  invalid,

  /// Name is too short
  tooShort,
}

/// {@template general}
/// Reusable field form input.
/// {@endtemplate}
class General extends FormzInput<String, GeneralValidationError> {
  /// {@macro general}
  const General.pure({this.isEmptyAllowed = false, this.minLength = 0})
      : super.pure('');

  /// {@macro general}
  const General.dirty({
    this.isEmptyAllowed = false,
    this.minLength = 0,
    final String value = '',
  }) : super.dirty(value);

  final bool isEmptyAllowed;
  final int minLength;

  @override
  GeneralValidationError? validator(final String value) {
    if (value.isEmpty) {
      return isEmptyAllowed ? null : GeneralValidationError.empty;
    }

    if (value.length < minLength) {
      return GeneralValidationError.tooShort;
    }

    return null;
  }
}
