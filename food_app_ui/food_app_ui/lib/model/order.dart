import 'package:food_app_ui/model/food.dart';
import 'package:food_app_ui/model/restaurant.dart';

class Order {
  final Restaurant? restaurant;
  final Food? food;
  final String? date;
  final int? quantity;

  Order({
    this.date,
    this.restaurant,
    this.food,
    this.quantity,
  });
}
