import 'constants.dart' show random;
import 'constants_name.dart' show firstNamesFemale, firstNamesMale, lastNames, prefixesMale, prefixesFemale;

/// Generate random first name.
///
/// Returns `String` representing a first name.
///
/// [gender] parameter can be set to `male` to return only
/// male names or `female` to return only female names. Empty
/// [gender] returns any male or any female name.
/// Default is empty string.
///
/// Throws [ArgumentError] if gender is set to anything other
/// than _'male'_ or _'female'_.
///
/// For list of names, check [names](https://github.com/PinkFrojd/mock_data/blob/master/assets/names.md).
///
/// Example usage:
/// ```dart
///   mockName()         // returns male or female name.
///   mockName('male')   // returns male name.
///   mockName('female') // returns female name.
/// ```
String mockName([String gender = '']){

  // Passed gender should be 'male' or 'female'
  // so it must be contained in 'fe(male)' string.
  // fem or mal or all other such words contained in female.
  if(gender != '') {
    if (!(gender == 'male' || gender == 'female')) {
      throw ArgumentError('Invalid gender value');
    }
  }

  switch(gender){
    case 'male':
      return firstNamesMale.elementAt(random.nextInt(firstNamesMale.length - 1)) + ' ' + lastNames.elementAt(random.nextInt(lastNames.length - 1));
    case 'female':
      return firstNamesFemale.elementAt(random.nextInt(firstNamesFemale.length - 1)) + ' ' + lastNames.elementAt(random.nextInt(lastNames.length - 1));
    default:
      return firstNamesFemale.union(firstNamesMale).elementAt(
          random.nextInt(firstNamesFemale.length + firstNamesMale.length - 1)) + ' ' + lastNames.elementAt(random.nextInt(lastNames.length - 1));
  }
}
