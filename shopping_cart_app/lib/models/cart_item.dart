import 'package:shopping_cart_app/models/product.dart';

class CartItem {
  final Product product;
  final int qty;// Cuantas unidades del producto
  int get subtotalCents => product.price * qty;

  CartItem({
    required this.product,
    required this.qty,
  });

  factory CartItem.fromMap(Map<String, dynamic>map) {
    return CartItem(
      product: Product.fromMap(map['id'], map),
      qty: map['qty']
    );
  }
}