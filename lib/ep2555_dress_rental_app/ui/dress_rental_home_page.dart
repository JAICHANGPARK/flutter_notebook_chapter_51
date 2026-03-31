import 'package:flutter/material.dart';

class DressRentalHomePage extends StatefulWidget {
  const DressRentalHomePage({super.key});

  @override
  State<DressRentalHomePage> createState() => _DressRentalHomePageState();
}

class _DressRentalHomePageState extends State<DressRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            top: 16,
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 42,
                    child: Row(
                      children: [
                        Expanded(child: Container(decoration: BoxDecoration(
                          borderRadius: .circular(6),
                          border: .all(color: Colors.grey[200]!,)
                        ),))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 140,
                    child: Placeholder(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 42,
                    child: Placeholder(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemBuilder: (context, index) {
                          return Placeholder();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .bottomCenter,
                  end: .topCenter,
                  stops: [.05, .2, 1],
                  colors: [
                    Color.fromRGBO(219, 219, 219, 1),
                    Color.fromRGBO(232, 232, 232, 1),
                    Colors.white10,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
