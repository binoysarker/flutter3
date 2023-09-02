import 'package:form_field_validator/form_field_validator.dart';

import '../graphqlSection/orders.graphql.dart';

class ValidatorDefinition {
  static final emailMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Email is required'),
    EmailValidator(errorText: 'Invalid Email Address')
  ]);
  static final passwordMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Password is required'),
    PatternValidator(r'^([a-zA-Z0-9]{8,12})$',
        errorText:
            'Minimum eight characters, maximum\n12 characters , at least one letter and one number,\nspecial characters like (@,\$,&,#) are not accepted')
  ]);
  static final phoneNumberMultiValidator = MultiValidator([
    RequiredValidator(errorText: 'Phone is Required'),
    PatternValidator(r'^\d{10}$',
        errorText: 'phone number should be like 9972808280'),
    MinLengthValidator(9, errorText: 'phone number should be only of 10 digits.'),
    MaxLengthValidator(10, errorText: 'phone number should be only of 10 digits.')
  ]);
}

class CustomValidator extends FieldValidator{
  CustomValidator(String errorText) : super(errorText);

  @override
  bool isValid(value) {
      var data = value as Query$GetEligibleShippingMethods$eligibleShippingMethods;
    return data.code.isEmpty;
  }
}