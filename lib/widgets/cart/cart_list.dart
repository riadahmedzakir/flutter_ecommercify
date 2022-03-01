import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/order_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ecommercify/providers/cart_provider.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(),
                  Chip(
                    label: Text(
                      '\$${cartProvider.totalAmount}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                    onPressed: () {
                      Provider.of<OrderProvider>(context, listen: false)
                          .addOrder(cartProvider.items.values.toList(),
                              cartProvider.totalAmount);
                      cartProvider.clearCart();
                    },
                    child: const Text("Order Now"),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cartProvider.itemCount,
              itemBuilder: (ctx, i) =>
                  CartItem(cartItem: cartProvider.items.values.toList()[i]),
            ),
          )
        ],
      ),
    );
  }
}
