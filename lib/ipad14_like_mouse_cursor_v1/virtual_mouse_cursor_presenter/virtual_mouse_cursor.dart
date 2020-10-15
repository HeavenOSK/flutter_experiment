import 'package:flutter/material.dart';

class VirtualMouseCursor extends StatelessWidget {
  const VirtualMouseCursor({Key key}) : super(key: key);

  static double get radius => 60;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedContainer(
        height: radius,
        width: radius,
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Color.fromRGBO(170, 170, 170, 1.0),
        ),
      ),
    );
  }
}
