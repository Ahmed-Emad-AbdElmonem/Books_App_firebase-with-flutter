import 'package:book2/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksGridview extends StatelessWidget {
  const FeaturedBooksGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomItem(),
        ) ;
      },
    );
  }
}