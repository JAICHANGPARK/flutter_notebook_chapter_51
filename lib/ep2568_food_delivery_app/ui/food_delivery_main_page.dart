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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            spacing: 16,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 60,
                decoration: BoxDecoration(border: .all()),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    VerticalDivider(indent: 8, endIndent: 8),
                    Icon(Icons.tune),
                  ],
                ),
              ),
              Container(
                margin: .only(left: 16),
                height: 60,
                decoration: BoxDecoration(border: .all()),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Placeholder(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 72,
                decoration: BoxDecoration(border: .all(), color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
