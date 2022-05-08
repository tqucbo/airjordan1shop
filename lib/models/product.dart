import 'package:airjordan1shop/constants.dart';
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Air Jordan 1 High OG Patent Bred',
    description: dummyText,
    price: 291,
    size: 11,
    image: 'assets/images/aj1_1',
    color: const Color(0xFFA9201B),
  ),
  Product(
    id: 2,
    title: 'Air Jordan 1 Mid Barcelona Sweater Red Patent',
    description: dummyText,
    price: 164,
    size: 11,
    image: 'assets/images/aj1_2',
    color: const Color(0xFFd2120a),
  ),
  Product(
    id: 3,
    title: 'Air Jordan 1 High NRG Patent Gold Toe',
    description: dummyText,
    price: 431,
    size: 11,
    image: 'assets/images/aj1_3',
    color: const Color(0xFFad936e),
  ),
  Product(
    id: 4,
    title: 'Air Jordan 1 Mid Patent Black White Gold',
    description: dummyText,
    price: 303,
    size: 11,
    image: 'assets/images/aj1_4',
    color: const Color(0xFF88663d),
  ),
  Product(
    id: 5,
    title: 'Air Jordan 1 Mid Carbon Fiber',
    description: dummyText,
    price: 215,
    size: 11,
    image: 'assets/images/aj1_5',
    color: const Color(0xFF181618),
  ),
  Product(
    id: 6,
    title: 'Air Force 1 Low \'07 White',
    description: dummyText,
    price: 105,
    size: 11,
    image: 'assets/images/aj1_6',
    color: const Color(0xFFf6f4fa),
  ),
];
