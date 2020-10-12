import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemMouseCursors.none;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _positionNotifier = ValueNotifier<Offset>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: MouseRegion(
          cursor: SystemMouseCursors.none,
          onHover: (d) {
            _positionNotifier.value = d.position;
          },
          child: PlayGround(
            positionNotifier: _positionNotifier,
          ),
        ),
      ),
    );
  }
}

class PlayGround extends StatefulWidget {
  const PlayGround({
    @required this.positionNotifier,
    Key key,
  }) : super(key: key);
  final ValueNotifier<Offset> positionNotifier;

  @override
  _PlayGroundState createState() => _PlayGroundState();
}

class _PlayGroundState extends State<PlayGround>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    )..addListener(() {
        setState(() {
          _enterOffset += _diff * _controller.value;
        });
      });
  }

  bool _hasFocus = false;

  Offset _enterOffset;
  Offset _diff;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final center = size / 2;
    return AnimatedBuilder(
      animation: widget.positionNotifier,
      builder: (context, _) => Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  onEnter: (_) {
                    print('Enter');
                    setState(() {
                      _enterOffset = _.position;
                      _diff =
                          Offset(center.width, center.height) - _enterOffset;
                      _hasFocus = true;
                    });
                    // _controller.forward();
                  },
                  onExit: (_) {
                    print('Exit');
                    setState(() {
                      _hasFocus = false;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromRGBO(170, 170, 170, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(MouseCursor.radius),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 32,
                    ),
                    child: Text(
                      'BOX',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Color.fromRGBO(170, 170, 170, 1.0),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: _hasFocus
                ? _enterOffset.dy - 32 * 1.5
                : widget.positionNotifier.value?.dy - 32,
            left: _hasFocus
                ? _enterOffset.dx - 32 * 2.5
                : widget.positionNotifier.value?.dx - 32,
            child: IgnorePointer(
              child: MouseCursor(
                hasFocus: _hasFocus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MouseCursor extends StatelessWidget {
  const MouseCursor({
    @required this.hasFocus,
    Key key,
  }) : super(key: key);

  final bool hasFocus;

  static double get radius => 60;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: hasFocus ? radius * 1.5 : radius,
      width: hasFocus ? radius * 2.5 : radius,
      duration: Duration(milliseconds: 100),
      decoration: hasFocus
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(radius / 2),
              color: Color.fromRGBO(170, 170, 170, 0.5),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: Color.fromRGBO(170, 170, 170, 1.0),
            ),
    );
  }
}
