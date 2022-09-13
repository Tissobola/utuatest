// User class
class User {
  String? name;
  String? email;
  String? password;
  String? country;

  User({
    this.name,
    this.email,
    this.password,
    this.country,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'country': country
    };
  }

  static User fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      password: map['password'],
      country: map['country'],
    );
  }
}
