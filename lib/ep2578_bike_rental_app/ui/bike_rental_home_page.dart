import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BikeRentalHomePage extends StatefulWidget {
  const BikeRentalHomePage({super.key});

  @override
  State<BikeRentalHomePage> createState() => _BikeRentalHomePageState();
}

class _BikeRentalHomePageState extends State<BikeRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                    ),
                    Expanded(child: Column(children: [])),
                    CircleAvatar(
                      radius: 32,
                    ),
                  ],
                ),
                Gap(24),
                SizedBox(height: 72, child: Placeholder()),
                Container(height: 520, child: Placeholder()),
                Row(
                  children: [
                    Text("Find Bikes Nearby"),
                    Spacer(),
                    Text("View more"),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
                Container(height: 120, child: Placeholder()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
