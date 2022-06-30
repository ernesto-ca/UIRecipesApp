import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:ui_recipes/ui/components/circle_widget.dart';

import '../utils/commons.dart';
import 'components/food_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF101621),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(getSize(screenSize, 60), getSize(screenSize, -40)),
            child: Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/huevo_frito.png")),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: <Widget>[
                const Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: getSize(screenSize, 450),
                    width: getSize(screenSize, 200),
                    decoration: const BoxDecoration(
                        color: Color(0xFF222B3B),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(90))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Welcome Back",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.merge(const TextStyle(
                          color: Color(0xFFE7ECEE),
                          fontWeight: FontWeight.w300,
                        ))),
                Padding(
                  padding: const EdgeInsets.only(right: 150, top: 30),
                  child: Text(
                    "What do you want to cook today?",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.merge(TextStyle(fontSize: getSize(screenSize, 35))),
                  ),
                ),
                SizedBox(
                  height: getSize(screenSize, 30),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      FoodCardWidget(
                        assetPath: "assets/sandwich.png",
                        title: "BREAKFAST",
                        nRecipes: "245+",
                        colors: const [Color(0xFFFF114E), Color(0xFFFF6D1B)],
                        screenSize: screenSize,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        offsetY: -15,
                        onTap: () => showBreakfastScreen(context),
                      ),
                      FoodCardWidget(
                        assetPath: "assets/ramen.png",
                        title: "LUNCH",
                        nRecipes: "358+",
                        colors: const [Color(0xFF3023AE), Color(0xFFC86DD7)],
                        screenSize: screenSize,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        offsetY: -30,
                        onTap: () => showBreakfastScreen(context),
                      ),
                      FoodCardWidget(
                        assetPath: "assets/ramen.png",
                        title: "DINNER",
                        nRecipes: "400+",
                        colors: const [Color(0xFF3023AE), Color(0xFF10A97E)],
                        screenSize: screenSize,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        offsetY: -30,
                        onTap: () => showBreakfastScreen(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getSize(screenSize, 30),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleWidget(
                          circleColor: const Color(0xFF10A97E),
                          textChildren: <Widget>[
                            Text(
                              "WHAT'S\nIN MY",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .merge(TextStyle(
                                      fontSize: getSize(screenSize, 10))),
                            ),
                            Transform.rotate(
                              angle: math.pi / 0.511,
                              child: Text(
                                "Fridge",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: getSize(screenSize, 28),
                                    fontFamily: "Ultra Refresh"),
                              ),
                            ),
                          ],
                          screenSize: screenSize),
                      CircleWidget(
                          circleColor: const Color(0xFF1E5CFC),
                          textChildren: <Widget>[
                            Text(
                              "INGREDIENTS",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .merge(TextStyle(
                                      fontSize: getSize(screenSize, 8))),
                            ),
                            SizedBox(
                              height: getSize(screenSize, 4),
                            ),
                            Transform.rotate(
                              angle: math.pi / 0.511,
                              child: Text(
                                "SCAN\nCOOK",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: getSize(screenSize, 28),
                                    fontFamily: "Ultra Refresh"),
                              ),
                            ),
                          ],
                          screenSize: screenSize),
                      CircleWidget(
                          circleColor: const Color(0xFFFFEB00),
                          textChildren: <Widget>[
                            Text(
                              "ADD MY",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .merge(TextStyle(
                                      color: Colors.black,
                                      fontSize: getSize(screenSize, 12))),
                            ),
                            SizedBox(
                              height: getSize(screenSize, 12),
                            ),
                            Transform.rotate(
                              angle: math.pi / 0.511,
                              child: Text(
                                "RECIPE",
                                style: TextStyle(
                                    color: const Color(0xFF1E5CFC),
                                    fontSize: getSize(screenSize, 28),
                                    fontFamily: "Ultra Refresh"),
                              ),
                            ),
                          ],
                          screenSize: screenSize)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  showBreakfastScreen(BuildContext context) {
    Navigator.pushNamed(context, "/breakfast_screen");
  }
}
