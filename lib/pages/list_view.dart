import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemBuilder: (context, index)=> const ItemContainer(alignment: Alignment.bottomRight)
    );
  }
}