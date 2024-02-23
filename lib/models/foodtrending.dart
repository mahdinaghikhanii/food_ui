import 'package:food_ui/models/foodcategory.dart';

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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['foodName'] = foodName;
    data['review'] = review;
    data['calories'] = calories;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    return data;
  }
}

List<FoodCategory> foodCategory = [
  FoodCategory(
      foodName: 'Salad',
      imageUrl:
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
  FoodCategory(
      foodName: 'Pizza',
      imageUrl:
          'https://images.unsplash.com/photo-1622219773524-eaaa721c760d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  FoodCategory(
      foodName: 'Cake',
      imageUrl:
          'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
  FoodCategory(
      foodName: 'Burger',
      imageUrl:
          'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=722&q=80'),
  FoodCategory(
      foodName: 'Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1609951651556-5334e2706168?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
];

List<FoodTrending> foodTrendings = [
  FoodTrending(
      foodName: 'Food1',
      review: '500 Reviews',
      calories: '100-300 calories',
      price: '\$12',
      imageUrl:
          'https://images.unsplash.com/photo-1455853659719-4b521eebc76d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  FoodTrending(
      foodName: 'Food2',
      review: '500 Reviews',
      calories: '100-300 calories',
      price: '\$50',
      imageUrl:
          'https://images.unsplash.com/photo-1513456852971-30c0b8199d4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'),
  FoodTrending(
      foodName: 'Food3',
      review: '500 Reviews',
      calories: '100-300 calories',
      price: '\$22',
      imageUrl:
          'https://images.unsplash.com/photo-1582993728648-1f29c748e5ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80'),
  FoodTrending(
      foodName: 'Food4',
      review: '500 Reviews',
      calories: '100-300 calories',
      price: '\$30',
      imageUrl:
          'https://images.unsplash.com/photo-1574521594448-efc5905a7b8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
];
