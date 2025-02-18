import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add show to cart

  void addShowToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert  the user shoe successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully added!"),
              content: Text("Check Your Cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search bar
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[3000]),
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                ),

                // meessage
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    "everyone Files.. fly longer than oother",
                    style: TextStyle(color: Colors.grey[900]),
                  ),
                ),
                //hot picks

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Picks🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 24),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //list for shoe for sale
                Expanded(
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          //create a shoe
                          Shoe shoe = value.getShoesList()[index];

                          //return the shoe
                          return ShoeTile(
                              shoe: shoe, onTap: () => addShowToCart(shoe));
                        })),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
