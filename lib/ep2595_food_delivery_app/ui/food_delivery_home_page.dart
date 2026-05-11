import 'package:flutter/material.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Location"),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text("New York, USA"),
                                Icon(Icons.keyboard_arrow_down),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 24,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 42,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 160,
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
