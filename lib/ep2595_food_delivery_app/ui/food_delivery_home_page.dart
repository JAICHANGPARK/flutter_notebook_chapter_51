import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 239, 234, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.search),
                        ),
                        Expanded(
                          child: Column(
                            spacing: 4,
                            children: [
                              Text("Location"),
                              Row(
                                spacing: 6,
                                mainAxisAlignment: .center,
                                crossAxisAlignment: .center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.deepOrange,
                                  ),
                                  Text(
                                    "New York, USA",
                                    style: TextStyle(
                                      fontWeight: .bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.shopping_cart_outlined),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: .only(left: 16),
                    height: 42,
                    child: ListView(
                      scrollDirection: .horizontal,
                      children: [
                        Container(
                          padding: .symmetric(horizontal: 16),
                          margin: .only(right: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.fire_truck_outlined),
                              Text("Pickup"),
                            ],
                          ),
                        ),
                        Container(
                          padding: .symmetric(horizontal: 16),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.white,
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.timelapse),
                              Text("Under 30 min"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: .start,
                        children: [
                          Container(
                            height: 180,
                            width: .infinity,
                            margin: .symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(16),
                              ),
                              color: Colors.black,
                            ),
                            child: Column(
                              mainAxisSize: .max,
                              children: [Text("Free delivery for spaghetti")],
                            ),
                          ),
                          Center(
                            child: SmoothPageIndicator(
                              controller: PageController(),
                              count: 4,
                            ),
                          ),
                          Container(
                            height: 120,

                            padding: .only(left: 16),
                            child: ListView.builder(
                              scrollDirection: .horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: .only(right: 16),
                                  child: Column(
                                    spacing: 12,
                                    children: [
                                      CircleAvatar(
                                        radius: 38,
                                        backgroundColor: Colors.white,
                                      ),
                                      Text("Burger"),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Text(
                                  'Coffee & tea moments',
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                  ),
                                  child: Text("See all"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: List.generate(4, (index) {
                                return Container(
                                  margin: .only(bottom: 16),
                                  height: 140,
                                  padding: .all(12),
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    spacing: 16,
                                    children: [
                                      Container(
                                        width: 160,
                                        decoration: ShapeDecoration(
                                          shape: RoundedSuperellipseBorder(
                                            borderRadius: .circular(16),
                                          ),
                                          color: Colors.brown[50],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          spacing: 5,
                                          children: [
                                            Row(
                                              spacing: 8,
                                              children: [
                                                Text('Maccchiato'),
                                                Spacer(),
                                                Icon(Icons.star),
                                                Text("4.5")
                                              ],
                                            ),
                                            Row(
                                              spacing: 5,
                                              children: [
                                                Icon(Icons.timelapse),
                                                Text("24 min 500 Km")
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
