import 'package:flutter/material.dart';
import 'package:zeewatch/cartscreen.dart';
import 'package:zeewatch/dynaiccontect.dart';
import 'package:zeewatch/productlist.dart';

class watchapp extends StatefulWidget {
  const watchapp({Key? key}) : super(key: key);

  @override
  _watchappState createState() => _watchappState();
}

class _watchappState extends State<watchapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WatchApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => cartpages()));
            },
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Discover",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
          dynamiccontent(),

          //r2

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => products()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("Apple Watch"),
                                Text("Rs:2000"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 20,
                          child: Image.asset(
                            "assets/images/s2.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //stack2

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => products()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text("Apple Watch"),
                                  Text("Rs:2000"),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 20,
                            child: Image.asset(
                              "assets/images/s2.jpg",
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Apple Watch"),
                                Text("Rs:2000"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 20,
                          child: Image.asset(
                            "assets/images/s2.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //s4
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Apple Watch"),
                                Text("Rs:2000"),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 20,
                          child: Image.asset(
                            "assets/images/s2.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Discount Offer

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Discount Offers",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 70,
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(color: Colors.green),
                              ),
                            ),
                            Image.asset(
                              "assets/images/s7.jpg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                //
                //
                //
                //STACK2

                Stack(children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 70,
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(color: Colors.green),
                              ),
                            ),
                            Image.asset(
                              "assets/images/s7.jpg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                //
                //
                //
                Stack(children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 70,
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(color: Colors.green),
                              ),
                            ),
                            Image.asset(
                              "assets/images/s7.jpg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),

                //

                Stack(children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 70,
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(color: Colors.green),
                              ),
                            ),
                            Image.asset(
                              "assets/images/s7.jpg",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
