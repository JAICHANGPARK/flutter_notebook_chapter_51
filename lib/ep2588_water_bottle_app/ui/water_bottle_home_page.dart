import 'package:flutter/material.dart';

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
        spacing: 16,
        children: [
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(
                  borderRadius: .only(
                    bottomLeft: .circular(42),
                    bottomRight: .circular(42),
                  ),
                ),
                color: Color.fromRGBO(193, 214, 213, 1),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  height: 72,
                  child: Placeholder(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 16,
                    children: [
                      Text("Best Picks", style: TextStyle(fontSize: 22)),
                      Container(
                        height: 140,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: .circular(32),
                              side: BorderSide(color: Colors.white38)
                          ),
                          color: Color.fromRGBO(244, 246, 246, 1),
                        ),
                      ),
                      Container(
                        height: 140,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: .circular(32),
                            side: BorderSide(color: Colors.white38)
                          ),
                          color: Color.fromRGBO(244, 246, 246, 1),
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
