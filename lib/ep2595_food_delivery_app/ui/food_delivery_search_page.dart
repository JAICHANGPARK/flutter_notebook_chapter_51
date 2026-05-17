import 'package:flutter/material.dart';

class FoodDeliverySearchPage extends StatefulWidget {
  const FoodDeliverySearchPage({super.key});

  @override
  State<FoodDeliverySearchPage> createState() => _FoodDeliverySearchPageState();
}

class _FoodDeliverySearchPageState extends State<FoodDeliverySearchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
