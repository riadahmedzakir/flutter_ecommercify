import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/order_provider.dart';
import 'package:flutter_ecommercify/widgets/drawer/app_drawer.dart';
import 'package:flutter_ecommercify/widgets/order/order_item.dart';
import 'package:provider/provider.dart';

class OrderList extends StatelessWidget {
  static const routeName = 'orders';
  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orders"),
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
          itemCount: orderProvider.orders.length,
          itemBuilder: (ctx, i) => OrderItem(orderProvider.orders[i]),
        ));
  }
}
