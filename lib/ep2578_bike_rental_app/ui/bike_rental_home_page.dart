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
              crossAxisAlignment: .start,
              children: [
                Row(
                  spacing: 12,
                  children: [
                    CircleAvatar(radius: 30),
                    Expanded(
                      child: Column(
                        spacing: 6,
                        crossAxisAlignment: .start,
                        children: [
                          Text("Hello, Dream",style: TextStyle(
                            fontSize: 16,
                          ),),
                          Text(
                            "Good Morning!",
                            style: TextStyle(fontSize: 24, fontWeight: .bold),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(radius: 30),
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
