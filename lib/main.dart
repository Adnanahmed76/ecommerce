import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) =>
          MaterialApp(debugShowCheckedModeBanner: false, home: IntroPage()),
    );
  }
}
