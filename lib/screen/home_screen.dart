import 'package:discover_app/screen/cart_screen.dart';
import 'package:discover_app/utils/global.dart';
import 'package:flutter/material.dart';

import 'product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double slider = 0.5;
  int selected = 10000;
  RangeValues rangeValues = RangeValues(10000, 100000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'cart', arguments: CartScreen());
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12)),
              child:
                  const Icon(Icons.shopping_bag_outlined, color: Colors.black),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15)),
                    const Icon(
                      (Icons.search),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/Image/Ads.jpeg"),
                      fit: BoxFit.fill),
                ),
                //child: Image.asset("assets/Image/Ads.jpeg",fit: BoxFit.cover,),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.greenAccent.shade400,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.shade400,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text("All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal)),
                    ),
                    Row(
                        children: List.generate(
                      productList.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 42,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: Text("${productList[index]['Name']}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.normal)),
                      ),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                value: selected,
                isExpanded: true,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Helo",
                    ),
                    value: 10000,
                  ),
                  DropdownMenuItem(
                    child: Text("Hii"),
                    value: 20000,
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                },
              ),
              Text("${rangeValues.start.toInt()}-${rangeValues.end.toInt()}"),
              RangeSlider(
                values: rangeValues,
                max: 100000,
                divisions: 20,
                onChanged: (value) {
                  setState(() {
                    rangeValues = value;
                  });
                },
              ),
              //  Slider(
              //    value: slider,
              //    max: 10000,
              //    divisions: 20,
              //
              //    onChanged: (value) {
              //      setState(() {
              //        slider = value;
              //      });
              //    },
              //  ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Mobile phnes",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        mobileList.length,
                        (index) => InkWell(
                          onTap: () {
                            Map m1 = mobileList[index];
                            Navigator.pushNamed(context, 'product',
                                arguments: m1);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 170,
                                  width: 180,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${mobileList[index]['image']}"))),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Text(
                                      "${mobileList[index]['name']}",
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    const Icon(Icons.star_rate,
                                        color: Colors.amber),
                                    Text(
                                      "${mobileList[index]['rating']}",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "₹${mobileList[index]['price']}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Laptop",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        laptopList.length,
                        (index) => InkWell(
                          onTap: () {
                            Map m2 = laptopList[index];
                            Navigator.pushNamed(context, 'product',
                                arguments: m2);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 170,
                                  width: 180,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${laptopList[index]['image']}"))),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Text(
                                      "${laptopList[index]['name']}",
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Icon(Icons.star_rate,
                                        color: Colors.amber),
                                    Text(
                                      "${laptopList[index]['rating']}",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "₹${laptopList[index]['price']}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
