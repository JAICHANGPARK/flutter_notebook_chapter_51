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
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                    child: Icon(Icons.keyboard_arrow_left),
                  ),
                  Expanded(child: Center(child: Text("Cleaning"))),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Placeholder();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
