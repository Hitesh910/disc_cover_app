import 'package:discover_app/screen/cart.dart';
import 'package:discover_app/screen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context) => Homescreen(),
        'product':(context) => CartScreen(),
    }
    ),
  );
}
