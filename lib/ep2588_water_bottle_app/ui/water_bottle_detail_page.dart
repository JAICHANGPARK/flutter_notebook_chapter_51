import 'package:flutter/material.dart';

class WaterBottleDetailPage extends StatefulWidget {
  const WaterBottleDetailPage({super.key});

  @override
  State<WaterBottleDetailPage> createState() => _WaterBottleDetailPageState();
}

class _WaterBottleDetailPageState extends State<WaterBottleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(227, 232, 231, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2015/01/03/21/02/twelve-apostles-587818_1280.jpg",
                    fit: .cover,
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height / 1.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [
                    Colors.white12,
                    Colors.white38,
                    Color.fromRGBO(227, 232, 231, 1),
                    Color.fromRGBO(215, 224, 223, 1),
                  ],
                  stops: [.05, .1, .2, .8],
                ),
              ),
            ),
          ),

          Positioned.fill(
            top: 12,
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      spacing: 24,
                      children: [
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color.fromRGBO(199, 223, 229, 1),
                                border: .all(color: Colors.white38),
                              ),
                              child: Icon(Icons.keyboard_arrow_left),
                            ),
                            Spacer(),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color.fromRGBO(199, 223, 229, 1),
                                border: .all(color: Colors.white38),
                              ),
                              child: Icon(Icons.shopping_bag_outlined),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: .circle,
                                color: Color.fromRGBO(199, 223, 229, 1),
                                border: .all(color: Colors.white38),
                              ),
                              child: Icon(Icons.upload),
                            ),
                          ],
                        ),
                        Container(
                          height: 280,

                          child: Column(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: RoundedSuperellipseBorder(
                                            borderRadius: .circular(16),
                                          ),
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 88,
                                      child: Column(
                                        spacing: 8,
                                        children: [
                                          Expanded(child:  Container(
                                            decoration: ShapeDecoration(
                                              shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                              color: Colors.green,
                                            ),
                                          ),),
                                          Expanded(child: Container(
                                            decoration: ShapeDecoration(
                                              shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                              color: Colors.green,
                                            ),
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 88,
                                child: Row(
                                  spacing: 8,
                                  children: [
                                    Expanded(child:  Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                        color: Colors.green,
                                      ),
                                    ),),
                                    Expanded(child:  Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                        color: Colors.green,
                                      ),
                                    ),),
                                    Expanded(child:  Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                        color: Colors.green,
                                      ),
                                    ),),
                                    Expanded(child:  Container(
                                      decoration: ShapeDecoration(
                                        shape: RoundedSuperellipseBorder(borderRadius: .circular(16),),
                                        color: Colors.green,
                                      ),
                                    ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Text("PureV2"),
                      Container(
                        decoration: ShapeDecoration(shape: StadiumBorder()),
                        child: Text("Bestseller"),
                      ),
                      Text("\$129.00"),
                    ],
                  ),
                  Text(
                    "Smart filtered bottle that keeps water\nfresh and cold for up to 24 hours",
                  ),
                  Text("Color"),
                  SizedBox(height: 62, child: Placeholder()),

                  Text("Color"),
                  SizedBox(height: 100, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
