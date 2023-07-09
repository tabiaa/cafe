import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/commons/reusable_counter.dart';
import 'package:flutter_app/commons/reusable_appbar.dart';
import 'package:flutter_app/commons/reusable_appbar3.dart';
import 'package:flutter_app/commons/reusable_button.dart';
import 'cart_screen.dart';
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key, required this.appBarText, required this.imageAddress,});
  
  final String appBarText;
  final String imageAddress;
  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  int price=350;
   int amount=1;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        
         height: size.height,
         width:size.width,
         child: Column(
          children: [
            ReusableAppBar(
              AppBarTitle: "Preferences",
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF5E4D0),
                
              ),
              child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child:
Container(
  height: 70,
  child:
 Image.asset(widget.imageAddress)),
                ),
             
              ],
              ),
            ),
             AppBar(
  
            backgroundColor: Color(0xffffffff),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                 Text(widget.appBarText, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
Text("Rs ${price}", style: TextStyle(color: Colors.black, fontSize: 14),),
                
                ],
                
              ),
               ReusableCounter(
                          value: amount,
                          onIncrementPressed: () {
                            setState(() {
                             price=price+350;
                              amount++;
                            });
                          },
                          onDecrementPressed: () {
                            setState(() {
                              if (amount >= 1) {
                               price=price-350;
                                amount--;
                              }
                            });
                          },
                        ),
            ],
            
          ),
       
            ),
           ReusableAppBar3(
            iconName1:Icon(Icons.coffee),
             iconName2:Icon(Icons.coffee),
              iconName3:Icon(Icons.coffee),
            heading: "Size",
            size1: 18,
            size2: 24,
            size3: 32,
            onPressed: (){
            },
           ),
            ReusableAppBar3(
            iconName1:Icon(Icons.close),
             iconName2:Icon(CupertinoIcons.cube),
              iconName3:Icon(Icons.auto_awesome_motion),
            heading: "Sugar",
            size1: 24,
            size2: 24,
            size3: 24,
            onPressed: (){
            },
           ),
            ReusableAppBar3(
            iconName1:Icon(Icons.close),
             iconName2:Icon(Icons.cloud_queue),
              iconName3:Icon(Icons.ac_unit),
            heading: "Additions",
            size1: 24,
            size2: 24,
            size3: 24,
            onPressed: (){
            },
           ),  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 20,left:20),
          child: Text("Total", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
        ), Padding(
          padding: const EdgeInsets.only(bottom: 20,top: 20,right: 20),
          child: Text("Rs ${price}", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.bold),),
        ),
      ],
    ),
           SizedBox(
            height:48,
      width: size.width,
             child: ReusableButton(
  buttonText: 'Login',
  
  onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>CartScreen(
                                        appBarText: widget.appBarText,
        imageAddress: widget.imageAddress,
        price: price,
                                        )));
                         
                        },txtColor: Colors.white,
                     bgColor: Colors.brown,),
           ),
          ],
         ),
      ),
    );
  }
}



