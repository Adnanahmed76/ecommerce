import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo
              Image.asset(
                "lib/images/logos.png",
                height: 250,
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),

              //titile
              Text(
                "Just do it",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Brand new sneakers and custom kicks premium quality",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              //start new button

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
