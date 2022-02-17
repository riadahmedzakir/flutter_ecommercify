import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/constants/dummy_product.dart';
import 'package:flutter_ecommercify/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = DUMMY_PRODUCTS;
  
  List<Product> get items {
    return [..._items];
  }

  void addProducts() {
    // _items.add(value);
    notifyListeners();
  }
}
