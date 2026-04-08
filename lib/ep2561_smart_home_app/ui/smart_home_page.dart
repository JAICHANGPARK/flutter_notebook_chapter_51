import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({super.key});

  @override
  State<SmartHomePage> createState() => _SmartHomePageState();
}

class _SmartHomePageState extends State<SmartHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Padding(
              padding: const .symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Welcome,", style: TextStyle(fontSize: 12)),
                            Text("Dreamwalker", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                    ],
                  ),
                  Text(
                    "Smart Home,\nSmooth Service",
                    style: TextStyle(fontSize: 36, fontWeight: .bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(241, 245, 247, 1),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[300],
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedSearch01,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search...",
                              border: .none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 16),
              height: 46,
              child: ListView(
                scrollDirection: .horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 28),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                    margin: EdgeInsets.only(right: 12),
                    child: Center(
                      child: Text("All", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    margin: EdgeInsets.only(right: 12),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(241, 245, 247, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Cleaning",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    margin: EdgeInsets.only(right: 12),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(241, 245, 247, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Plumbers",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(241, 245, 247, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Cleaning",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 42,
                    right: 42,
                    bottom: 16,
                    top: 12,
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(42),
                        ),
                        color: Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 28,
                    right: 28,
                    bottom: 16,
                    top: 26,
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(42),
                        ),
                        color: Color.fromRGBO(238, 240, 244, 1),
                      ),
                      child: Stack(children: []),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    top: 42,
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(42),
                        ),
                        color: Color.fromRGBO(241, 247, 250, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 24,
                            top: 24,
                            right: 24,
                            bottom: 24,
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: 24,
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    CircleAvatar(radius: 24),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE6E9EF),
                                        borderRadius: .circular(62),
                                        
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFD1D9E6),
                                            offset: Offset(18, 18),
                                            blurRadius: 10,
                                            spreadRadius: 1,
                                          ),
                                          BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(4, 4),
                                            spreadRadius: 1,
                                            blurRadius: 10,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        spacing: 4,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colors.orange,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              fontWeight: .bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                  ),
                                  child: Row(
                                    spacing: 4,
                                    children: [
                                      Icon(Icons.cleaning_services, size: 16),
                                      Text("Fresh, Fast Cleaning"),
                                    ],
                                  ),
                                ),
                                Text("Quick Home\nCleaning Service"),
                                Spacer(),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                  ),
                                  child: Row(
                                    spacing: 8,
                                    children: [
                                      CircleAvatar(),
                                      Expanded(child: Text("Book Now")),
                                      CircleAvatar(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 72,
              child: Row(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                spacing: 12,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(38, 46, 50, 1),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(38, 46, 50, 1),
                    ),
                    child: Row(
                      spacing: 2,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedCalendar01,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedShoppingBag01,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(icon: HugeIcons.strokeRoundedUser),
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
    );
  }
}
