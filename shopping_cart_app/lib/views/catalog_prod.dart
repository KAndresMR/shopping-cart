import 'package:flutter/material.dart';
import '../models/product.dart';
import 'widgets/product_card.dart';

class CatalogPage extends StatelessWidget {
  CatalogPage({super.key});

  final List<Product> demoProducts = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catálogo"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, "/cart"),
          )
        ],
      ),
      // Aqui se construye los cajones en donde esta la imagen el nombre y el boton agregar
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: demoProducts.length,
        
        itemBuilder: (context, index) {
          final product = demoProducts[index];
          return ProductCard(
            product: product,
            onAddToCart: () {
              // Logica del carrito
              //ScaffoldMessenger.of(context).showSnackBar(
                //SnackBar(content: Text("${product.name} agregado al carrito")),
              //);
            },
          );
        },
      ),
    );
  }
}