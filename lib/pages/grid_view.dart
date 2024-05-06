import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 24.0,
              childAspectRatio: 0.7,
              crossAxisCount: 2
          ),
          itemBuilder: (context, index) => const ItemContainer(alignment: Alignment.topLeft,)
    );
  }
}