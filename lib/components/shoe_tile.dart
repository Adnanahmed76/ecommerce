import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          //Shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              shoe.imagePath,
            ),
          ),
          //description
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey),
            ),
          ),

          //price + details for product
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //price

                    Text(
                      "\$" + shoe.price,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      // Center the icon
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20, // Adjust icon size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
