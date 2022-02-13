import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/constants/dummy_product.dart';
import 'package:flutter_ecommercify/models/product.dart';
import 'package:flutter_ecommercify/widgets/product/product_item.dart';

class ProductOverview extends StatelessWidget {
  ProductOverview({Key? key}) : super(key: key);
  final List<Product> loadedProduct = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProduct.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProduct[i]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
