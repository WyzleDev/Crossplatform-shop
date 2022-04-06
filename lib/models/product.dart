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
    title: 'Малиновое печенье',
    price: 900,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/Coockie.png",
    color: const Color(0xFFCEA77D),
  ),
  Product(
    id: 2,
    title: 'Макароны',
    price: 1230,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/Macarony.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
    id: 3,
    title: 'Маффин',
    price: 400,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/muffin.png",
    color: const Color(0xFFFB7883),
  ),
  Product(
    id: 4,
    title: 'Торт клубника',
    price: 443,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/Tort.png",
    color: const Color(0xFFE6b398),
  ),
  Product(
    id: 5,
    title: 'Блины "Утро в деревне"',
    price: 200,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/tarelkaSblinami.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 6,
    title: 'Мороженное',
    price: 400,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/icecream.png",
    color: const Color(0xFF3D82AE),
  ),
  Product(
      id: 7,
      image: "assets/image/macaron2.png",
      title: "товар 7",
      price: 100,
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
      size: 10,
      color: const Color(0xff78d45f)),
  Product(
      id: 8,
      image: "assets/image/tarelka2.png",
      title: "товар 8",
      price: 100,
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
      size: 10,
      color: const Color(0xff78d45f)),
  Product(
      id: 9,
      image: "assets/image/tarelkaSblinami.png",
      title: "товар 9",
      price: 100,
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
      size: 10,
      color: const Color(0xff78d45f)),
  Product(
      id: 10,
      image: "assets/image/tarelka2.png",
      title: "товар 10",
      price: 100,
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
      size: 10,
      color: const Color(0xff78d45f)),
];
