import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 320,
              margin: .only(bottom: 16),
              decoration: ShapeDecoration(
                shape: RoundedSuperellipseBorder(borderRadius: .circular(16)),
                color: Colors.white,
              ),
              padding: .all(16),
              child: Column(
                spacing: 4,
                children: [
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                          borderRadius: .circular(16),
                        ),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Gap(4),
                  Row(
                    children: [
                      Text("Harmony", style: TextStyle(fontWeight: .bold)),
                      Spacer(),
                      Icon(Icons.star, size: 14, color: Colors.yellow),
                      Text("4.6"),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Icon(Icons.timer_outlined, size: 14),
                      Text("10-15 mins"),
                      Icon(Icons.directions_run, size: 14),
                      Text("Free delivery"),
                    ],
                  ),
                  Gap(4),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "\$45.10",
                        style: TextStyle(fontWeight: .bold, fontSize: 20),
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
