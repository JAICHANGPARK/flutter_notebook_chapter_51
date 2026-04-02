import 'package:flutter/material.dart';

class DressRentalHomePage extends StatefulWidget {
  const DressRentalHomePage({super.key});

  @override
  State<DressRentalHomePage> createState() => _DressRentalHomePageState();
}

class _DressRentalHomePageState extends State<DressRentalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 16,
            child: SafeArea(
              bottom: false,
              child: Column(
                spacing: 16,
                crossAxisAlignment: .start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 42,
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                              borderRadius: .circular(6),
                              border: .all(color: Colors.grey[300]!),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search dresses...",
                                border: .none,
                                contentPadding: .only(bottom: 9),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: .all(color: Colors.grey[300]!),
                            borderRadius: .circular(4),
                          ),
                          child: Icon(Icons.notifications_none),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/11/19/15/40/clothes-1839935_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 16,
                          bottom: 16,
                          right: 16,
                          child: Column(
                            mainAxisAlignment: .spaceBetween,
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                "Discount up to 45% on every\ndress rental for events",
                                style: TextStyle(
                                  fontWeight: .bold,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Only for this week",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: .circular(8),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                    fontWeight: .bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 34,
                    child: Builder(
                      builder: (context) {
                        List<String> tabs = [
                          "All Styles",
                          "Birthday",
                          "Wedding",
                          "Party",
                          "Casual",
                        ];
                        return ListView.builder(
                          scrollDirection: .horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? Colors.black
                                    : Colors.grey[100],
                                borderRadius: .circular(4),
                              ),
                              margin: EdgeInsets.only(right: 8),
                              child: Center(
                                child: Text(
                                  "${tabs[index]}",
                                  style: TextStyle(
                                    color: index == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
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
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              spacing: 12,
                              crossAxisAlignment: .start,
                              children: [
                                Expanded(child: Placeholder()),
                                Column(
                                  crossAxisAlignment: .start,
                                  spacing: 4,
                                  children: [
                                    Text('Velvet Dream Dress'),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(text: "\$25.50"),
                                          TextSpan(text: "/day"),
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .bottomCenter,
                  end: .topCenter,
                  stops: [.05, .2, 1],
                  colors: [
                    Color.fromRGBO(219, 219, 219, 1),
                    Color.fromRGBO(232, 232, 232, 1),
                    Colors.white10,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 24,
            right: 24,
            child: Column(
              spacing: 16,
              children: [
                Align(
                  alignment: .centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.white,
                    ),
                    child: Row(
                      spacing: 4,
                      mainAxisSize: .min,
                      children: [
                        Icon(Icons.map_outlined, size: 18),
                        Text("Map"),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: .min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.home_filled),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.calendar_month_sharp),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.list_alt)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person_2_outlined),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
