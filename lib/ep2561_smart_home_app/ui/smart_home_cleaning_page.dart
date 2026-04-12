import 'package:flutter/material.dart';

class SmartHomeCleaningPage extends StatefulWidget {
  const SmartHomeCleaningPage({super.key});

  @override
  State<SmartHomeCleaningPage> createState() => _SmartHomeCleaningPageState();
}

class _SmartHomeCleaningPageState extends State<SmartHomeCleaningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                    child: Icon(Icons.keyboard_arrow_left),
                  ),
                  Expanded(child: Center(child: Text("Cleaning"))),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(32),
                        ),
                        color: Color.fromRGBO(241, 247, 250, 1),
                      ),
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(bottom: 12),
                      child: Row(
                        spacing: 12,
                        children: [
                          Container(
                            height: 160,
                            width: 150,
                            decoration: ShapeDecoration(
                              shape: RoundedSuperellipseBorder(
                                borderRadius: .circular(32),
                              ),
                              color: Colors.yellow[100],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text("Home Cleaning"),
                                          Text("Home spotless quickly"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\$240"),
                                    Container(
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Colors.black,
                                      ),
                                      child: Text(
                                        "Book Now",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
