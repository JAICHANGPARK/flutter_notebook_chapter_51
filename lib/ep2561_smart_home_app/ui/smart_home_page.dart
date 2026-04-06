import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Welcome,", style: TextStyle(fontSize: 12)),
                            Text("Dreamwalker", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color.fromRGBO(241, 245, 247, 1),
                      ),
                    ],
                  ),
                  Text(
                    "Smart Home,\nSmooth Service",
                    style: TextStyle(fontSize: 36, fontWeight: .bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color.fromRGBO(241, 245, 247, 1),
                    ),
                    child: Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey[300],
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search...",
                              border: .none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 52,
              child: ListView(
                children: [
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
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
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                      foregroundColor: Colors.white,
                      child: HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                    ),
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
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedCalendar01,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(
                            icon: HugeIcons.strokeRoundedShoppingBag01,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromRGBO(65, 73, 77, 1),
                          child: HugeIcon(icon: HugeIcons.strokeRoundedUser),
                        ),
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
