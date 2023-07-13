import 'package:flutter/material.dart';

class ReusableAppBar extends StatelessWidget {
  final String txtTitle;
  const ReusableAppBar({super.key, required this.txtTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        txtTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 23,
        ),
      ),
    );
  }
}
