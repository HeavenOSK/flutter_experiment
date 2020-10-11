import 'package:flutter/material.dart';

import 'alignment_bezier_painter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          padding: const EdgeInsets.all(16),
          crossAxisCount: 3,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            _SampleItem(
              painter: AlignedBezierPainter(
                startAlignment: Alignment.bottomLeft,
                firstControlAlignment: Alignment(
                  Alignment.bottomLeft.x + Alignment.bottomRight.x * 0.3,
                  Alignment.bottomLeft.y,
                ),
                secondControlAlignment: Alignment(
                  Alignment.topRight.x - 2 * 0.15,
                  Alignment.topRight.y + 1,
                ),
                endAlignment: Alignment.topRight,
              ),
            ),
            _SampleItem(
              painter: AlignedBezierPainter(
                startAlignment: Alignment.bottomLeft,
                firstControlAlignment: Alignment(
                  -0.5,
                  -0.5,
                ),
                secondControlAlignment: Alignment(
                  Alignment.topRight.x - 2 * 0.15,
                  Alignment.topRight.y,
                ),
                endAlignment: Alignment.bottomRight,
              ),
            ),
            _SampleItem(
              painter: AlignedBezierPainter(
                startAlignment: Alignment.bottomLeft,
                firstControlAlignment: Alignment(
                  Alignment.bottomLeft.x + 0.5,
                  Alignment.bottomLeft.y,
                ),
                secondControlAlignment: Alignment(
                  Alignment.topRight.x - 0.3,
                  Alignment.topRight.y,
                ),
                endAlignment: Alignment.topRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SampleItem extends StatelessWidget {
  const _SampleItem({
    Key key,
    @required this.painter,
  }) : super(key: key);

  final AlignedBezierPainter painter;

  @override
  Widget build(BuildContext context) {
    return GridPaper(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: CustomPaint(
          painter: painter,
        ),
      ),
    );
  }
}
