import 'package:flutter/material.dart';

import '../utils/commons.dart';
import 'components/bottom_dish_widget.dart';
import 'components/play_widget.dart';
import 'components/step_widget.dart';

class MoreDetailsScreen extends StatelessWidget {
  const MoreDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: getSize(screenSize, 24)),
              child: PlayWidget(() {
                print('watch recipe');
              }),
            ),
          ],
        ),
        body: Column(children: <Widget>[
          Flexible(
            flex: 5,
            fit: FlexFit.loose,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  getSize(screenSize, 28), 0, getSize(screenSize, 28), 0),
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "FRENCH \nTOAST",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black, letterSpacing: 4),
                      ),
                      SizedBox(
                        height: getSize(screenSize, 8),
                      ),
                      Text(
                          "In a small bowl, combine, cinnamon, nutmeg and sugar and set aside briefly.",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  wordSpacing: 2,
                                  fontFamily: "Roboto",
                                  color: Colors.black54)),
                      SizedBox(
                        height: getSize(screenSize, 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset("assets/fire_black.png"),
                              SizedBox(
                                width: getSize(screenSize, 8),
                              ),
                              Text(
                                "65%",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.black),
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
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: Colors.black87),
                          ),
                          Container(
                            height: getSize(screenSize, 40),
                            width: getSize(screenSize, 1),
                            color: Colors.white,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset("assets/time_black.png"),
                              SizedBox(
                                width: getSize(screenSize, 8),
                              ),
                              Text(
                                "10 min",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getSize(screenSize, 32),
                      ),
                      ...List.generate(10, (index) {
                        return StepWidget(
                          number: 1,
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sagittis risus in quam sollicitudin, eu commodo nibh sagittis. Aliquam suscipit suscipit nibh nec blandit. Nam lacinia leo nec felis commodo venenatis.",
                          heigth: 100,
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    0, 0, 0, getSize(screenSize, (screenSize.height / 28))),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    BottomDishWidget(
                      imagePath: "Bitmap-5.png",
                      onTapCallback: () {},
                    ),
                    BottomDishWidget(
                      imagePath: "Bitmap-6.png",
                      onTapCallback: () {},
                    ),
                    BottomDishWidget(
                      imagePath: "Bitmap-7.png",
                      onTapCallback: () {},
                    ),
                    BottomDishWidget(
                      imagePath: "Bitmap-8.png",
                      onTapCallback: () {},
                    ),
                    InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: getSize(screenSize, 49),
                          width: getSize(screenSize, 61),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith(
                                      (states) => Colors.grey),
                            ),
                            onPressed: () {},
                            child: const Icon(Icons.add),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
