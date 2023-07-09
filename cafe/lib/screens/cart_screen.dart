import 'package:flutter/material.dart';
class CartScreen extends StatelessWidget {
   final String appBarText;
  final String imageAddress;
  final int price;
  const CartScreen({super.key,required this.appBarText,
    required this.imageAddress,
    required this.price,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${price}${appBarText}"
        ),
        Image.asset("${imageAddress}"),
      ],
    );
  }}