import 'package:flutter/material.dart';
import 'package:ui_recipes/utils/commons.dart';

class CircleWidget extends StatelessWidget {
  final Color circleColor;
  final List<Widget> textChildren;
  Size screenSize;

  CircleWidget(
      {required this.circleColor,
      required this.textChildren,
      required this.screenSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(screenSize, 80),
      width: getSize(screenSize, 80),
      padding: const EdgeInsets.only(top: 10, left: 5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: circleColor),
      child: Column(children: textChildren),
    );
  }
}
