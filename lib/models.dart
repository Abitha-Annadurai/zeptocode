import 'package:flutter/material.dart';

// Grocery item model
class MGrocery {
  final String name;
  final String url;
  final String description;
  final double price;

  MGrocery({required this.name, required this.url, required this.description, required this.price});
}

// Categories item model
class MCategory {
  final String title;
  final String url;
  final Color color;

  MCategory({required this.title, required this.url, required this.color});
}

// Cart item model
class MCartItem {
  final MGrocery item;
  int cout;

  MCartItem({required this.item, required this.cout});
}

class MGroceries {
  final String title;
  final Color color;
  final String url;

  MGroceries({required this.title, required this.color, required this.url});
}
