import 'package:flutter/material.dart';
import 'preferences_scree.dart';
import  "package:flutter_app/commons/reusable_appbar2.dart";
import 'package:flutter_app/commons/reusable_app_bar.dart';
import 'get_started_screen.dart';
import 'cart_screen.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int price;
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
         width:size.width,
         child: Column(
          children: [
            ReusableAppBar(
              AppBarTitle: "Menu",
            ),
          ReusableAppbar2(
            appBarText: "Espresso",
            imageAddress: "assets/logo_and_espresso.png",
             onPressed:(){
              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesScreen(
                                      appBarText: "Espresso",
            imageAddress: "assets/logo_and_espresso.png",
      price:150,
                                      )));
          }),
           ReusableAppbar2(
           
            appBarText: "Cappuccino",
            imageAddress: "assets/cappucino.png",
             onPressed:(){Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesScreen(
                                     appBarText: "Cappuccino",
            imageAddress: "assets/cappucino.png",
             price:300,
                                      )));
          }),
           ReusableAppbar2(
           
            appBarText: "Macciato",
            imageAddress: "assets/macchiato.png",
             onPressed:(){Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesScreen(
                                      appBarText: "Macciato",
            imageAddress: "assets/macchiato.png",
              price:350,
                                      )));
          }),
           ReusableAppbar2(
         
            appBarText: "Mocha",
            imageAddress: "assets/mocha.png",
             onPressed:(){Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesScreen(
                                      appBarText: "Mocha",
            imageAddress: "assets/mocha.png",
             price:450,
                                      )));
          }),
           ReusableAppbar2(
          
            appBarText: "Latte",
            imageAddress: "assets/latte.png",
             onPressed:(){Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PreferencesScreen(
                                    appBarText: "Latte",
            imageAddress: "assets/latte.png",
           price:250,
                                      )));
          }),
        
            ],
         ),
      ),bottomNavigationBar: BottomAppBar(
          color: Color(0xFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10),
                child: Container(
                  child: IconButton(
                    icon: Icon(Icons.home),
                    color: Color(0xFFA7A7A7),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GetStartedScreen()
                      ));
                    },      
                  ),
                ),
              ),
               Container(
                 child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Color(0xFFA7A7A7),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen(selectedItems: [],)
                      ));
                    },
                  ),
               ),
                Container(
                  child: IconButton(
                  icon: Icon(Icons.logout),
                  color: Color(0xFFA7A7A7),
                  onPressed: () {
                    Navigator.pop(context
                      );
                    },
                  ),
                ),
            ],
          ),
      ),
    );
  }
}




