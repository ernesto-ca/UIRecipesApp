import 'package:flutter/material.dart';

import '../utils/commons.dart';

class DishDetailsScreen extends StatelessWidget {
  const DishDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
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
          Transform.translate(
            offset: Offset(0, getSize(screenSize, 110)),
            child: Container(
              height: getSize(screenSize, screenSize.height / 1.6),
              width: getSize(screenSize, screenSize.width / 1.4),
              decoration: const BoxDecoration(
                color: Color(0x20E2203D),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(90)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, getSize(screenSize, -80)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                    child: Image.asset(
                  "assets/details_dummy.png",
                  height: screenSize.height / 1.7,
                  width: screenSize.width,
                  fit: BoxFit.cover,
                )),
                Transform.translate(
                  offset: Offset(0, getSize(screenSize, -25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: getSize(screenSize, 16)),
                        child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFFE2203D),
                            size: getSize(screenSize, 48),
                          ),
                          onPressed: () {
                            _showMoreDetailsScreen(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: getSize(screenSize, 24).toDouble()),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              minimumSize: Size(getSize(screenSize, 46),
                                  getSize(screenSize, 46)),
                              primary: Colors.white,
                              elevation: 5),
                          child: const Text(
                            "READ MORE",
                            style: TextStyle(
                                color: Color(0xFFE2203D),
                                fontWeight: FontWeight.w400,
                                letterSpacing: 2),
                          ),
                          onPressed: () {
                            _showMoreDetailsScreen(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getSize(screenSize, 20)),
                  child: SizedBox(
                    width: getSize(screenSize, 200),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: getSize(screenSize, 200),
                          child: Text(
                            "FRENCH TOAST",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color: Colors.white, letterSpacing: 4),
                          ),
                        ),
                        Text(
                            "In a small bowl, combine, cinnamon, nutmeg and sugar and set aside briefly.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    wordSpacing: 2, fontFamily: "Roboto")),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getSize(screenSize, 16),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: getSize(screenSize, 30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset("assets/fire.png"),
                      SizedBox(
                        width: getSize(screenSize, 8),
                      ),
                      Text(
                        "65%",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Container(
                    height: getSize(screenSize, 40),
                    width: getSize(screenSize, 1),
                    color: Colors.white,
                  ),
                  Text(
                    "Vegetarian",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Container(
                    height: getSize(screenSize, 40),
                    width: getSize(screenSize, 1),
                    color: Colors.white,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset("assets/time.png", scale: 30),
                      SizedBox(
                        width: getSize(screenSize, 8),
                      ),
                      Text(
                        "10 min",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showMoreDetailsScreen(BuildContext context) {
    Navigator.pushNamed(context, "/more_details_screen");
  }
}
