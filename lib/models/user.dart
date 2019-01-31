class User {
  final String token;

  User({this.token});

  factory User.fromJson(Map<String, String> json) {
    return User(
      token: json['token']
    );
  }
}