class ProductInHome {
  final String name;
  final String description;
  final String imageUrl;
  final String price;
  final bool priceStable;

  ProductInHome({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.priceStable = true,
  });
}