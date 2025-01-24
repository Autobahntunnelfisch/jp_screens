import 'package:flutter/material.dart';
import 'package:jp_screens/widgets/home_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg_mainscreen.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              width: 300,
              left: 20,
              top: 75,
              child: Text(
                textAlign: TextAlign.left,
                "Choose Your Favorite Snack",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900),
              ),
            ),
            HomeListView(),
          ],
        ),
      ),
    );
  }
}
