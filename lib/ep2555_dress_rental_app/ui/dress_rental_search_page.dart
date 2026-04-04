import 'package:flutter/material.dart';

class DressRentalSearchPage extends StatefulWidget {
  const DressRentalSearchPage({super.key});

  @override
  State<DressRentalSearchPage> createState() => _DressRentalSearchPageState();
}

class _DressRentalSearchPageState extends State<DressRentalSearchPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
          children: [
            GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: .zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2.2,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: .circular(8),
                    color: Colors.blue,
                  ),
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: .centerLeft,
                    child: Text(
                      "Birthday",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Featured products",
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: .all(color: Colors.grey[200]!),
                    borderRadius: .circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Row(
                    spacing: 4,
                    children: [
                      Icon(Icons.apps, size: 13),
                      Text("View All", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
            GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Placeholder();
              },
            ),
          ],
        ),
      ),
    );
  }
}
