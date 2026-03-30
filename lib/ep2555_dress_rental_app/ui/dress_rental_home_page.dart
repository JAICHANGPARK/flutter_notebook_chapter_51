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
            child: SafeArea(
              child: Column(
                children: [
                  Container(height: 42, child: Placeholder()),
                  Container(height: 140, child: Placeholder()),
                  Container(height: 42, child: Placeholder()),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12
                        ),
                        itemBuilder: (context, index) {
                          return Placeholder();
                        },
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
