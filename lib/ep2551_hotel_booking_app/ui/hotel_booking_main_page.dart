import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HotelBookingMainPage extends StatefulWidget {
  const HotelBookingMainPage({super.key});

  @override
  State<HotelBookingMainPage> createState() => _HotelBookingMainPageState();
}

class _HotelBookingMainPageState extends State<HotelBookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 16,
                      crossAxisAlignment: .start,
                      children: [
                        Row(
                          spacing: 12,
                          children: [
                            Expanded(
                              child: Column(
                                spacing: 4,
                                crossAxisAlignment: .start,
                                children: [
                                  Text("Location"),
                                  Row(
                                    spacing: 4,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('New York, USA'),
                                      Icon(Icons.keyboard_arrow_down),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: .circular(12),
                              ),
                              child: Badge(
                                child: HugeIcon(
                                  icon: HugeIcons.strokeRoundedNotification01,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 12,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: .circular(12),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.search),
                                    hintText: "Search",
                                    border: .none,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: .all(12),
                              decoration: BoxDecoration(
                                borderRadius: .circular(12),
                                color: Colors.blue,
                              ),
                              child: Icon(Icons.tune, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    spacing: 12,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Recommended Hotel",
                              style: TextStyle(fontWeight: .bold, fontSize: 18),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.blue,
                              ),
                              child: Text('See all'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 280,
                        child: ListView.builder(
                          scrollDirection: .horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 200,
                              margin: .only(left: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: .circular(12),
                              ),
                              padding: .all(12),
                              child: Column(
                                crossAxisAlignment: .start,
                                spacing: 12,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: .circular(12),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    spacing: 4,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.grey[100],
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            child: Text(
                                              "20%Off",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 10,
                                                fontWeight: .bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.grey[100],
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            child: Row(
                                              spacing: 4,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 14,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  "4.6",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "OasisOverture",
                                        style: TextStyle(fontWeight: .bold),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on, size: 14),
                                          Text(
                                            "New York, USA",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("\$530"),
                                          Text("/height"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text("Nearby Hotel"),
                            TextButton(onPressed: () {}, child: Text('See all')),
                          ],
                        ),
                      ),
                      Container(height: 260, child: Placeholder()),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: .only(
                  topLeft: .circular(24),
                  topRight: .circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[200]!,
                    spreadRadius: 4,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                        Text("Home"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedSearch01),
                        Text("Explore"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedFavourite),
                        Text("Favorite"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedBubbleChat),
                        Text("Messagee"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedListView),
                        Text("Orders"),
                      ],
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
