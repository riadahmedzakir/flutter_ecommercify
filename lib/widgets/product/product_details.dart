import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = 'product-details';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
    );
  }
}
