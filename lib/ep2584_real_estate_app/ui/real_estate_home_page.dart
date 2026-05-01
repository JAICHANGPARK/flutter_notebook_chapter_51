import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topRight,
                  end: .bottomLeft,
                  colors: [
                    Color.fromRGBO(242, 248, 221, 1),
                    Color.fromRGBO(240, 246, 239, 1),
                    Color.fromRGBO(240, 247, 242, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: SafeArea(
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 12,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.grey[400]!),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.menu, size: 24),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: .circle,
                            border: .all(color: Colors.grey[400]!),
                            color: Colors.white,
                          ),
                          child: Badge(
                            child: Icon(Icons.notifications_none, size: 29),
                            backgroundColor: Colors.greenAccent,
                          ),
                        ),
                        CircleAvatar(radius: 28),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 24,
                      children: [
                        Expanded(
                          child: Text(
                            "Made for You\nExplore Properties",
                            style: TextStyle(fontWeight: .bold, fontSize: 32),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: .all(color: Colors.grey[300]!),
                            color: Colors.white,
                            borderRadius: .circular(32),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 26,
                            horizontal: 16,
                          ),

                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    padding: .only(left: 16),
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 254, 142, 1),
                            borderRadius: .circular(24),
                          ),
                          margin: .only(right: 12),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(fontWeight: .bold, fontSize: 16),
                            ),
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                          margin: .only(right: 12),
                          padding: .only(left: 2, right: 12, top: 2, bottom: 2),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(radius: 24),
                              Text("House", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                          margin: .only(right: 16),
                          padding: .only(left: 4, right: 12),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(radius: 24),
                              Text("Apartment", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                          margin: .only(right: 16),
                          padding: .only(left: 4, right: 12),
                          child: Row(
                            spacing: 8,
                            children: [
                              CircleAvatar(radius: 24),
                              Text("Apartment", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Recomment for You",style: TextStyle(fontSize: 20,
                    ),),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(height: 240, child: Placeholder());
                      },
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
