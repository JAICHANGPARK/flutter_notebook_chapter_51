import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  State<FoodDeliveryHomePage> createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 239, 234, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,

                          foregroundColor: Colors.black,
                          child: Icon(Icons.search),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("Location"),
                              Row(
                                mainAxisAlignment: .center,
                                crossAxisAlignment: .center,
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("New York, USA"),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(backgroundColor: Colors.white, radius: 24),
                      ],
                    ),
                  ),
                  SizedBox(height: 42, child: Placeholder()),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Container(height: 160, child: Placeholder()),
                          SmoothPageIndicator(
                            controller: PageController(),
                            count: 4,
                          ),
                          Container(height: 120, child: Placeholder()),
                          Row(
                            children: [
                              Text('Coffee & tea moments'),
                              TextButton(
                                onPressed: () {},
                                child: Text("See all"),
                              ),
                            ],
                          ),
                          Column(
                            children: List.generate(4, (index) {
                              return Container(
                                height: 140,
                                child: Placeholder(),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
