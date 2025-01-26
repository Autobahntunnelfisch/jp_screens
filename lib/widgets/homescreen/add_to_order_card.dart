import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_screens/Screens/home_screen.dart';
import 'package:jp_screens/widgets/j_p_button.dart';

class AddToOrderCard extends StatelessWidget {
  const AddToOrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: SizedBox(
            height: 270,
            width: 370,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 9.0),
                child: Opacity(
                  opacity: 0.7,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/cut_card.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Text(
            "Angi's Yummy Burger",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 45,
          left: 20,
          child: Text(
            """Delish vegan burger 
    that tastes like heaven""",
            style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 229, 227, 227),
                fontWeight: FontWeight.normal),
          ),
        ),
        Positioned(
          top: 80,
          left: 20,
          child: Text(
            "€ 13.99",
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 150,
          child: JPButton(
            gradientColor1: Color.fromRGBO(144, 140, 245, 1),
            gradientColor2: Color.fromARGB(187, 141, 225, 1),
            buttonheight: 58,
            buttonwidth: 120,
            text: "Add to order",
            textcolor: Colors.white,
            fontsize: 12,
            fontweight: FontWeight.bold,
            onpress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 300,
          top: 20,
          height: 12,
          width: 12,
          child: SvgPicture.asset(
            "assets/svg/StarFilled.svg",
          ),
        ),
        Positioned(
          top: 18,
          left: 320,
          child: Text(
            "4.8",
            style: TextStyle(
                fontSize: 13,
                color: const Color.fromARGB(255, 229, 227, 227),
                fontWeight: FontWeight.normal),
          ),
        ),
        Positioned(
            height: 250,
            width: 250,
            left: 150,
            top: 25,
            child: Image(
              image: AssetImage("assets/images/Burger.png"),
            ))
      ],
    );
  }
}
