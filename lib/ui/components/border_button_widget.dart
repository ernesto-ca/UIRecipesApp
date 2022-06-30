import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

  BorderButton({required this.text, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15, right: 15),
      child: OutlinedButton(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
        ),
        onPressed: onTap,
        style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>((states) {
          return const BorderSide(color: Colors.white, width: 1);
        })),
      ),
    );
  }
}
