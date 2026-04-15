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
              
            ],
          )
        ],
      ),
    );
  }
}
