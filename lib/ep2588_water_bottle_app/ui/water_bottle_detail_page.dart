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
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(179, 214, 223, 1),
                        child: Icon(Icons.arrow_back_ios_new),
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
