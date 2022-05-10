import 'package:airjordan1shop/constants.dart';
import 'package:airjordan1shop/models/product.dart';
import 'package:flutter/material.dart';

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
              const Text('Color'),
              Row(
                children: const [
                  ColorDot(
                    color: kColor1,
                    isSelected: true,
                  ),
                  ColorDot(color: kColor2),
                  ColorDot(color: kColor3),
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
                const TextSpan(
                  text: 'Size\n',
                ),
                TextSpan(
                  text: product.size.toString() + ' US',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                )
              ])),
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ? color : Colors.transparent),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
