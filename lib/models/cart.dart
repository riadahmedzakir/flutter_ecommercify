class Cart {
  final String id;
  final String productId;
  final String title;
  final int quantity;
  final double price;

  Cart(
      {required this.id,
      required this.title,
      required this.productId,
      required this.quantity,
      required this.price});
}
