import 'package:discover_app/screen/cart_screen.dart';
import 'package:discover_app/screen/product_screen.dart';
import 'package:discover_app/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context) => HomeScreen(),
        'product':(context) => ProductScreen(),
        'cart':(context) => CartScreen(),
    }
    ),
  );
}
