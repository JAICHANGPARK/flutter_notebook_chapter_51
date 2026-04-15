import 'package:flutter/material.dart';

class FintechHomePage extends StatefulWidget {
  const FintechHomePage({super.key});

  @override
  State<FintechHomePage> createState() => _FintechHomePageState();
}

class _FintechHomePageState extends State<FintechHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(radius: 22),
                  Expanded(
                    child: Text("Hello, Dream", style: TextStyle(fontSize: 18)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: 3,
                crossAxisAlignment: .start,
                children: [
                  Text("Total balance"),
                  Text(
                    "\$8 600",
                    style: TextStyle(fontSize: 40, fontWeight: .bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( left: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text("CARDS"),
                      TextButton(onPressed: () {}, child: Text("Add +")),
                    ],
                  ),
                  SizedBox(height: 180, child: Placeholder()),
                ],
              ),
            ),
            Column(
              children: [
                Text("FINANCE"),
                SizedBox(height: 120, child: Placeholder()),
              ],
            ),


            SizedBox(height: 140, child: Placeholder()),
            Container(
              decoration: BoxDecoration(color: Colors.grey[100]!),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("LAST TRANSACTIONS"),
                      Spacer(),
                      Text("See all"),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                  Column(
                    children: List.generate(6, (idx) {
                      return Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            child: Placeholder(),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text("Supermarket"),
                                    Text("-40\$"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text("Today, 12:00"),
                                    Text("payment"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
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
