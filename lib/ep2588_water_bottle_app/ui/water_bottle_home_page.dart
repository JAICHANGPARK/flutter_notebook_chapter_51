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
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [SizedBox(height: 52, child: Placeholder(),),
              Text("Best Picks"),
                Container(
                  height: 160,
                  child: Placeholder(),
                ),
                Container(
                  height: 160,
                  child: Placeholder(),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
