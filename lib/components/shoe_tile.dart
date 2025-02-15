import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 320,
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
        ],
      ),
    );
  }
}
