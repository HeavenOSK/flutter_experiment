import 'package:flutter/material.dart';

import 'detail_pager.dart';

const _colors = [
  Colors.purpleAccent,
  Colors.deepOrange,
  Colors.green,
  Colors.yellow,
  Colors.blue,
];
const _itemHeight = 150.0;

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
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController controller;
  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          final indexString = index?.toString();
          final color = _colors[index % _colors.length];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPager(
                    currentIndex: index,
                    onPaging: (index) {
                      controller.jumpTo(index * _itemHeight);
                    },
                  ),
                ),
              );
            },
            child: Container(
              color: color,
              height: _itemHeight,
              child: Center(
                child: Text(indexString),
              ),
            ),
          );
        },
      ),
    );
  }
}
