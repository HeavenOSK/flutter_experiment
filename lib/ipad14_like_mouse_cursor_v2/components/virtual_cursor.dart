import 'package:flutter/material.dart';

const double _defaultVirtualCursorRadius = 30;
const defaultVirtualCursorSize = Size(
  _defaultVirtualCursorRadius,
  _defaultVirtualCursorRadius,
);

class VirtualCursor extends StatelessWidget {
  const VirtualCursor({
    @required this.size,
    @required this.weight,
  });

  final Size size;
  final double weight;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_defaultVirtualCursorRadius),
          border: Border.all(
            color: Color.fromRGBO(170, 170, 170, 0.6),
          ),
          color: Color.fromRGBO(170, 170, 170, 0.8 - 0.4 * weight),
        ),
      ),
    );
  }
}
