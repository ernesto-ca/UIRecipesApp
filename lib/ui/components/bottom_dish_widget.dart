import 'package:flutter/material.dart';

import '../../utils/commons.dart';

class BottomDishWidget extends StatelessWidget {
  String imagePath;
  VoidCallback onTapCallback;
  BottomDishWidget(
      {required this.imagePath, required this.onTapCallback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTapCallback,
      child: SizedBox(
        height: getSize(screenSize, 49),
        width: getSize(screenSize, 61),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(9),
          child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.asset(
                ASSETS_FAVORITE_PATH + imagePath,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
