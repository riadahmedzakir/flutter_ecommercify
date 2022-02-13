import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/widgets/product/product_overview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Shop",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductOverview(),
    );
  }
}