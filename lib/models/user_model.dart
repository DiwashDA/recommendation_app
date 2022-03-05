class UserModel {
  final int id;
  final String email;
  final String fullName;
  final String phone;
  final String s3Url;
  final int totalExpenses;
  final int age;
  final String joinedAt;
  final String cardUuid;

  UserModel({
    required this.id,
    required this.email,
    required this.fullName,
    required this.phone,
    required this.s3Url,
    required this.totalExpenses,
    required this.age,
    required this.joinedAt,
    required this.cardUuid,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "email": email,
      "full_name": fullName,
      "phone": phone,
      "s3_url": s3Url,
      "total_expenses": totalExpenses,
      "age": age,
      "joined_at": joinedAt,
      "card_uuid": cardUuid,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    print("Converting to model");

    return UserModel(
      id: map["id"],
      email: map["email"],
      fullName: map["full_name"],
      phone: map["phone"],
      s3Url: map["s3_url"],
      totalExpenses: map["total_expenses"],
      age: map["age"],
      joinedAt: map["joined_at"] ?? "",
      cardUuid: map["card_uuid"],
    );
  }
}
