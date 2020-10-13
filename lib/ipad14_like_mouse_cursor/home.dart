import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlayGround(),
    );
  }
}

class PlayGround extends StatefulWidget {
  const PlayGround({
    Key key,
  }) : super(key: key);

  @override
  _PlayGroundState createState() => _PlayGroundState();
}

class _PlayGroundState extends State<PlayGround>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final center = size / 2;
    return Stack(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) {
                  _.position;
                  print('Enter');
                  setState(() {});
                },
                onExit: (_) {},
                child: Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromRGBO(170, 170, 170, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(80),
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
      ],
    );
  }
}
