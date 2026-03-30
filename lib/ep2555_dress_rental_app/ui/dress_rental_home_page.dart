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
            child: SafeArea(child: Column(children: [])),
          ),
        ],
      ),
    );
  }
}
