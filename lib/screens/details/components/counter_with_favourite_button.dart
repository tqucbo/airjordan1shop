import 'package:airjordan1shop/constants.dart';
import 'package:airjordan1shop/screens/details/components/cart_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavouriteButton extends StatelessWidget {
  const CounterWithFavouriteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: const EdgeInsets.all(8.0),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: kFavouriteButtonColor,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        ),
      ],
    );
  }
}

