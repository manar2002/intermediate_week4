import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedPageIndex = 0;
  List pages = [
    {"page": const ListViewPage(), "title": "ListView"},
    {"page": const GridViewPage(), "title": "GridView"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedPageIndex]["title"],
            style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: pages[selectedPageIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          selectedItemColor: Colors.deepOrange,
          onTap: (int index)=> setState(() {
            selectedPageIndex = index;
          }),
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: 'ListView'),
            BottomNavigationBarItem(icon: Icon(Icons.view_module), label: 'GridView')
          ]),
    );
  }
}