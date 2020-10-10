import 'package:flutter/material.dart';

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
