import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/models/product.dart';

class ManageProductItem extends StatelessWidget {
  final Product _product;

  ManageProductItem(this._product);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(_product.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
