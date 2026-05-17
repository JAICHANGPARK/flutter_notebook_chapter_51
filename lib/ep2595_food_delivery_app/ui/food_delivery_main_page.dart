import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_51/ep2595_food_delivery_app/ui/food_delivery_home_page.dart';
import 'package:flutter_notebook_chapter_51/ep2595_food_delivery_app/ui/food_delivery_search_page.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({super.key});

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 239, 234, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: pageNum,
              children: [
                FoodDeliveryHomePage(),
                Placeholder(),
                FoodDeliverySearchPage(),
              ],
            ),
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(252, 181, 30, 1),
              ),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 0;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: pageNum == 0 ? Colors.black : Colors.transparent,
                      ),
                      padding: .symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        spacing: 12,
                        children: pageNum == 0
                            ? [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedHome01,
                                  size: 28,
                                  color: Colors.white,
                                ),

                                Text(
                                  "Home",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ]
                            : [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedHome01,
                                  size: 28,
                                ),
                              ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 1;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: pageNum == 1 ? Colors.black : Colors.transparent,
                      ),
                      padding: .symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        spacing: 12,
                        children: pageNum == 1
                            ? [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedHandBag01,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ]
                            : [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedHandBag01,
                                  size: 28,
                                ),
                              ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 2;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: pageNum == 2 ? Colors.black : Colors.transparent,
                      ),
                      padding: .symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        spacing: 12,
                        children: pageNum == 2
                            ? [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedSearch01,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ]
                            : [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedSearch01,
                                  size: 28,
                                ),
                              ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 3;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: pageNum == 3 ? Colors.black : Colors.transparent,
                      ),
                      padding: .symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        spacing: 12,
                        children: pageNum == 3
                            ? [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedChatUser01,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ]
                            : [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedChatUser01,
                                  size: 28,
                                ),
                              ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageNum = 4;
                      });
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: pageNum == 4 ? Colors.black : Colors.transparent,
                      ),
                      padding: .symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        spacing: 12,
                        children: pageNum == 4
                            ? [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedUser,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ]
                            : [
                                HugeIcon(
                                  icon: HugeIcons.strokeRoundedUser,
                                  size: 28,
                                ),
                              ],
                      ),
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
