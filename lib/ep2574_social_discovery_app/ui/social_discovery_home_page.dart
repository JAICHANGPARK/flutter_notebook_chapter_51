import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text("Hello,", style: TextStyle(fontSize: 16)),
                              Text(
                                "Dream Walker!",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: .all(color: Colors.white, width: 2),
                            color: Color.fromRGBO(231, 235, 236, 1),
                          ),
                          height: 52,
                          width: 100,
                          child: Row(
                            children: [
                              Expanded(child: Icon(Icons.notifications)),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "All The Moments\nThat Matter",
                      style: TextStyle(fontWeight: .bold, fontSize: 26),
                    ),
                  ),
                  Container(
                    padding: .only(left: 16),
                    height: 72,
                    child: ListView(
                      scrollDirection: .horizontal,
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          margin: .only(right: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.teal),
                          ),
                          padding: .all(6),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(224, 228, 220, 1),
                            ),
                            child: Center(child: Icon(Icons.add)),
                          ),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          margin: .only(right: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.teal),
                          ),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          margin: .only(right: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.teal),
                          ),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          margin: .only(right: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.teal),
                          ),
                        ),
                        Container(
                          height: 72,
                          width: 72,
                          margin: .only(right: 16),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.teal),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(24),
                  Container(
                    height: 240,
                    margin: .only(left: 16),
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 16),
                          width: 200,
                          decoration: BoxDecoration(color: Colors.grey),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 16,
                                top: 16,
                                child: Row(
                                  spacing: 12,
                                  children: [
                                    Container(
                                      height: 36,
                                      width: 36,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      "Dreamwalker",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(199, 209, 203, 1),
                                  ),
                                  padding: EdgeInsets.all(4),
                                  child: Row(
                                    spacing: 6,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: .all(
                                            color: Colors.white38,
                                            width: .5,
                                          ),
                                          color: Color.fromRGBO(
                                            199,
                                            209,
                                            203,
                                            1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 1,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color.fromRGBO(71, 111, 91, 1),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: .all(
                                            color: Colors.white38,
                                            width: .5,
                                          ),
                                          color: Color.fromRGBO(
                                            199,
                                            209,
                                            203,
                                            1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 1,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.chat,
                                          color: Color.fromRGBO(71, 111, 91, 1),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          border: .all(
                                            color: Colors.white38,
                                            width: .5,
                                          ),
                                          color: Color.fromRGBO(
                                            199,
                                            209,
                                            203,
                                            1,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 1,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.send,
                                          color: Color.fromRGBO(71, 111, 91, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(16),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Suggested Connections",
                              style: TextStyle(fontWeight: .bold, fontSize: 18),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("See All"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        margin: .only(left: 16),
                        child: ListView.builder(
                          scrollDirection: .horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 240,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 12,
                                    bottom: 12,
                                    child: Column(
                                      spacing: 5,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "Dreamwalker",
                                          style: TextStyle(
                                            fontWeight: .bold,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text("770 Followers"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  Align(
                    alignment: .center,
                    child: Container(
                      height: 72,
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
