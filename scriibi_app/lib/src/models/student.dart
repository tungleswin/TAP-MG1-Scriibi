import 'dart:ui';

class Student {
  // constructors
  const Student({
    required this.firstName,
    required this.lastName,
    required this.className,
    required this.studentID,
  });

  // getter
  // - for full name
  String get fullName {
    return "${lastName.toUpperCase()}, $firstName";
  }

  // - for subtitle
  String get subtitle {
    // get the first three letters of lastName and make them upper case
    String threeLetterLastName = lastName.substring(0, 3).toUpperCase();
    return threeLetterLastName + studentID;
  }

  // variables
  final String firstName;
  final String lastName;
  final String className;
  final String studentID;
}
