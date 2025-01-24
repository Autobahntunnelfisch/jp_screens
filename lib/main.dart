import 'package:flutter/material.dart';
import 'package:jp_screens/Screens/splash_screen.dart';

void main() {
  runApp(const JPScreens());
}

class JPScreens extends StatelessWidget {
  const JPScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
