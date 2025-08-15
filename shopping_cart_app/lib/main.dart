import 'package:flutter/material.dart';
import 'package:shopping_cart_app/views/cart_page.dart';
import 'package:shopping_cart_app/views/catalog_prod.dart';
import 'package:shopping_cart_app/views/checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => CatalogPage(),
        "/cart": (context) => CartPage(),
        "/checkout": (context) => const CheckoutPage(),
      },
    );
  }
}