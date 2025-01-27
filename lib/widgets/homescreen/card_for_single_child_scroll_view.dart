import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardForSingleChildScrollView extends StatelessWidget {
  const CardForSingleChildScrollView(
      {super.key,
      required this.cardImage,
      required this.foodName,
      required this.foodDescription,
      required this.foodPrice,
      required this.foodLikes});
  final Image cardImage;
  final String foodName;
  final String foodDescription;
  final String foodPrice;
  final String foodLikes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 280,
          width: 200,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        width: 1.0,
                        color: const Color.fromRGBO(255, 255, 255, 0.5)),
                    gradient: LinearGradient(
                      stops: [0.07, 0.61, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(1, 1, 1, 0.5),
                        Color.fromRGBO(78, 76, 136, 1),
                        Color.fromRGBO(86, 56, 143, 1)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 10,
                  height: 150,
                  width: 150,
                  child: cardImage,
                ),
                Positioned(
                  top: 180,
                  left: 20,
                  child: Text(
                    foodName,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Text(
                    foodDescription,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 209, 208, 208)),
                  ),
                ),
                Positioned(
                  top: 225,
                  left: 20,
                  child: Text(
                    foodPrice,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 228,
                  left: 130,
                  height: 13,
                  width: 13,
                  child: SvgPicture.asset("assets/svg/Heart.svg"),
                ),
                Positioned(
                  top: 225,
                  left: 150,
                  child: Text(
                    foodLikes,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () => showModalBottomSheet<void>(
                    backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: Stack(
                              children: [
                                Positioned(
                                    height: 425,
                                    width: 425,
                                    bottom: 520,
                                    child: cardImage),
                                Positioned(
                                  top: 180,
                                  left: 30,
                                  height: 350,
                                  width: 350,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 15.0, sigmaY: 15.0),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          side: BorderSide(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.3),
                                            width: 0.3,
                                          ),
                                        ),
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.1),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(top: 30),
                                              child: Text(
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                                foodName,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      35, 10, 35, 20),
                                              child: Text(
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(
                                                        255, 208, 208, 208),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  "Lorem ipsum dolor sit amet consectetur. Eget at enim pharetra dolor viverra at. Pulvinar maecenas fames aliquet etiam convallis elit sapien pulvinar."),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  35, 0, 35, 10),
                                              child: Text(
                                                foodPrice,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25),
                                              child: Divider(
                                                thickness: 0.5,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      25, 20, 90, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "Ingredients",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        "Reviews",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
