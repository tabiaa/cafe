class ItemModel {
  String name, profileImage;
  int price, quantity;
  ItemModel(
      {required this.name,
      required this.profileImage,
      required this.price,
      this.quantity = 1});
}

List<ItemModel> itemData = [
  ItemModel(
    name: "Espresso",
    profileImage: "assets/logo_and_espresso.png",
    price: 350,
  ),
  ItemModel(
    name: "Cappuccino",
    profileImage: "assets/cappucino.png",
    price: 450,
  ),
  ItemModel(
    name: "Macciato",
    profileImage: "assets/macchiato.png",
    price: 500,
  ),
  ItemModel(
    name: "Mocha",
    profileImage: "assets/mocha.png",
    price: 550,
  ),
  ItemModel(
    name: "Latte",
    profileImage: "assets/latte.png",
    price: 480,
  )
];
