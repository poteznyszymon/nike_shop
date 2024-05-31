import 'package:nike_shop/models/categories.dart';

class Shoe {
  final String model;
  final String description;
  final double price;
  final String imageUrl;
  final Categories category;
  final bool liked;
  Shoe({
    required this.model,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.liked = false,
  });
}
