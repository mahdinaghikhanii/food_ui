class FoodCategory {
  String? foodName;
  String? imageUrl;

  FoodCategory({this.foodName, this.imageUrl});

  FoodCategory.fromJson(Map<String, dynamic> json) {
    foodName = json['foodName'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foodName'] = foodName;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
