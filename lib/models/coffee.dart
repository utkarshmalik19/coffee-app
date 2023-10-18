class Coffee {
  final int id;
  final String name;
  final String description;
  final int price;
  final double rating;

  Coffee(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.rating});

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
        id: json['productId'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        rating: json['rating']);
  }
}
