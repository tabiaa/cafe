import 'package:flutter/material.dart';
import 'get_started_screen.dart';
import 'package:flutter_app/commons/reusable_button.dart';

class CafeScreen extends StatelessWidget {
  const CafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E4D0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo_and_espresso.png"),
            Container(
              height: 4,
              width: 100,
              decoration: const BoxDecoration(color: Color(0xFF433630)),
            ),
            const Text("Coffee Shop",
                style: TextStyle(
                    color: Color(0xFF433630),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 3)),
            const SizedBox(height: 70),
            SizedBox(
              width: 125,
              height: 35,
              child: ReusableButton(
                buttonText: 'Get Started',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GetStartedScreen()),
                  );
                },
                txtColor: Colors.white,
                bgColor: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
