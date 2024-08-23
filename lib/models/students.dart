class Students {
  String _name;
  String _email;
  int _age;

  Students(this._name, this._email, this._age);
  // Getter method for name
  String get name => _name;

  // Setter method for name
  set name(String name) {
    _name = name;
  }

  // Getter method for email
  String get email => _email;

  // Setter method for email
  set email(String email) {
    _email = email;
  }

  // Getter method for age
  int get age => _age;

  // Setter method for age
  set age(int age) {
    _age = age;
  }
}
