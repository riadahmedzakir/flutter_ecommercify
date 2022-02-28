import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/models/cart.dart';
import 'package:flutter_ecommercify/models/order.dart';

class OrderProvider with ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders {
    return [..._orders];
  }

  void addOrder(List<Cart> cart, double total) {
    _orders.insert(
      0,
      Order(
        id: DateTime.now().toString(),
        amount: total,
        products: cart,
        datetime: DateTime.now(),
      ),
    );
  }
}
