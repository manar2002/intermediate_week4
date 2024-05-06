import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key, required this.alignment});
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0, bottom: 24.0, left: 12.0, right: 24.0),
      height: 260,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.orangeAccent.shade100,
              Colors.grey.shade300,
              Colors.white
            ],),
          image: const DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/images/item.png',
              ))
      ),
      child: Align(
          alignment: alignment,
          child: Text('Shop',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange.shade900
              )
          )
      ),
    );
  }
}