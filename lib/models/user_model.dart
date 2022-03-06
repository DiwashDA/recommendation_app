class Patient {
  String? id;
  String? name;
  String? email;
  int? age;
  List<String>? reports;
  String? bloodgroup;

  Patient(
      {this.id,
      this.name,
      this.email,
      this.age,
      this.reports,
      this.bloodgroup});

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    age = json['age'];
    reports = json['reports'].cast<String>();
    bloodgroup = json['bloodgroup'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['age'] = age;
    data['reports'] = reports;
    data['bloodgroup'] = bloodgroup;
    return data;
  }
}
