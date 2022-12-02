import 'package:test/test.dart';

// import the model to test
import "package:disaster_relief_aid_flutter/model/user.model.dart";

void main() {
  /// test the User model
  test('User can be constructed', () {
    User john = User();
    expect(john, isNotNull);
  });

  test('User retains values', () {
    // the values to test with
    User john = User();
    String fname = "John";
    String language = "English";
    List<String> vulnerabilities = ["A", "B"];
    DateTime birthdate = DateTime.now();

    // set the values
    john.fname = fname;
    john.language = language;
    john.vulnerabilities = vulnerabilities;
    john.birthdate = birthdate;

    // test the values
    expect(john.fname, fname);
    expect(john.language, language);
    expect(john.vulnerabilities, vulnerabilities);
    expect(john.birthdate, birthdate);
  });
}

// test('template unit test', () {
//   expect(true, true);
// });

// test('User can be constructed', () {
//   User john = User();
//   expect(john, isNotNull);
// });