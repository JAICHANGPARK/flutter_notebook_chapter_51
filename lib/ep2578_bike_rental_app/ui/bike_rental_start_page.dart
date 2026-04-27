import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'bike_rental_home_page.dart';

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
              child: SmoothPageIndicator(controller: pageController, count: 3,),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BikeRentalHomePage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 92,
                      width: 92,
                      decoration: BoxDecoration(
                        shape: .circle,
                        color: Colors.grey[100]!,
                        border: .all(color: Colors.white24),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_outlined),
                        ),
                      ),
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
