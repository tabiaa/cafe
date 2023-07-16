import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'package:flutter_app/commons/reusable_button.dart';
enum AuthMethod { Register, Login }

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
   AuthMethod? selectedAuthMethod;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            height: size.height*0.4,
            width: size.width,
            decoration: BoxDecoration(
                color: Color(0xFFF5E4D0) ,
                borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              image: DecorationImage(
                image: AssetImage('assets/get_started.png')
              )
            ),
          ),
          SizedBox(height: 20,),
          Text("Get the best coffee",style: Theme.of(context).textTheme.displayLarge,),
          Text("in town!",style: Theme.of(context).textTheme.displayLarge,),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,height: 40,
                child: ReusableButton(
                  buttonText: 'Register',
                  onPressed: () {
                    setState(() {
                      selectedAuthMethod = AuthMethod.Register;
                    });
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),);},
                   bgColor: selectedAuthMethod == AuthMethod.Register
                                ? Colors.white
                                : Colors.brown,
                   txtColor: selectedAuthMethod == AuthMethod.Register
                                ? Colors.brown
                                : Colors.white,
                ),
              ),
              SizedBox(width: 15,),
             SizedBox(
               width: 100,height: 40,
               child: ReusableButton(
                  buttonText: 'Login',
                  onPressed: () {
                    setState(() {
                      selectedAuthMethod = AuthMethod.Login;
                    });
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),);},
                   bgColor: selectedAuthMethod == AuthMethod.Login
                                ? Colors.white
                                : Colors.brown,
                   txtColor: selectedAuthMethod == AuthMethod.Login
                                ? Colors.brown
                                : Colors.white,
                ),
             ),

            ],
          )
        ],
      ),
    );
  }
}