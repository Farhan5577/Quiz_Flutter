import 'package:flutter/material.dart';
import 'pages/product_grid.dart';

void main() {
  runApp(const ProductGridApp());
}

class ProductGridApp extends StatelessWidget {
  const ProductGridApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farhan Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF8F9FB),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const ProductGridPage(),
    );
  }
}
