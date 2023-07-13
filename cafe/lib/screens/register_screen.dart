import 'package:flutter/material.dart';
import 'package:flutter_app/commons/reusable_app_bar.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_app/commons/reusable_text_field.dart';
import 'package:flutter_app/commons/reusable_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController passCtrl = TextEditingController();
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const ReusableAppBar(
              txtTitle: "Register",
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 12),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                            child: Text(
                          "Welcome!",
                          style: Theme.of(context).textTheme.displayLarge,
                        )),
                      ),
                      ReusableTextField(
                        validator: RequiredValidator(errorText: "Required*"),
                        label: "Username",
                      ),
                      ReusableTextField(
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Required*'),
                          EmailValidator(errorText: "Enter a valid email*")
                        ]),
                        label: "Email",
                      ),
                      ReusableTextField(
                        controller: passCtrl,
                        obscure: true,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Required*'),
                          LengthRangeValidator(
                              min: 8,
                              max: 15,
                              errorText: "Password length should be 8-10"),
                        ]),
                        label: "Password",
                      ),
                      ReusableTextField(
                        obscure: true,
                        validator: (val) {
                          if (val != passCtrl.text) {
                            return ("password don't match");
                          } else {
                            return null;
                          }
                        },
                        label: "Confirm Password",
                      ),
                      SizedBox(
                        height: 48,
                        width: size.width,
                        child: ReusableButton(
                          buttonText: 'Register',
                          onPressed: () {
                            if (formKey.currentState!.validate() == true) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            }
                          },
                          txtColor: Colors.white,
                          bgColor: Colors.brown,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        width: size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: const Text(
                              " Login",
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
