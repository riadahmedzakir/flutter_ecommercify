import 'package:flutter/material.dart';

import 'product_grid.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
      ),
      body: ProductGrid(),
    );
  }
}
