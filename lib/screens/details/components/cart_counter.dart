import 'package:airjordan1shop/constants.dart';
import 'package:airjordan1shop/screens/details/components/button_remove_add.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonRemoveAdd(
          icon: Icons.remove,
          press: () {
            setState(() {
              numOfItems = numOfItems <= 1 ? numOfItems : numOfItems - 1;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ButtonRemoveAdd(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems = numOfItems + 1;
            });
          },
        ),
      ],
    );
  }
}

