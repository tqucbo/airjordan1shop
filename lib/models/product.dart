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
    title: 'AJ1 #1',
    description: dummyText,
    price: 291,
    size: 11,
    image: 'assets/images/aj1_1.png',
    color: const Color(0xFFA9201B),
  ),
  Product(
    id: 2,
    title: 'AJ1 #2',
    description: dummyText,
    price: 164,
    size: 11,
    image: 'assets/images/aj1_2.png',
    color: const Color(0xFFd2120a),
  ),
  Product(
    id: 3,
    title: 'AJ1 #3',
    description: dummyText,
    price: 431,
    size: 11,
    image: 'assets/images/aj1_3.png',
    color: const Color(0xFFad936e),
  ),
  Product(
    id: 4,
    title: 'AJ1 #4',
    description: dummyText,
    price: 303,
    size: 11,
    image: 'assets/images/aj1_4.png',
    color: const Color(0xFF88663d),
  ),
  Product(
    id: 5,
    title: 'AJ1 #5',
    description: dummyText,
    price: 215,
    size: 11,
    image: 'assets/images/aj1_5.png',
    color: const Color(0xFF181618),
  ),
  Product(
    id: 6,
    title: 'AF1 #6',
    description: dummyText,
    price: 105,
    size: 11,
    image: 'assets/images/aj1_6.png',
    color: const Color(0xFFdc5302),
  ),
];
