import 'package:flutter/material.dart';
import 'package:ui_recipes/utils/commons.dart';

class FoodCardWidget extends StatelessWidget {
  String assetPath;
  String title;
  String nRecipes;
  Size screenSize;
  List<Color> colors;
  AlignmentGeometry begin;
  AlignmentGeometry end;
  late Offset offset;
  VoidCallback onTap;

  FoodCardWidget(
      {Key? key,
      required this.assetPath,
      required this.title,
      required this.nRecipes,
      required this.screenSize,
      required this.colors,
      required this.begin,
      required this.end,
      required double offsetY,
      required this.onTap})
      : super(key: key) {
    offset = Offset(0, offsetY);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getSize(screenSize, 160),
        height: getSize(screenSize, 300),
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.only(top: 50),
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: colors, begin: begin, end: end),
              borderRadius: BorderRadius.circular(25)),
          child: Stack(
            children: <Widget>[
              Transform.translate(
                  offset: offset,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(assetPath))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge!.merge(
                          TextStyle(
                              letterSpacing: 2,
                              fontSize: getSize(screenSize, 16),
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: getSize(screenSize, 20),
                    ),
                    Text(
                      nRecipes,
                      style: Theme.of(context).textTheme.bodyLarge!.merge(
                          TextStyle(
                              letterSpacing: 1.5,
                              fontSize: getSize(screenSize, 40),
                              fontWeight: FontWeight.w300)),
                    ),
                    Text(
                      "DIFFERENT\nRECIPES",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.merge(
                          TextStyle(
                              letterSpacing: 3,
                              fontSize: getSize(screenSize, 12))),
                    ),
                    SizedBox(
                      height: getSize(screenSize, 40),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
