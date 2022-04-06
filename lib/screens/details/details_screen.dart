import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/models/product.dart';
import 'package:foxgold1/screens/cart/cart_screen.dart';
import 'package:foxgold1/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartScreen())),
            icon: const Icon(Icons.shopping_cart_outlined)),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}