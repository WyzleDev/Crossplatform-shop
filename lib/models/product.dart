import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category;
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
    required this.category,
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
    color: const Color(0xFF78D45F),
    category: "Печенье",
  ),
  Product(
    id: 2,
    title: 'Макароны',
    price: 1230,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/Macarony.png",
    color: const Color(0xFFFFC241),
    category: "Макароны",
  ),
  Product(
    id: 3,
    title: 'Маффин',
    price: 400,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/muffin.png",
    color: const Color(0xFFCB9976),
    category: "Шоколад",
  ),
  Product(
    id: 4,
    title: 'Торт клубника',
    price: 443,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/Tort.png",
    color: const Color(0xff5bec86),
    category: "Торты",
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
    category: "Блины",
  ),
  Product(
    id: 6,
    title: 'Мороженное',
    price: 400,
    size: 5,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    image: "assets/image/icecream.png",
    color: const Color(0xFFCB9976),
    category: "Шоколад",
  ),
  Product(
    id: 7,
    image: "assets/image/macaron2.png",
    title: "Макароны",
    price: 100,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    size: 10,
    color: const Color(0xffffc241),
    category: "Макароны",
  ),
  Product(
    id: 8,
    image: "assets/image/tarelka2.png",
    title: "Печенье",
    price: 100,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    size: 10,
    color: const Color(0xff78d45f),
    category: "Печенье",
  ),
  Product(
    id: 9,
    image: "assets/image/tarelkaSblinami.png",
    title: "Блины-Блины",
    price: 100,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    size: 10,
    color: const Color(0xff3d82ae),
    category: "Блины",
  ),
  Product(
    id: 10,
    image: "assets/image/tarelka2.png",
    title: "Печенье",
    price: 100,
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt, neque sed posuere hendrerit, enim massa condimentum lacus, in convallis. ",
    size: 10,
    color: const Color(0xff78d45f),
    category: "Печенье",
  ),
];
