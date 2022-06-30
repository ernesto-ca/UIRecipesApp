import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_recipes/ui/components/button_widget.dart';
import 'package:ui_recipes/ui/components/favorite_card_widget.dart';
import 'package:ui_recipes/utils/commons.dart';

import 'components/border_button_widget.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({Key? key}) : super(key: key);

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen>
    with TickerProviderStateMixin {
  String _searchWord = "";
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print(scrollController.offset);
      print((scrollController.offset / 350).clamp(0, 1).toDouble());
      print(scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE2203D), Color(0xFFFF6D1B)],
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            height: getSize(screenSize, 400),
            width: getSize(screenSize, 275),
            decoration: const BoxDecoration(
              color: Color(0xA1E2203D),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
            ),
          ),
          Container(
            height: getSize(screenSize, 85),
            width: getSize(screenSize, 70),
            decoration: const BoxDecoration(
              color: Color(0xFFB51930),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          AppBar(
            title: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "\t\t\t\tYour customized\n",
                  style: TextStyle(fontSize: getSize(screenSize, 15))),
              TextSpan(
                  text: "\t\tBREAKFAST",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getSize(screenSize, 30)))
            ])),
            actions: <Widget>[
              BorderButton(
                text: "FILTER",
                onTap: () {},
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 90, left: 16, right: 16, bottom: 55),
            child: ListView(
              controller: scrollController,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text("MY FAVORITES",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FavoriteCardWidget(
                          assetPath: "french_toast.png",
                          text: "FRENCH TOAST",
                          onTap: () {
                            _showDetailsScreen(this.context);
                          }),
                      FavoriteCardWidget(
                          assetPath: "oatmeal.png",
                          text: "OATMEJAL",
                          onTap: () {
                            _showDetailsScreen(this.context);
                          }),
                      FavoriteCardWidget(
                          assetPath: "bacon_cheese.png",
                          text: "BACON CHEESE",
                          onTap: () {
                            _showDetailsScreen(this.context);
                          }),
                      FavoriteCardWidget(
                          assetPath: "grans_juice.png",
                          text: "GRANS JUICE",
                          onTap: () {
                            _showDetailsScreen(this.context);
                          }),
                      FavoriteCardWidget(
                          assetPath: "french_toast.png",
                          text: "FRENCH TOAST",
                          onTap: () {
                            _showDetailsScreen(this.context);
                          }),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  childAspectRatio: 9 / 16,
                  physics: const ClampingScrollPhysics(),
                  children: <Widget>[
                    FavoriteCardWidget(
                      assetPath: "fruit_salad.png",
                      text: "FRUIT SALAD",
                      height: 150,
                      width: 125,
                      //    scrollOffset: animation
                    ),
                    FavoriteCardWidget(
                        assetPath: "sweet_bread.png",
                        text: "THAI TOM YUM SOUP",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "eggs_salad.png",
                        text: "MOROCCAN CHICKEN SKILLET",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "fruit_salad.png",
                        text: "FRUIT SALAD",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "sweet_bread.png",
                        text: "THAI TOM YUM SOUP",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "eggs_salad.png",
                        text: "MOROCCAN CHICKEN SKILLET",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "fruit_salad.png",
                        text: "FRUIT SALAD",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "sweet_bread.png",
                        text: "THAI TOM YUM SOUP",
                        height: 150,
                        width: 125),
                    FavoriteCardWidget(
                        assetPath: "eggs_salad.png",
                        text: "MOROCCAN CHICKEN SKILLET",
                        height: 150,
                        width: 125),
                  ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ButtonBarWidget(_searchWord, _requestSearch)),
        ],
      ),
    );
  }

  _requestSearch(String word) {}

  void _showDetailsScreen(BuildContext context) {
    Navigator.pushNamed(context, "/details_screen");
  }
}
