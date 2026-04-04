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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) {
                return Container(

                  decoration: BoxDecoration(
                    borderRadius: .circular(8),
                  ),
                  child: Text("Birthday"),
                );
              },
            ),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text("Featured products"),
                Container(
                  child: Row(children: [Icon(Icons.apps), Text("View All")]),
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
