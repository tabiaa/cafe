import 'package:flutter/material.dart';
class ReusableAppBar3 extends StatelessWidget {
  
final Icon iconName1;
final Icon iconName2;
final Icon iconName3;
final String heading;
final VoidCallback? onPressed;
final double size1;
final double size2;
final double size3;

  const ReusableAppBar3({super.key, required this.iconName1,required this.iconName2,required this.iconName3, required this.heading, required this.onPressed, required this.size1,required this.size2,required this.size3,});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
              centerTitle: true,
                backgroundColor: Color(0xffffffff),
            leading: Center(child: Text("${heading}", style: TextStyle(color: Color(0xFFB6B5B4), fontSize: 12),)),
       
            title:  Row(
              children: [
                SizedBox(width:120,),
               IconButton(
              icon: iconName1,
              color: Color(0xFFA7A7A7),
               iconSize:size1 ,
              onPressed:onPressed,
            ),
             IconButton(
              icon:iconName2,
              color: Color(0xFFA7A7A7),
               iconSize:size2 ,
              onPressed:onPressed
            ),
             IconButton(
              icon: iconName3,
              color: Color(0xFFA7A7A7),
               iconSize:size3 ,
              onPressed:onPressed,
            ),
              ],
            ),
    
            );
  }
}