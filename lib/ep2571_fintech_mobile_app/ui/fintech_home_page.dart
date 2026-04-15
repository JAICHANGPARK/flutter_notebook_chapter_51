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
      body: Column(
        crossAxisAlignment: .start,
        spacing: 12,
        children: [
          Row(
            children: [
              CircleAvatar(),
              Expanded(child: Text("Hello, Dream")),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none),
              ),
            ],
          ),
          Text("Total balance"),
          Text("\$8 600"),
          Row(
            children: [
              Text("CARDS"),
              TextButton(onPressed: () {}, child: Text("Add +")),
            ],
          ),
          SizedBox(height: 180, child: Placeholder()),
          Text("FINANCE"),
          SizedBox(height: 120, child: Placeholder()),
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
                    return Row(children: [
                      Container(
                        height: 42,
                        width: 42,
                        child: Placeholder(),
                      ),
                      Expanded(child: Column(children: [
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
                            Text("payment")
                          ],
                        )

                      ],))

                    ]);
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
