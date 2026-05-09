import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'water_bottle_detail_page.dart';

class WaterBottleHomePage extends StatefulWidget {
  const WaterBottleHomePage({super.key});

  @override
  State<WaterBottleHomePage> createState() => _WaterBottleHomePageState();
}

class _WaterBottleHomePageState extends State<WaterBottleHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 232, 231, 1),
      body: Column(
        spacing: 24,
        children: [
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(
                  borderRadius: .only(
                    bottomLeft: .circular(62),
                    bottomRight: .circular(62),
                  ),
                ),
                gradient: LinearGradient(
                  begin: .topLeft,
                  end: .bottomRight,
                  colors: [
                    Color.fromRGBO(182, 205, 204, 1),
                    Color.fromRGBO(193, 214, 213, 1),
                  ],
                ),
              ),
              padding: .all(16),
              child: SafeArea(
                bottom: false,
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      spacing: 4,
                      children: [
                        Text(
                          "NEW--Filtered\nwater, instantly",
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.white54),
                            color: Color.fromRGBO(230, 237, 237, 1),
                          ),
                          child: Center(
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedNotification02,
                            ),
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 54,
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.white54),
                            color: Color.fromRGBO(230, 237, 237, 1),
                          ),
                          padding: EdgeInsets.all(14),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: .min,
                      spacing: 6,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(104, 136, 130, 1),
                        ),
                        Container(
                          height: 16,
                          width: 42,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.white38),
                            ),
                            color: Color.fromRGBO(209, 224, 222, 1),
                          ),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(104, 136, 130, 1),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(104, 136, 130, 1),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(104, 136, 130, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 54,
                  child: ListView(
                    children: [
                      Container(
                        margin: .only(right: 12),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(102, 138, 128, 1),
                        ),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: .only(right: 12),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.white38),
                          ),
                          color: Color.fromRGBO(243, 245, 245, 1),
                        ),
                        child: Center(child: Text("Smart")),
                      ),
                      Container(
                        margin: .only(right: 12),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.white38),
                          ),
                          color: Color.fromRGBO(243, 245, 245, 1),
                        ),
                        child: Center(child: Text("Filtered")),
                      ),
                      Container(
                        margin: .only(right: 12),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.white38),
                          ),
                          color: Color.fromRGBO(243, 245, 245, 1),
                        ),
                        child: Center(child: Text("Best Sellers")),
                      ),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 16,
                    children: [
                      Text("Best Picks", style: TextStyle(fontSize: 22)),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return WaterBottleDetailPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 140,
                          padding: .all(12),
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: .circular(32),
                              side: BorderSide(color: Colors.white38),
                            ),
                            color: Color.fromRGBO(244, 246, 246, 1),
                          ),
                          child: Row(
                            spacing: 12,
                            children: [
                              Container(
                                height: 120,
                                width: 100,
                                decoration: ShapeDecoration(
                                  shape: RoundedSuperellipseBorder(
                                    borderRadius: .circular(16),
                                  ),
                                  color: Colors.greenAccent,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        spacing: 4,
                                        crossAxisAlignment: .start,
                                        children: [
                                          Text(
                                            "PureV2",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Self-cleaning bottle",
                                            style: TextStyle(
                                              // fontSize: 13
                                            ),
                                          ),
                                          Text("24h cold-UV-C"),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: .spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          radius: 22,
                                          backgroundColor: Color.fromRGBO(
                                            110,
                                            143,
                                            134,
                                            1,
                                          ),
                                          foregroundColor: Colors.white,
                                          child: Icon(
                                            Icons.shopping_bag_outlined,
                                          ),
                                        ),
                                        Text("\$129.00"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 140,
                        padding: .all(12),
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: .circular(32),
                            side: BorderSide(color: Colors.white38),
                          ),
                          color: Color.fromRGBO(244, 246, 246, 1),
                        ),
                        child: Row(
                          spacing: 12,
                          children: [
                            Container(
                              height: 120,
                              width: 100,
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: .circular(16),
                                ),
                                color: Colors.greenAccent,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "PureV2",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Self-cleaning bottle",
                                          style: TextStyle(
                                            // fontSize: 13
                                          ),
                                        ),
                                        Text("24h cold-UV-C"),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Color.fromRGBO(
                                          110,
                                          143,
                                          134,
                                          1,
                                        ),
                                        foregroundColor: Colors.white,
                                        child: Icon(
                                          Icons.shopping_bag_outlined,
                                        ),
                                      ),
                                      Text("\$129.00"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
