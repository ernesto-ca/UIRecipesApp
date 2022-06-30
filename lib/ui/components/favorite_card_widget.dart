import 'package:flutter/material.dart';

import '../../utils/commons.dart';

class FavoriteCardWidget extends StatelessWidget {
  String assetPath;
  String text;
  VoidCallback? onTap;
  double height;
  double width;

  FavoriteCardWidget(
      {required this.assetPath,
      required this.text,
      this.height = 125,
      this.width = 110,
      this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: getSize(screenSize, width),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                ASSETS_FAVORITE_PATH + assetPath,
                height: getSize(screenSize, height),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
