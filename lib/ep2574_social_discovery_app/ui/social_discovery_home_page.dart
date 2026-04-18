import 'package:flutter/material.dart';


class SocialDiscoveryHomePage extends StatefulWidget {
  const SocialDiscoveryHomePage({super.key});

  @override
  State<SocialDiscoveryHomePage> createState() => _SocialDiscoveryHomePageState();
}

class _SocialDiscoveryHomePageState extends State<SocialDiscoveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(decoration: BoxDecoration(
            gradient: LinearGradient(colors: [],)
          ),))
        ],
      ),
    );
  }
}
