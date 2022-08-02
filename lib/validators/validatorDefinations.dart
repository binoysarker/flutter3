import 'package:form_field_validator/form_field_validator.dart';

class ValidatorDefinition{
  static final emailMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'Invalid Email Address')
  ]);
  static final passwordMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    PatternValidator(r'\w{6,8}', errorText: 'Password length must be between 6 to 8')
  ]);
}