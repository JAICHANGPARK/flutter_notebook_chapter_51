import 'package:flutter/material.dart';

class HotelBookingMainPage extends StatefulWidget {
  const HotelBookingMainPage({super.key});

  @override
  State<HotelBookingMainPage> createState() => _HotelBookingMainPageState();
}

class _HotelBookingMainPageState extends State<HotelBookingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey[200]!)],
              ),
              child: Row(children: [Expanded(child: Column(children: [
                
              ],))]),
            ),
          ),
        ],
      ),
    );
  }
}
