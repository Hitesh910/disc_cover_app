import 'package:discover_app/utils/global.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart "), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(cartList.length, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(color: Colors.grey.shade400,borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.center,
                    child: Image(image: AssetImage("${cartList[index]['image']}"))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${cartList[index]['name']}",style: const TextStyle(fontSize: 25,fontWeight:  FontWeight.bold)),
                      Text("${cartList[index]['rating']}",style: const TextStyle(fontSize: 15)),
                      const SizedBox(height: 20,),
                      Text("₹${cartList[index]['price']}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(onTap: () {
                  setState(() {
                    cartList.removeAt(index);
                  });
                },
                    child: const Icon(Icons.delete,size: 35,)),
              ],
            ),

          ))
        ),
      ),
    );
  }
}
