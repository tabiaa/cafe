 import 'package:flutter/material.dart';
 import 'get_started_screen.dart';
 import 'package:flutter_app/commons/reusable_button.dart';
class CafeScreen extends StatelessWidget {
  const CafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Color(0xFFF5E4D0) ,
      body: Container(
       
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
                 Container(
                  child: Image.asset("assets/logo_and_espresso.png")),
             
                Container(
                  height: 4,
                  width:100 ,
                  decoration: BoxDecoration(color: Color(0xFF433630)),
                ),
                
                Text("Coffee Shop", style: TextStyle(color: Color(0xFF433630), fontWeight: FontWeight.bold,fontSize:15, letterSpacing:3) ),
                 SizedBox(height:70),
                 ReusableButton(
  buttonText: 'Get Started',
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GetStartedScreen()),
    );
  },
)
            ],
          ),
        ),
      ),
    );
  }
}