class User {
  final int? id;
  final String? firstname;
  final String? lastname;
  final String? email;
  final String? phone;

  const User({this.id, this.firstname, this.lastname, this.email, this.phone});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] ?? 0,
    firstname: json['name'] ?? 'No Firstname',
    lastname: json['username'] ?? 'No Lastname',
    email: json['email'] ?? 'No Email',
    phone: json['phone'] ?? 0,
  );

  @override
  // ignore: override_on_non_overriding_member
  List<Object?> get props => [id, firstname, lastname, email, phone];
}
