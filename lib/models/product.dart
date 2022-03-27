import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Товар1',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: 'Товар2',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
    id: 3,
    title: 'Товар3',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFFFB7883),
  ),
  Product(
    id: 4,
    title: 'Товар4',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFFE6b398),
  ),
  Product(
    id: 5,
    title: 'Товар5',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 6,
    title: 'Товар6',
    price: 100,
    size: 5,
    description: "description123123123",
    image: "assets/image/p1.png",
    color: const Color(0xFF3D82AE),
  ),
];
