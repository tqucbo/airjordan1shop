import 'package:airjordan1shop/constants.dart';
import 'package:airjordan1shop/models/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                child: Image.asset(product.image),
                tag: product.id,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              overflow: TextOverflow.fade,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            '\$' + product.price.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
