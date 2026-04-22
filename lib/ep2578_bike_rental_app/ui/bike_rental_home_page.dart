import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(child: Column(children: [])),
                CircleAvatar(),
              ],
            ),
            SizedBox(height: 72, child: Placeholder(),),
            Container(
              height: 420,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
