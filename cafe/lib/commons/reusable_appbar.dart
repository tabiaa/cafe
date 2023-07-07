import 'package:flutter/material.dart';
class ReusableAppBar extends StatelessWidget {
  final String AppBarTitle;
  const ReusableAppBar({Key? key,
    required this.AppBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
            elevation: 0.0,
            backgroundColor: Color(0xffffffff),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Color(0xFFA7A7A7),
               
              onPressed: () {  Navigator.pop(
                                      context,
                                    );
                                },
            ),
            title: Text("${AppBarTitle}", style: TextStyle(color: Color(0xFFB6B5B4), fontSize: 16,letterSpacing: 1),),
       
    );
  }
}