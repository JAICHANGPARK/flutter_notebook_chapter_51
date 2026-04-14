import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({super.key});

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            spacing: 16,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 60,
                decoration: BoxDecoration(
                  border: .all(color: Colors.grey[300]!),
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.search, color: Colors.grey[400]!),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: .none,
                        ),
                      ),
                    ),
                    VerticalDivider(indent: 8, endIndent: 8),
                    Icon(Icons.tune, color: Colors.grey[400]!),
                  ],
                ),
              ),
              Container(
                margin: .only(left: 16),
                height: 90,

                child: Builder(
                  builder: (context) {
                    List<String> items = [
                      "Offers",
                      "Pasta",
                      "Momos",
                      "Sushi",
                      "Stake",
                      "Noodle",
                    ];
                    return ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Column(
                            spacing: 6,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 62,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: .all(color: Colors.grey[400]!),
                                  ),
                                ),
                              ),
                              Text("${items[index]}"),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2024/08/23/11/59/ai-generated-8991573_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),

                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: Column(children: [
                              
                            ],))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 72,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(right: 12),
                child: Row(

                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(color: Colors.black),
                      child: Row(
                        spacing: 12,
                        children: [
                          HugeIcon(
                            icon: HugeIcons.strokeRoundedHome01,
                            color: Colors.white,
                          ),
                          Text("Home", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    HugeIcon(icon: HugeIcons.strokeRoundedPercent),
                    HugeIcon(icon: HugeIcons.strokeRoundedShoppingCart01),
                    HugeIcon(icon: HugeIcons.strokeRoundedNotification01),
                    HugeIcon(icon: HugeIcons.strokeRoundedUser),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
