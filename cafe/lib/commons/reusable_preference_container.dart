import 'package:flutter/material.dart';

class ReusablePreferenceContainer extends StatelessWidget {
  final String text;
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;
  final VoidCallback? onPressed;
  final double size1;
  final double size2;
  final double size3;
  const ReusablePreferenceContainer({
    super.key,
    required this.text,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.onPressed,
    required this.size1,
    required this.size2,
    required this.size3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          Row(
            children: [
              IconButton(
                icon: icon1,
                iconSize: size1,
                onPressed: onPressed,
              ),
              IconButton(
                icon: icon2,
                iconSize: size2,
                onPressed: onPressed,
              ),
              IconButton(
                icon: icon3,
                iconSize: size3,
                onPressed: onPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
