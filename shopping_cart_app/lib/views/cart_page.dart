import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  final List<CartItem> demoCart =
      []; //Aqui van los productos agregados al carrito

  @override
  Widget build(BuildContext context) {
    final totalCents = demoCart.fold(
      0,
      (sum, item) => sum + item.subtotalCents,
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Carrito")),
      body: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) {
          final item = demoCart[index];
          return ListTile(
            leading: Image.network(item.product.image),
            title: Text(item.product.title),
            subtitle: Text("Cantidad: ${item.qty}"),
            trailing:
                Text("\$${(item.subtotalCents / 100).toStringAsFixed(2)}"),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, "/checkout"),
          child: Text("Pagar \$${(totalCents / 100).toStringAsFixed(2)}"),
        ),
      ),
    );
  }
}
