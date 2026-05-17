import 'package:flutter/material.dart';

class FoodDeliverySearchPage extends StatefulWidget {
  const FoodDeliverySearchPage({super.key});

  @override
  State<FoodDeliverySearchPage> createState() => _FoodDeliverySearchPageState();
}

class _FoodDeliverySearchPageState extends State<FoodDeliverySearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              margin: .only(bottom: 16),

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
                  Row(
                    children: [
                      Text("Harmony"),
                      Spacer(),
                      Icon(Icons.star),
                      Text("4.6")
                    ],
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      Icon(Icons.timer_outlined),
                      Text("10-15 mins"),
                      Icon(Icons.directions_run),
                      Text("Free delivery"),
                    ],
                  )

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
