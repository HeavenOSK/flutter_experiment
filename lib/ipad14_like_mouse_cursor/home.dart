import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mouse_modifier_region.dart';
import 'virtual_mouse_cursor_presenter/virtual_mouse_cursor_controller.dart';

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

class PlayGround extends StatefulHookWidget {
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
    final controller = useProvider(
      virtualMouseCursorControllerProvider.select((_) => _),
    );
    return Stack(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseModifierRegion(
                onEnter: (pos, size) {
                  controller.enter(pos, size);
                },
                onExit: () {
                  controller.exit();
                },
                child: _Target(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Target extends StatelessWidget {
  const _Target({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
