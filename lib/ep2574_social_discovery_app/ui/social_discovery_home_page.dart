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
          Positioned(child: Column(children: [],),),
        ],
      ),
    );
  }
}
