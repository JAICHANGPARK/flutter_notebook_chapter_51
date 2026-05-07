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
                crossAxisAlignment: .start,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(199, 223, 229, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                      Spacer(),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(199, 223, 229, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Color.fromRGBO(199, 223, 229, 1),
                          border: .all(color: Colors.white38),
                        ),
                        child: Icon(Icons.upload),
                      ),
                    ],
                  ),
                  Container(
                    height: 240,
                    child: Placeholder(),
                  ),
                  Row(
                    children: [
                      Text("PureV2"),
                      Container(
                        decoration: ShapeDecoration(shape: StadiumBorder(),),
                        child: Text("Bestseller"),
                      ),
                      Text("\$129.00"),
                    ],
                  ),
                  Text("Smart filtered bottle that keeps water\nfresh and cold for up to 24 hours",),
                  Text("Color"),
                  SizedBox(
                    height: 62,
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
