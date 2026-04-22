import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class BikeRentalHomePage extends StatefulWidget {
  const BikeRentalHomePage({super.key});

  @override
  State<BikeRentalHomePage> createState() => _BikeRentalHomePageState();
}

class _BikeRentalHomePageState extends State<BikeRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 12,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(radius: 30),
                        Expanded(
                          child: Column(
                            spacing: 6,
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Hello, Dream",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                "Good Morning!",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: .bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          child: Badge(
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedNotification01,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(18),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: .zero,
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: .start,
                        children: [
                          Container(
                            padding: .only(left: 16),
                            height: 64,
                            child: ListView(
                              scrollDirection: .horizontal,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    border: .all(color: Colors.grey[200]!),
                                  ),
                                  padding: .all(14),
                                  child: Icon(Icons.search),
                                  margin: .only(right: 12),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.black,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  margin: .only(right: 12),
                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(
                                        Icons.pedal_bike,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "E-Bicycles",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.grey[200]!,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  margin: .only(right: 12),
                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(Icons.electric_scooter_outlined),
                                      Text("E-Scooters"),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.grey[200]!,
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  margin: .only(right: 12),
                                  child: Row(
                                    spacing: 5,
                                    children: [
                                      Icon(Icons.electric_scooter_outlined),
                                      Text("E-Scooters"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 500,
                            padding: EdgeInsets.only(left: 16),
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: .horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: .only(right: 16),
                                  width: 320,
                                  decoration: ShapeDecoration(
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(24),
                                    ),
                                    color: Color.fromRGBO(227, 230, 252, 1),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 16,
                                        top: 16,
                                        bottom: 16,
                                        right: 16,
                                        child: Column(
                                          crossAxisAlignment: .start,
                                          children: [
                                            Text("Urban Glide XX Bike"),
                                            Text("Price:"),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(text: "\$2.7"),
                                                  TextSpan(text: "p/m"),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 62,
                                              decoration: ShapeDecoration(shape: StadiumBorder(),color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Text(
                                  "Find Bikes Nearby",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Spacer(),
                                Text("View more"),
                                Icon(Icons.keyboard_arrow_right),
                              ],
                            ),
                          ),
                          ...List.generate(5, (idx) {
                            return Container(
                              margin: .symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: .circular(16),
                                border: .all(color: Colors.grey),
                              ),
                              height: 120,
                              child: Row(children: []),
                            );
                          }),
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
