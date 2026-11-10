class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String imgUrl;
  bool? isFavo;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imgUrl,
    this.isFavo = false,
  });

  factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      price: (json["price"] as num).toDouble(),
      description: json["description"],
      imgUrl: json["imgUrl"],
    );
  }
}
