import 'package:flutter/material.dart';

class SmartHomePage extends StatefulWidget {
  const SmartHomePage({super.key});

  @override
  State<SmartHomePage> createState() => _SmartHomePageState();
}

class _SmartHomePageState extends State<SmartHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Row(
              children: [
                CircleAvatar(),
                Expanded(child: Column()),
                CircleAvatar(),
                CircleAvatar(),
              ],
            ),
            Text("Smart Home,\nSmooth Service"),
            Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
              child: Row(
                children: [
                  CircleAvatar(),
                  Expanded(child: TextField()),
                ],
              ),
            ),
            SizedBox(height: 52, child: Placeholder()),
            Expanded(child: Placeholder()),
            Container(
              height: 72,
              child: Row(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                spacing: 12,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(38, 46, 50, 1),
                    ),
                    child: CircleAvatar(radius: 30),
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(38, 46, 50, 1),
                    ),
                    child: Row(
                      spacing: 2,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                        ),
                        CircleAvatar(radius: 30),
                        CircleAvatar(radius: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
