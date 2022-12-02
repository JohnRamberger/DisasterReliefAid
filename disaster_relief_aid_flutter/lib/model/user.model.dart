class User {
  String language = "";
  String fname = "";
  DateTime birthdate = DateTime.now();
  List<String> vulnerabilities = [];

  User();

  @override
  String toString() {
    return 'User{language: $language, fname: $fname, birthdate: $birthdate, vulnerabilities: $vulnerabilities}';
  }
}
