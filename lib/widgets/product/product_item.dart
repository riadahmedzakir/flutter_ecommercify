import 'package:flutter/material.dart';
import 'package:flutter_ecommercify/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ecommercify/models/product.dart';
import 'package:flutter_ecommercify/widgets/product/product_details.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<Product>(context, listen: false);
    final CartProvider cartProvider =
        Provider.of<CartProvider>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => {
            Navigator.of(context).pushNamed(
              ProductDetails.routeName,
              arguments: product.id,
            ),
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(
                product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () => {
              product.toggleFav(),
            },
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => {
              cartProvider.addItem(product.id, product.price, product.title),
              ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                    'Added item to cart',
                    textAlign: TextAlign.center,
                  ),
                  duration: const Duration(seconds: 2),
                  action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: () {
                        cartProvider.removeSingleItem(product.id);
                      }),
                ),
              )
            },
            color: Theme.of(context).accentColor,
          ),
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
