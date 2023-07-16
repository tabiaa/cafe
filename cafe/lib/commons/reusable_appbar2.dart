import 'package:flutter/material.dart';
class ReusableAppbar2 extends StatelessWidget {
    final String appBarText;
  final VoidCallback? onPressed;
  final String imageAddress;
  const ReusableAppbar2({super.key,  required this.appBarText,
    required this.onPressed, required this.imageAddress,});

  @override
  Widget build(BuildContext context) {
    return   AppBar(
      actions: [
        IconButton(
              icon: Icon(Icons.arrow_forward_ios),
                color: Color(0xFFA7A7A7),
              onPressed:onPressed
            ),
      ],
            backgroundColor: Color(0xffffffff),
            leading: Padding(
              padding: const EdgeInsets.only(left:10),
              child: IconButton(
                icon: Image.asset("${imageAddress}"),
                color: Color(0xFFA7A7A7),
                
                onPressed: () {},
              ),
            ),
            title: Text("${appBarText}", style: TextStyle(color: Color(0xFF8E8986), fontSize: 16,letterSpacing: 1),),
   
    );
  }
}