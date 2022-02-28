import 'package:flutter_ecommercify/models/cart.dart';

class Order {
  final String id;
  final double amount;
  final List<Cart> products;
  final DateTime datetime;

  Order(
      {required this.id,
      required this.amount,
      required this.products,
      required this.datetime});
}
