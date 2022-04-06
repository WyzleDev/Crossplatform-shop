import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key? key, required this.color, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Оттенки"),
              Row(
                children: const [
                  ColorDot(
                    color: Color(0xFFE3D4B7),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFC64B4B),
                    isSelected: false,
                  ),
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: false,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                style: const TextStyle(color: kTextColor),
                children: [
                  const TextSpan(text: "Размер\n"),
                  TextSpan(
                      text: "${product.size} см",
                      style: Theme.of(context)
                          .textTheme
                          .headline5),
                ]),
          ),
        )
      ],
    );
  }
}