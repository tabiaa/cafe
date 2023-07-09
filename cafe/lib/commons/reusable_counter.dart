import 'package:flutter/material.dart';

class ReusableCounter extends StatelessWidget {
  final int value;
  final Function() onIncrementPressed;
  final Function() onDecrementPressed;
  const ReusableCounter(
      {super.key,
      required this.value,
      required this.onDecrementPressed,
      required this.onIncrementPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
  Text(
          "${value}",
         style: TextStyle(color: Color(0xFF8E8986), fontSize: 16,letterSpacing: 1),
        ),
          const SizedBox(width: 12),
            GestureDetector(
              onTap: onIncrementPressed,
              child: Container(
                 decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),),
        border: Border.all(
          color: Colors.black, 
          width: 1,
        ),
      ),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
          
            const SizedBox(width: 12),
            GestureDetector(
              onTap: onDecrementPressed,
              child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20),),
        color: Colors.white,
        border: Border.all(
          color: Colors.black, 
          width: 1,
        ),
      ),
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
              )),
          ],
        )
      ],
    );
  }
}




