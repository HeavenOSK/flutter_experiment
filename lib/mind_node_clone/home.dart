import 'package:flutter/material.dart';

import 'component/component.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final child = Tooltip(
      message: 'message',
      child: RootNode(
        enable: false,
        onTap: () {},
      ),
    );
    return Scaffold(
      body: Playground(
        child: Center(
          child: MouseHoveringListener(
            onChanged: (_) {
              print(_);
            },
            child: child,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text(''),
      ),
    );
  }
}

class MouseHoveringListener extends StatefulWidget {
  const MouseHoveringListener({
    @required this.child,
    @required this.onChanged,
    Key key,
  }) : super(key: key);

  final Widget child;
  final ValueChanged<bool> onChanged;

  @override
  _MouseHoveringListenerState createState() => _MouseHoveringListenerState();
}

class _MouseHoveringListenerState extends State<MouseHoveringListener> {
  bool __hovering = false;

  set _hovering(bool newValue) {
    if (__hovering != newValue) {
      __hovering = newValue;
      widget.onChanged?.call(__hovering);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        _hovering = true;
      },
      onExit: (_) {
        _hovering = false;
      },
      child: widget.child,
    );
  }
}
