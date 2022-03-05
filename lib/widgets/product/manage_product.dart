import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/products_provider.dart';
import 'package:flutter_ecommercify/widgets/drawer/app_drawer.dart';
import 'package:flutter_ecommercify/widgets/product/add_product.dart';
import 'package:provider/provider.dart';

import 'manage_product_item.dart';

class ManageProduct extends StatelessWidget {
  static const routeName = '/manage-product';

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddProduct.routeName);
            },
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productProvider.items.length,
          itemBuilder: (_, i) => Column(
            children: <Widget>[
              ManageProductItem(productProvider.items[i]),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
