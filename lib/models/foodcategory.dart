class FoodCategory {
  String? foodName;
  String? imageUrl;

  FoodCategory({this.foodName, this.imageUrl});

  FoodCategory.fromJson(Map<String, dynamic> json) {
    foodName = json['foodName'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodName'] = this.foodName;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
