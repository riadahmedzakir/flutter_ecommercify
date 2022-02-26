import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/models/cart.dart';

class CartItem extends StatelessWidget {
  final Cart cartItem;

  CartItem({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey[200],
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text('\$${cartItem.price}'),
              ),
            ),
          ),
          title: Text(cartItem.title),
          subtitle: Text('\$${cartItem.price * cartItem.quantity}'),
          trailing: Text('${cartItem.quantity} x'),
        ),
      ),
    );
  }
}
