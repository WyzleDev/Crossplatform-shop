import 'package:flutter/material.dart';
import 'package:foxgold1/constant.dart';
import 'package:foxgold1/models/product.dart';
import 'package:foxgold1/screens/cart/components/cart_controller.dart';
import 'package:get/get.dart';

class AddToCart extends StatelessWidget {
  final cartController = Get.put(CartController());
  AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color)),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: product.color,),
              onPressed: () {
                cartController.addProduct(product);
              },
            ),
          ),
          Expanded(
            child: SizedBox(
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: product.color,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(18))),
                  child: Text(
                    "Купить".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )),
          )
        ],
      ),
    );
  }
}