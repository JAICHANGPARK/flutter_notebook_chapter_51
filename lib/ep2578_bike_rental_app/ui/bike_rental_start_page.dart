import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BikeRentalStartPage extends StatefulWidget {
  const BikeRentalStartPage({super.key});

  @override
  State<BikeRentalStartPage> createState() => _BikeRentalStartPageState();
}

class _BikeRentalStartPageState extends State<BikeRentalStartPage> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 16,
              top: 24,
              child: SmoothPageIndicator(controller: pageController, count: 3),
            ),
            Positioned(
              bottom: 24,
              left: 24,
              right: 24,
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    "Unlock your ride in just seconds",
                    style: TextStyle(fontWeight: .bold, fontSize: 38),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: .circle,
                      color: Colors.grey[200]!,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
