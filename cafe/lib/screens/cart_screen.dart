import 'package:flutter/material.dart';
import 'package:flutter_app/models/cart_items_model.dart';
import 'package:flutter_app/commons/reusable_app_bar.dart';
import 'package:flutter_app/commons/reusable_counter.dart';
import 'package:flutter_app/commons/reusable_container.dart';
import 'package:flutter_app/commons/reusable_button.dart';
import 'menu_screen.dart';
import 'package:flutter_app/models/item_subTotal.dart';

class CartScreen extends StatefulWidget {
  final List<CartItemModel> selectedItems;
  const CartScreen({
    super.key,
    required this.selectedItems,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int calculateUpdatedPrice() {
    int totalPrice = 0;
    for (var item in widget.selectedItems) {
      totalPrice += item.price * item.quantity;
    }
    return totalPrice;
  }

  int tax = 40;
  int deliveryCharges = 200;
  @override
  Widget build(BuildContext context) {
    int updatedPrice = calculateUpdatedPrice();
    SubTotalPrice total = SubTotalPrice(tax, deliveryCharges, updatedPrice);
    total.calculateSubTotal();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const ReusableAppBar(txtTitle: "My Cart"),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final cartItem = widget.selectedItems[index];
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image(
                          height: 75,
                          width: 85,
                          image: AssetImage(cartItem.profileImage),
                        ),
                        // Container(
                        //   height: 50,
                        //   child: Image.asset(cartItem.profileImage),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "    ${cartItem.name}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ReusableCounter(
                              value: cartItem.quantity,
                              onIncrementPressed: () {
                                setState(() {
                                  cartItem.quantity++;
                                });
                              },
                              onDecrementPressed: () {
                                setState(() {
                                  if (cartItem.quantity > 1) {
                                    cartItem.quantity--;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Rs ${cartItem.price}"),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Rs $updatedPrice",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const ReusableContainer(),
                itemCount: widget.selectedItems.length,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Item Total: ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Rs $updatedPrice",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ]),
                  const SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Tax: ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Rs $tax",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ]),
                  const SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Delivery Charges: ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Rs $deliveryCharges",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ]),
                  const SizedBox(height: 15),
                  const ReusableContainer(),
                  const SizedBox(height: 15),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("SubTotal: ",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Text("Rs ${total.subTotal}",
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                      ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 48,
                width: size.width,
                child: ReusableButton(
                  buttonText: 'Add more items',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuScreen()),
                    );
                  },
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
