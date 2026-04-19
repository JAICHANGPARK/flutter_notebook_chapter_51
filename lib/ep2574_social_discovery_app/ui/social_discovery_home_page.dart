import 'package:flutter/material.dart';

class SocialDiscoveryHomePage extends StatefulWidget {
  const SocialDiscoveryHomePage({super.key});

  @override
  State<SocialDiscoveryHomePage> createState() =>
      _SocialDiscoveryHomePageState();
}

class _SocialDiscoveryHomePageState extends State<SocialDiscoveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  stops: [.1, .3, 1],
                  colors: [
                    Color.fromRGBO(199, 208, 207, 1),
                    Color.fromRGBO(232, 237, 235, 1),
                    Color.fromRGBO(112, 142, 128, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [Text("Hello,"), Text("Dream Walker!",style: TextStyle(
                            fontWeight: .bold,
                            fontSize: 24,
                          ),)],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(231, 235, 236, 1),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "All The Moments\nThat Matter",
                    style: TextStyle(fontWeight: .bold, fontSize: 26),
                  ),
                  SizedBox(height: 62, child: Placeholder()),
                  Container(height: 240, child: Placeholder()),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text("Suggested Connections"),
                          TextButton(onPressed: () {}, child: Text("See All")),
                        ],
                      ),
                      Container(height: 180, child: Placeholder()),
                    ],
                  ),

                  Align(
                    alignment: .center,
                    child: Container(
                      height: 82,
                      decoration: BoxDecoration(
                        border: .all(color: Colors.white30),
                      ),

                      child: Row(mainAxisSize: .min, children: []),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
