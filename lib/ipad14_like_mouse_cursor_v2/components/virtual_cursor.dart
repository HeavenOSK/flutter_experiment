import 'package:flutter/material.dart';

class VirtualCursor extends StatelessWidget {
  const VirtualCursor();

  static double get radius => 60;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Color.fromRGBO(170, 170, 170, 1.0),
        ),
      ),
    );
  }
}
