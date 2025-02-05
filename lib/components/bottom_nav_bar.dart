import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavBar extends StatefulWidget {
  const MyButtonNavBar({super.key});

  @override
  State<MyButtonNavBar> createState() => _MyButtonNavBarState();
}

class _MyButtonNavBarState extends State<MyButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey[100],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
