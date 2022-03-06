class Report {
  String? name;
  String? condition;
  String? image;

  Report({this.name, this.condition, this.image});

  Report.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    condition = json['condition'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['condition'] = condition;
    data['image'] = image;
    return data;
  }
}
