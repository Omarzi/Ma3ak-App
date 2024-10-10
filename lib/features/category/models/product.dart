class Product {
  final String name;
  final String imageUrl;
  final String price;
  final bool isBestSeller;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.isBestSeller = false,
  });
}