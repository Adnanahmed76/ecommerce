import 'package:ecommerce/components/bottom_nav_bar.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this is the selected index is to control the buttom nav bar
  int _selectedIndex = 0;
//this method will update our selected index
  void navigatorButtombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages to display
  final List<Widget> _pages = [const ShopPage(), const CartPage()];
//when the user tab on the buttom bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                )),
          )),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/logos.png',
                )),

                //other pages
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      "about",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "logout",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: MyButtonNavBar(
        onTabChange: (index) => navigatorButtombar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
