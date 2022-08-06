import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

class ValidatorDefinition{
  static final emailMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'Invalid Email Address')
  ]);
  static final passwordMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    PatternValidator(r'\w{6,8}', errorText: 'Password length must be between 6 to 8')
  ]);
  static final phoneNumberMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Phone is Required'),
    PatternValidator(r'^(\+|\d)[0-9]{7,16}$', errorText: 'phone pattern does not match')
  ]);

  
}