import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/cart_provider.dart';
import 'package:flutter_ecommercify/providers/products_provider.dart';
import 'package:flutter_ecommercify/widgets/badge/badge.dart';
import 'package:flutter_ecommercify/widgets/cart/cart_list.dart';
import 'package:flutter_ecommercify/widgets/drawer/app_drawer.dart';
import 'package:provider/provider.dart';

import 'product_grid.dart';

class ProductOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: <Widget>[
          Consumer<CartProvider>(
            builder: (_, cartData, ch) => Badge(
              child: ch,
              value: cartData.itemCount.toString(),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed((CartList.routeName));
              },
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            onSelected: (int selectedValue) {
              if (selectedValue == 0) {
                products.showFavoriteOnly();
              } else {
                products.showAll();
              }
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Only Favorites'),
                value: 0,
              ),
              const PopupMenuItem(
                child: Text('Show All'),
                value: 1,
              ),
            ],
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(),
    );
  }
}
