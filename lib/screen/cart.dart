import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 410,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Row(children: [
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: const CircleBorder(),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.arrow_back,color: Colors.black),
                  ),
                  const Spacer(),
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: const CircleBorder(),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.favorite,color: Colors.pink),
                  ),
                  FloatingActionButton.small(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    shape: const CircleBorder(),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.star,color: Colors.amber),
                  ),
                ]),
                Image(image: AssetImage("${m1['image']}"), height: 350)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${m1['name']}", style: const TextStyle(fontSize: 35)),
                Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child: const Text("% On sale",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Icons.star_rate, color: Colors.amber),
                        Text("${m1['rating']}",
                            style: const TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 15)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up,color: Colors.green,),
                      SizedBox(width: 5,),
                      Text("94%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "117 reviews",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at "
                "its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.",
                style:
                    TextStyle(letterSpacing: 1.2, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.shade700,
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  child:
                      const Text("1 TB", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  alignment: Alignment.center,
                  child: const Text("825 GB",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  alignment: Alignment.center,
                  child: const Text("512 GB",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 10),
                  child: Column(children: [
                    const Text(
                      "₹ 450000.00",
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      "₹ ${m1['price']}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w700),
                    )
                  ]),
                ),
                FloatingActionButton.extended(
                  onPressed: () {},
                  label: const Text("Add to cart"),
                  icon: const Icon(Icons.shopping_cart),
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
