import 'package:flutter/material.dart';

class StepWidget extends StatelessWidget {
  int number;
  String text;
  int heigth;

  StepWidget(
      {required this.number,
      required this.heigth,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffff4432),
                  borderRadius: BorderRadius.circular(7)),
              padding: const EdgeInsets.all(10),
              child: Text(
                getFormattedNumber(),
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            CustomPaint(
              painter: LineDishedPainter(heigth),
            ),
          ],
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 5,
              ),
              const Text("STEP",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Text(text)
            ],
          ),
        ))
      ],
    );
  }

  String getFormattedNumber() {
    if (number > 9) {
      return number.toString();
    } else {
      return "0$number";
    }
  }
}

class LineDishedPainter extends CustomPainter {
  int height;
  LineDishedPainter(this.height);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..strokeWidth = 1;
    paint.color = Colors.grey;
    var max = height;
    var dashWidth = 3;
    var dashSpace = 3;
    double startY = 0;

    while (max > 0) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      final space = dashSpace + dashWidth;
      startY += space;
      max -= space;
    }
  }

  @override // false be cause it never change even if the state changes
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
