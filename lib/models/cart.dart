import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "236",
        imagePath: 'lib/images/nikee.jpg',
        description:
            "The forward-thinking design of his latest signature shoe"),
    Shoe(
        name: "Air jorden",
        price: "400",
        imagePath: "lib/images/adidasone.jpg",
        description:
            "you \'ve got the hops and the speed-lace up in shoes that enhance"),
    Shoe(
        name: "Air jorden",
        price: "400",
        imagePath: "lib/images/airjordan.jpg",
        description:
            "you \'ve got the hops and the speed-lace up in shoes that enhance"),
    Shoe(
        name: "Air jorden",
        price: "400",
        imagePath: "lib/images/green.jpg",
        description:
            "you \'ve got the hops and the speed-lace up in shoes that enhance"),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoesList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items for cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
