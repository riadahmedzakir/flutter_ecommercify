import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/constants/dummy_product.dart';
import 'package:flutter_ecommercify/models/product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _items = DUMMY_PRODUCTS;
  bool _showFavoritesOnly = false;

  List<Product> get items {
    if (_showFavoritesOnly) {
      return _items.where((prod) => prod.isFavorite).toList();
    } else {
      return [..._items];
    }
  }

  void addProducts() {
    // _items.add(value);
    notifyListeners();
  }

  void showFavoriteOnly(){
    _showFavoritesOnly = true;
    notifyListeners();
  }

  void showAll(){
    _showFavoritesOnly = false;
    notifyListeners();
  }

  Product findById(String Id) {
    return _items.firstWhere((prod) => prod.id == Id);
  }
}
