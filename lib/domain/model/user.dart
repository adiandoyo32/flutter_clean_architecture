class User {
  final String name;
  final String username;
  final String? image;

  const User({required this.name, required this.username, this.image});

  factory User.empty() => User(name: '', username: '');
}
