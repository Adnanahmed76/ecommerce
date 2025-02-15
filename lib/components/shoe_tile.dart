import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
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

          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey),
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
                          fontSize: 20),
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
                //plut button
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
