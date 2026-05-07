import 'package:flutter/material.dart';

class WaterBottleDetailPage extends StatefulWidget {
  const WaterBottleDetailPage({super.key});

  @override
  State<WaterBottleDetailPage> createState() => _WaterBottleDetailPageState();
}

class _WaterBottleDetailPageState extends State<WaterBottleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(227, 232, 231, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(179, 214, 223, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                      Spacer(),
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(179, 214, 223, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(179, 214, 223, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.upload),
                      ),
                    ],
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
