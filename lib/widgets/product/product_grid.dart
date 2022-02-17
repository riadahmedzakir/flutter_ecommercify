import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/products_provider.dart';
import 'package:provider/provider.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    final loadedProduct = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProduct.length,
      itemBuilder: (ctx, i) => ProductItem(loadedProduct[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
