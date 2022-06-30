import 'package:flutter/material.dart';

import '../../utils/commons.dart';

class PlayWidget extends StatelessWidget {
  VoidCallback? onTap;

  PlayWidget(this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/listen2.png",
            height: getSize(screenSize, 40),
          ),
          Padding(
            padding: EdgeInsets.only(left: getSize(screenSize, 15)),
            child: Text(
              "Watch Recipe",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.grey),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
