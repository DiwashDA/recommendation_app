class ItemModel {
  late double price;
  late String itemName;
  late int categoryId;
  late String s3Url;
  late Meta meta;
  late int id;

  ItemModel(
      {required this.price,
      required this.itemName,
      required this.categoryId,
      required this.s3Url,
      required this.meta,
      required this.id});

  ItemModel.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    itemName = json['item_name'];
    categoryId = json['category_id'];
    s3Url = json['s3_url'];
    meta = (json['meta'] != null ? new Meta.fromJson(json['meta']) : null)!;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['item_name'] = this.itemName;
    data['category_id'] = this.categoryId;
    data['s3_url'] = this.s3Url;
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    data['id'] = this.id;
    return data;
  }
}

class Meta {
  late List<int> size;

  Meta({required this.size});

  Meta.fromJson(Map<String, dynamic> json) {
    size = json['size'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    return data;
  }
}
