import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/commons/reusable_app_bar.dart';
import 'package:flutter_app/commons/reusable_container.dart';
import 'package:flutter_app/commons/reusable_counter.dart';
import 'package:flutter_app/commons/reusable_preference_container.dart';
import 'package:flutter_app/commons/reusable_button.dart';
import 'cart_screen.dart';
import 'package:flutter_app/models/cart_items_model.dart';
import 'package:flutter_app/commons/reusable_appbar2.dart';
import 'package:flutter_app/models/items_model.dart';
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key,required this.imageAddress,required this.appBarText,required this.price});
  final String imageAddress;
  final String appBarText;
  final int price;
  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  int quantity = 1;
  List<CartItemModel> selectedItems=[];
void addToCart(ItemModel item) {
    bool itemExists = false;
    for (var cartItem in selectedItems) {
      if (cartItem.name == item.name) {
        cartItem.quantity++;
        itemExists = true;
        break;
      }
    }
    if (!itemExists) {
      selectedItems.add(
        CartItemModel(
          name: item.name,
          price: item.price,
          profileImage: item.profileImage,
          quantity: quantity,
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    int updatedPrice=widget.price*quantity;
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            ReusableAppBar(
              AppBarTitle: "Preferences"
             ),
             Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF5E4D0),),
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(50.0),
                    child: Container(
                      height: 100,
                      child: Image.asset(widget.imageAddress),
                    ),)
                  ],
                ),
             ),
             Container(
              padding: EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.appBarText,style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                      Text("Rs ${updatedPrice}",style: TextStyle(color: Colors.black, fontSize: 14),)
                    ],
                  ),
                  ReusableCounter(
                    value: quantity,
                    onIncrementPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          onDecrementPressed: () {
                            setState(() {
                              if (quantity > 1) {
                                quantity--;
                              }
                            });
                          },
                  ),
                ],
              ),
             ),
             ReusableContainer(),
             ReusablePreferenceContainer(
              text: "Size",
              icon1: Icon(Icons.coffee),
              icon2: Icon(Icons.coffee),
              icon3: Icon(Icons.coffee),
              size1: 18,
              size2: 24,
              size3: 32,
              onPressed: (){},
             ),
             ReusableContainer(),
             ReusablePreferenceContainer(
              text: "Sugar",
              icon1: Icon(Icons.close),
              icon2: Icon(CupertinoIcons.cube),
              icon3: Icon(Icons.auto_awesome_motion),
              size1: 24,
              size2: 24,
              size3: 24,
              onPressed: (){},
             ),
             ReusableContainer(),
             ReusablePreferenceContainer(
              text: "Addition",
              icon1: Icon(Icons.close),
              icon2: Icon(Icons.cloud_queue),
              icon3: Icon(Icons.ac_unit),
              size1: 24,
              size2: 24,
              size3: 24,
              onPressed: (){},
             ),
             ReusableContainer(),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Total: ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200)),
                   Text("${updatedPrice} Rs",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w900,color: Colors.black))
                 ],
               ),
             ),
             Padding(
              padding: const EdgeInsets.only(left:30,right:30,top:12),
               child: SizedBox(
                height: 48,
                width: size.width,
                 child: ReusableButton(
                    buttonText: 'Add To Cart',
                    onPressed: () {
                      addToCart(
                      ItemModel(
                        name: widget.appBarText,
                        price: widget.price,
                        profileImage: widget.imageAddress,
                      ),
                    );
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen(selectedItems: selectedItems,
                    )),);},
                     bgColor: Colors.brown,
                     txtColor: Colors.white,
                  ),
               ),
             ),
          ],
        ),
      ),
    );
  }
}