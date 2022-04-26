import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/models/product.dart';
class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5, fontSize: 16),
      ),
    );
  }
}