import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/models/order.dart';
import 'package:intl/intl.dart';
import 'package:flutter_ecommercify/providers/order_provider.dart';

class OrderItem extends StatelessWidget {
  final Order order;

  OrderItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle: Text(
                DateFormat('dd/MM/yyyy').format(order.datetime).toString()),
            trailing: IconButton(
              icon: const Icon(Icons.expand_more),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
