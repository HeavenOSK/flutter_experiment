import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double _boundery = 0.0;

  AnimationController _controller;

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.addListener(() => setState(() {}));
    super.initState();
  }

  void _animate() {
    _controller.forward(from: 0).then((value) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        _controller.value = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GradientText(
              'This is a pen.',
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.blue,
                Colors.white,
                Colors.white,
              ], stops: [
                0.0,
                _controller.value,
                _controller.value,
                1.0,
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _animate();
        },
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    @required this.gradient,
  });

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }
}
