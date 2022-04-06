import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:get/get.dart';
import 'cart_controller.dart';
import 'package:foxgold1/models/product.dart';

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard(
      {Key? key,
        required this.controller,
        required this.product,
        required this.index,
        required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleAvatar(
            radius: 40, backgroundImage: Image.asset(product.image).image),
        SizedBox(width: kDefaultPadding,),
        Expanded(child: Text(product.title)),
        IconButton(onPressed: (){controller.addProduct(product);}, icon: const Icon(Icons.add_circle_outline)),
        Text("${quantity}"),
        IconButton(onPressed: (){controller.removeProduct(product);}, icon: const Icon(Icons.remove_circle_outline),),

      ]),
    );
  }
}