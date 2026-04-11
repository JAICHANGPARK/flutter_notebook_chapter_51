import 'package:flutter/material.dart';


class SmartHomeCleaningPage extends StatefulWidget {
  const SmartHomeCleaningPage({super.key});

  @override
  State<SmartHomeCleaningPage> createState() => _SmartHomeCleaningPageState();
}

class _SmartHomeCleaningPageState extends State<SmartHomeCleaningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  Expanded(child: Center(child: Text("Cleaning"),)),
                  CircleAvatar(),
                ],
              ),
              Expanded(child: Placeholder(),),
            ],
          ),
        ),
      ),
    );
  }
}
