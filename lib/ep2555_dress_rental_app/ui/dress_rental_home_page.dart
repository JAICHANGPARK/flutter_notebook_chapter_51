import 'package:flutter/material.dart';

class DressRentalHomePage extends StatefulWidget {
  const DressRentalHomePage({super.key});

  @override
  State<DressRentalHomePage> createState() => _DressRentalHomePageState();
}

class _DressRentalHomePageState extends State<DressRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 16,
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 42,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              borderRadius: .circular(6),
                              border: .all(color: Colors.grey[300]!),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search dresses...",
                                border: .none,
                                contentPadding: .only(bottom: 9),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.grey[300]!),
                            borderRadius: .circular(4),
                          ),
                          child: Icon(Icons.notifications_none),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 140,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Discount up to 45% on every\ndress rental for events",
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.white,
                          ),
                        ),
                        Text("Only for this week"),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: .circular(8),
                            
                          ),
                          child: Text(
                            "Book Now",
                            style: TextStyle(fontWeight: .bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 42,
                    child: Placeholder(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (context, index) {
                          return Placeholder();
                        },
                      ),
                    ),
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
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .bottomCenter,
                  end: .topCenter,
                  stops: [.05, .2, 1],
                  colors: [
                    Color.fromRGBO(219, 219, 219, 1),
                    Color.fromRGBO(232, 232, 232, 1),
                    Colors.white10,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
