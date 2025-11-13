import 'package:flutter/material.dart';

class Product {
  final String name;
  final String desc;
  final String price;
  final String imageUrl;
  final String label;
  final Color labelColor;

  const Product({
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
    required this.label,
    required this.labelColor,
  });
}
