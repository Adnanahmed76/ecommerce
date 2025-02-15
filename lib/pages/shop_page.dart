import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(fontSize: 15, color: Colors.grey[3000]),
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Text(
                "See all",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ShoeTile(
                    shoe: Shoe(
                        name: "Nike",
                        price: "400",
                        imagePath: "lib/images/adidasone.jpg",
                        description: "Cool Shoe"),
                  );
                }))
      ],
    );
  }
}
