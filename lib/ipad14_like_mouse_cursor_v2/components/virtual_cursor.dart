import 'package:flutter/material.dart';

class VirtualCursor extends StatelessWidget {
  const VirtualCursor();

  static double get radius => 30;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: Color.fromRGBO(170, 170, 170, 0.6),
          ),
          color: Color.fromRGBO(170, 170, 170, 0.3),
        ),
      ),
    );
  }
}
