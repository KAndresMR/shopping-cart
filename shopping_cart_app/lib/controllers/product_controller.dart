// controllers/product_controller.dart
import 'package:shopping_cart_app/models/product.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductController {
  final String apiUrl = "https://fakestoreapi.com/products";

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((item) => Product.fromMap(item)).toList();
    } else {
      throw Exception("Error al cargar productos");
    }
  }
}