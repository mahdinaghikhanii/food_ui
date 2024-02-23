class FoodTrending {
  String? foodName;
  String? review;
  String? calories;
  String? price;
  String? imageUrl;

  FoodTrending(
      {this.foodName, this.review, this.calories, this.price, this.imageUrl});

  FoodTrending.fromJson(Map<String, dynamic> json) {
    foodName = json['foodName'];
    review = json['review'];
    calories = json['calories'];
    price = json['price'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foodName'] = this.foodName;
    data['review'] = this.review;
    data['calories'] = this.calories;
    data['price'] = this.price;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
