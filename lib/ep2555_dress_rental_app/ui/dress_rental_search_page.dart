import 'package:flutter/material.dart';

class DressRentalSearchPage extends StatefulWidget {
  const DressRentalSearchPage({super.key});

  @override
  State<DressRentalSearchPage> createState() => _DressRentalSearchPageState();
}

class _DressRentalSearchPageState extends State<DressRentalSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2
          ),
          itemBuilder: (context, index) {
            return Placeholder();
          },
        ),
      ],
    );
  }
}
