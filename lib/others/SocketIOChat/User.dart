class User {
  int id;
  String name, email;

  User({required this.id, required this.name, required this.email});

//todo почему не создать обычный конструкор?
  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id:json["id"] as int,
      name: json["name"] as String,
      email: json["email"] as String,
    );
  }
  Map<String,  dynamic> toJson() => {
    "id":id,
    "name":name,
    "email": email,
  };
}