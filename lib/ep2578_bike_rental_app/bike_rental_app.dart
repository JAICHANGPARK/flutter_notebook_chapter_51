import 'package:flutter/material.dart';
import 'ui/bike_rental_start_page.dart';

class BikeRentalApp extends StatelessWidget {
  const BikeRentalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BikeRentalStartPage());
  }
}
