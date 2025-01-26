import 'dart:ui';
import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  TabBarItem({super.key, required this.itemText});
  String itemText;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.5), width: 1)),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            itemText,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
