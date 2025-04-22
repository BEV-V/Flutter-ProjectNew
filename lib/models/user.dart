class User {
  final String gender;
  final String email;
  final String phone;
  final String nat;
  final String cell;
  final String imageUrl;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.nat,
    required this.cell,
    required this.imageUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      nat: json['nat'] ?? '',
      cell: json['cell'] ?? '',
      imageUrl: json['picture']?['thumbnail'] ?? '',
    );
  }
}
