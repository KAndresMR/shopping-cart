import 'package:shopping_cart_app/models/rating.dart';

class Product{
  final String id;
  final String title;
  final int price;
  final String description;
  final String category;
  final String image;
  final Rating rating;


  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    
  });

  factory Product.fromMap(Map<String, dynamic>map) {
    return Product(
      id: map['id'], 
      title: map['title'],
      price: map['price'],
      description: map['description'],
      category: map['category'], 
      image: map['image'], 
      rating: Rating.fromMap(map),
    );
  }
}