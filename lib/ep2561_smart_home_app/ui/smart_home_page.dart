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

          children: [
          Row(
            children: [

            ],
          )  ,
            Text("Smart Home,\nSmooth Service",),
            Container(
              decoration: ShapeDecoration(shape: StadiumBorder()),
            ),
            SizedBox(height: 52,child: Placeholder(),),
            Expanded(child: Placeholder()),
            Container(
              height: 72,
              child: Row(
                children: [
                  CircleAvatar(),
                  Container(decoration: ShapeDecoration(shape: StadiumBorder()),
                  child: Row(
                    children: [
                      CircleAvatar(),
                    ],
                  ),)
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}
