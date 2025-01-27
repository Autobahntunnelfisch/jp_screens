import 'package:flutter/material.dart';
import 'package:jp_screens/widgets/homescreen/card_for_single_child_scroll_view.dart';
import 'package:jp_screens/widgets/homescreen/add_to_order_card.dart';
import 'package:jp_screens/widgets/homescreen/tab_bar_home_screen.dart';
import 'package:jp_screens/widgets/homescreen/tab_bar_item.dart';

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
        body: DefaultTabController(
            length: 5,
            child: Column(
              children: [
                SizedBox(height: 150),
                TabBarHomeScreen(),
                SizedBox(height: 50),
                AddToOrderCard(),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "We Recommend",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                      Stack(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.hardEdge,
                            child: Row(
                              spacing: 18.0,
                              children: <Widget>[
                                CardForSingleChildScrollView(
                                  cardImage: Image(
                                    image: AssetImage(
                                        "assets/images/Cupcake2.png"),
                                  ),
                                  foodName: "Mogli's Cup",
                                  foodDescription: "Strawberry Ice Cream",
                                  foodPrice: "€ 8.99",
                                  foodLikes: "200",
                                ),
                                CardForSingleChildScrollView(
                                  cardImage: Image(
                                    image: AssetImage(
                                        "assets/images/Ice Cream 3.png"),
                                  ),
                                  foodName: "Balu's Cup",
                                  foodDescription: "Pistachio Ice Cream",
                                  foodPrice: "€ 8.99",
                                  foodLikes: "200",
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
