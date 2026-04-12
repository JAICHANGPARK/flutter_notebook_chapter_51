import 'package:flutter/material.dart';

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({super.key});

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 16,
          children: [
            Container(height: 54, decoration: BoxDecoration(border: .all())),
            Container(height: 60, decoration: BoxDecoration(border: .all())),
            Expanded(child: Placeholder()),
            Container(height: 80, decoration: BoxDecoration(border: .all())),
          ],
        ),
      ),
    );
  }
}
