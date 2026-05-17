import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_51/ep2595_food_delivery_app/ui/food_delivery_home_page.dart';

import '../ep2568_food_delivery_app/ui/food_delivery_main_page.dart';


class HealthyFoodDeliveryApp extends StatelessWidget {
  const HealthyFoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodDeliveryMainPage(),
    );
  }
}
