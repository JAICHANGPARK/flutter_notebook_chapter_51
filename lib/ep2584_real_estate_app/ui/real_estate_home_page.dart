import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topRight,
                  end: .bottomLeft,
                  colors: [
                    Color.fromRGBO(242, 248, 221, 1),
                    Color.fromRGBO(240, 246, 239, 1),
                    Color.fromRGBO(240, 247, 242, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(child: SafeArea(child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  spacing: 12,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: .circle,
                        border: .all(color: Colors.grey[400]!),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.menu, size:24,),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        shape: .circle,
                        border: .all(color: Colors.grey[400]!),
                        color: Colors.white,
                      ),
                      child: Badge(child: Icon(Icons.notifications_none, size: 29,),
                      backgroundColor: Colors.greenAccent,)
                    ),
                   CircleAvatar(radius: 28,)
                  ],
                ),
              ),
              Container(
                height: 64,
                child: Placeholder(),
              ),

              Container(
                height: 64,
                child: Placeholder(),
              ),
          ],)))
        ],
      ),
    );
  }
}
