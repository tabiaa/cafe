import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'package:flutter_app/commons/reusable_button.dart';

enum AuthMethod { register, login }

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  AuthMethod? selectedAuthMethod;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 80),
            height: size.height * 0.4,
            width: size.width,
            decoration: const BoxDecoration(
                color: Color(0xFFF5E4D0),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/get_started.png'))),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Get the best coffee",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "in town!",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 40,
                child: ReusableButton(
                  buttonText: 'Register',
                  onPressed: () {
                    setState(() {
                      selectedAuthMethod = AuthMethod.register;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()),
                    );
                  },
                  bgColor: selectedAuthMethod == AuthMethod.register
                      ? Colors.white
                      : Colors.brown,
                  txtColor: selectedAuthMethod == AuthMethod.register
                      ? Colors.brown
                      : Colors.white,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 100,
                height: 40,
                child: ReusableButton(
                  buttonText: 'Login',
                  onPressed: () {
                    setState(() {
                      selectedAuthMethod = AuthMethod.login;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  bgColor: selectedAuthMethod == AuthMethod.login
                      ? Colors.white
                      : Colors.brown,
                  txtColor: selectedAuthMethod == AuthMethod.login
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
