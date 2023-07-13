import 'package:flutter/material.dart';
import 'package:flutter_app/commons/reusable_app_bar.dart';
import 'package:flutter_app/models/items_model.dart';
import 'package:flutter_app/screens/preferences_scree.dart';
import 'get_started_screen.dart';
import 'login_screen.dart';
import 'package:flutter_app/commons/reusable_container.dart';
import 'cart_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            const ReusableAppBar(txtTitle: "Menu"),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    leading: SizedBox(
                        width: 40,
                        height: 40,
                        child: Image.asset(itemData[index].profileImage)),
                    title: Text(itemData[index].name),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PreferencesScreen(
                                    image: (itemData[index].profileImage),
                                    text: itemData[index].name,
                                    price: itemData[index].price,
                                  )),
                        );
                      },
                    ),
                  );
                },
                separatorBuilder: (context, index) => const ReusableContainer(),
                itemCount: itemData.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.home),
                color: const Color(0xFFA7A7A7),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetStartedScreen()));
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: const Color(0xFFA7A7A7),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen(
                              selectedItems: [],
                            )));
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              color: const Color(0xFFA7A7A7),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
