import 'package:flutter/material.dart';

const _nodeDistance = 40.0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _Playground(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  IntrinsicHeight(
                    child: Stack(
                      children: [
                        for (int i = 1; i < 10; i++)
                          _Node(
                            boxAlignment: Alignment.bottomLeft,
                            rowCrossAlignment: CrossAxisAlignment.start,
                            nodePadding: const EdgeInsets.only(
                              top: _nodeDistance / 2,
                            ),
                            distanceFromCenter: i,
                            start: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          ),
                      ],
                    ),
                  ),
                  IntrinsicHeight(
                    child: Stack(
                      children: [
                        for (int index = 1; index < 10; index++)
                          _Node(
                            boxAlignment: Alignment.topLeft,
                            rowCrossAlignment: CrossAxisAlignment.end,
                            nodePadding: const EdgeInsets.only(
                              bottom: _nodeDistance / 2,
                            ),
                            distanceFromCenter: index,
                            start: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Node extends StatelessWidget {
  const _Node({
    Key key,
    @required this.boxAlignment,
    @required this.rowCrossAlignment,
    @required this.nodePadding,
    @required this.distanceFromCenter,
    @required this.start,
    @required this.end,
  }) : super(key: key);

  final Alignment boxAlignment;
  final CrossAxisAlignment rowCrossAlignment;
  final EdgeInsets nodePadding;
  final int distanceFromCenter;
  final Alignment start;
  final Alignment end;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: boxAlignment,
      child: Row(
        crossAxisAlignment: rowCrossAlignment,
        children: [
          Padding(
            padding: nodePadding,
            child: SizedBox(
              height: _nodeDistance * distanceFromCenter,
              width: 400,
              child: CustomPaint(
                painter: _CurvePainter(
                  start: start,
                  end: end,
                ),
              ),
            ),
          ),
          _Leaf(),
        ],
      ),
    );
  }
}

class _Leaf extends StatelessWidget {
  const _Leaf();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text('Leaf'),
    );
  }
}

class _CurvePainter extends CustomPainter {
  _CurvePainter({
    @required this.start,
    @required this.end,
  });

  final Alignment start;
  final Alignment end;

  @override
  void paint(Canvas canvas, Size size) {
    final startOffset = start.alongSize(size);
    final endOffset = end.alongSize(size);
    final between = (endOffset - startOffset);

    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0;

    final path = Path()
      ..moveTo(startOffset.dx, startOffset.dy)
      ..cubicTo(
        startOffset.dx + between.dx * 0.15,
        startOffset.dy,
        endOffset.dx - between.dx * 0.3,
        endOffset.dy,
        endOffset.dx,
        endOffset.dy,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_CurvePainter oldDelegate) =>
      oldDelegate.start != start || oldDelegate.end != end;
}

class _Playground extends StatelessWidget {
  const _Playground({
    @required this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final viewportSize = Size(
          constraints.maxWidth,
          constraints.maxHeight,
        );
        return SizedBox.fromSize(
          size: viewportSize,
          child: InteractiveViewer(
            boundaryMargin: EdgeInsets.symmetric(
              horizontal: viewportSize.width,
              vertical: viewportSize.height,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
