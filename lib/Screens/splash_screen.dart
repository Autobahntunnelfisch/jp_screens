import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_screens/Screens/home_screen.dart';
import 'package:jp_screens/widgets/j_p_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_startscreen.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: -32,
              top: 100,
              width: 570,
              height: 570,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Cupcake1.png")),
                ),
              ),
            ),
            Positioned(
              top: 455,
              width: 400,
              height: 300,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/snack_snack.png"),
                    fit: BoxFit.fitWidth,
                    opacity: 0.5,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 570,
              height: 225,
              width: 365,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 9.0, sigmaY: 9.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.3),
                        width: 0.3,
                      ),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                            "Feeling Snackish Today?",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 35, 20),
                          child: Text(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 208, 208, 208),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              "Explore Angi's most popular snack selection and get instantly happy."),
                        ),
                        JPButton(
                          buttonheight: 68,
                          buttonwidth: 230,
                          onpress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          text: "Order Now",
                          textcolor: Colors.white,
                          fontsize: 18,
                          fontweight: FontWeight.w900,
                          gradientColor1: Color.fromRGBO(246, 158, 163, 1),
                          gradientColor2: Color.fromRGBO(233, 112, 196, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
