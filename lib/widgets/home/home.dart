import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/models/order.dart';
import 'package:flutter_ecommercify/providers/cart_provider.dart';
import 'package:flutter_ecommercify/providers/order_provider.dart';
import 'package:flutter_ecommercify/providers/products_provider.dart';
import 'package:flutter_ecommercify/widgets/cart/cart_list.dart';
import 'package:flutter_ecommercify/widgets/order/order_list.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ecommercify/widgets/product/product_details.dart';
import 'package:flutter_ecommercify/widgets/product/product_overview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ProductProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CartProvider(),
        ),
        ChangeNotifierProvider.value(
          value: OrderProvider(),
        ),
      ],
      child: MaterialApp(
        title: "My Shop",
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverview(),
        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails(),
          CartList.routeName: (ctx) => CartList(),
          OrderList.routeName: (ctx) => OrderList()
        },
      ),
    );
  }
}
