import 'package:flutter/material.dart';

class GuidePainter extends CustomPainter {
  GuidePainter({
    @required this.startAlignment,
    @required this.firstControlAlignment,
    this.secondControlAlignment,
    @required this.endAlignment,
  })  : assert(startAlignment != null),
        assert(firstControlAlignment != null),
        assert(endAlignment != null);

  final Alignment startAlignment;
  final Alignment firstControlAlignment;
  final Alignment secondControlAlignment;
  final Alignment endAlignment;

  bool get isCubit => secondControlAlignment != null;

  @override
  void paint(Canvas canvas, Size size) {
    final startPoint = startAlignment.alongSize(size);
    final firstPoint = firstControlAlignment.alongSize(size);
    final secondPoint = secondControlAlignment.alongSize(size);
    final endPoint = endAlignment.alongSize(size);

    final guidPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final guidePath = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..lineTo(
        firstPoint.dx,
        firstPoint.dy,
      )
      ..lineTo(
        secondPoint.dx,
        secondPoint.dy,
      )
      ..lineTo(
        endPoint.dx,
        endPoint.dy,
      );
    canvas.drawPath(guidePath, guidPaint);
    canvas.drawCircle(startPoint, 8, guidPaint);
    canvas.drawCircle(firstPoint, 8, guidPaint);
    canvas.drawCircle(secondPoint, 8, guidPaint);
    canvas.drawCircle(endPoint, 8, guidPaint);
  }

  @override
  bool shouldRepaint(GuidePainter oldDelegate) => true;
}
