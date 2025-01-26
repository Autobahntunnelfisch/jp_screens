import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopupMenuButtonForTabBar extends StatelessWidget {
  const PopupMenuButtonForTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 0.5), width: 1)),
        child: PopupMenuButton(
          position: PopupMenuPosition.under,
          icon: SvgPicture.asset("assets/svg/Lunch.svg"),
          color: Color.fromRGBO(255, 255, 255, 0.2),
          borderRadius: BorderRadius.circular(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          itemBuilder: (context) => [
            PopupMenuItem(child: Text("Salty")),
            PopupMenuItem(child: Text("Sweet")),
            PopupMenuItem(child: Text("Spicy")),
            PopupMenuItem(child: Text("Sour")),
          ],
        ),
      ),
    );
  }
}
