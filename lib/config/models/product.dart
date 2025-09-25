class Product {
  final int id;
  final String title;
  final String subtitle;
  final double price;
  final String? imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    this.imageUrl,
  });
}