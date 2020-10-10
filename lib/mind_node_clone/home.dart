import 'package:flutter/material.dart';
import 'package:flutter_experiment/mind_node_clone/component/component.dart';

const _nodeDistance = 40.0;

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Playground(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      for (int i = 1; i < 10; i++)
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: _nodeDistance / 2),
                                child: SizedBox(
                                  height: i * _nodeDistance,
                                  width: 400,
                                  child: CustomPaint(
                                    painter: CurvePainter(
                                      start: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                  ),
                                ),
                              ),
                              Node(),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      for (int i = 1; i < 10; i++)
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: _nodeDistance / 2),
                                child: SizedBox(
                                  height: i * _nodeDistance,
                                  width: 400,
                                  child: CustomPaint(
                                    painter: CurvePainter(
                                      start: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ),
                              Node(),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  CurvePainter({
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
  bool shouldRepaint(CurvePainter oldDelegate) =>
      oldDelegate.start != start || oldDelegate.end != end;
}

class Node extends StatelessWidget {
  const Node({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(40),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text('Node'),
    );
  }
}
