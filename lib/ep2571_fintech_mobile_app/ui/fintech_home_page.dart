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
        bottom: false,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 16,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text("CARDS"),
                              TextButton(
                                onPressed: () {},
                                child: Text("Add +"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 160,
                            child: ListView.builder(
                              scrollDirection: .horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: .circular(12),
                                  ),
                                  padding: EdgeInsets.all(16),
                                  margin: EdgeInsets.only(right: 12),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("VISA"),
                                      Spacer(),
                                      Text("Salary"),
                                      Text("\$0 000"),
                                      Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Text("**1234"),
                                          Text("01/04")
                                        ],
                                      )
                                    ],
                                  )
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        spacing: 4,
                        crossAxisAlignment: .start,
                        children: [
                          Text("FINANCE"),
                          SizedBox(height: 120, child: ListView.builder(
                            scrollDirection: .horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 120,
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200]!,
                                  borderRadius: .circular(12)
                                ),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple[200]!
                                      ),
                                      padding: .all(8),
                                      child: Icon(Icons.star_border),
                                    ),
                                    Text("My bonuses"),
                                  ],
                                ),
                              );
                            },
                          ),),
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,
                      ),
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
