import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'virtual_mouse_cursor_controller.dart';

enum _CursorStateType {
  noFocus,
  startFocus,
  focus,
  removeFocus,
}

extension _CursorStateTypeExtension on _CursorStateType {
  bool get hasFocus =>
      this == _CursorStateType.startFocus || this == _CursorStateType.focus;

  bool get animating =>
      this == _CursorStateType.startFocus ||
      this == _CursorStateType.removeFocus;
}

class PositionedMouseCursor extends StatefulHookWidget {
  const PositionedMouseCursor({Key key}) : super(key: key);

  static double get radius => 20;

  @override
  _PositionedMouseCursorState createState() => _PositionedMouseCursorState();
}

class _PositionedMouseCursorState extends State<PositionedMouseCursor>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    super.initState();
  }

  _CursorStateType _stateType = _CursorStateType.noFocus;
  set stateType(value) {
    if (_stateType == value) {
      return;
    }
    _stateType = value;
    switch (_stateType) {
      case _CursorStateType.startFocus:
        _forward();
        break;
      case _CursorStateType.focus:
        break;
      case _CursorStateType.removeFocus:
        _reverse();
        break;
      case _CursorStateType.noFocus:
        break;
    }
  }

  void startFocus() {
    if (_stateType.hasFocus) {
      return;
    }
    stateType = _CursorStateType.startFocus;
  }

  void removeFocus() {
    if (!_stateType.hasFocus) {
      return;
    }
    stateType = _CursorStateType.removeFocus;
  }

  void _forward() {
    _controller.forward().then((_) {
      stateType = _CursorStateType.focus;
    });
  }

  void _reverse() {
    _controller.forward().then((_) {
      stateType = _CursorStateType.noFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(virtualMouseCursorControllerProvider);
    final info = controller.value;

    if (!info.showing) {
      return SizedBox.shrink();
    } else {
      return AnimatedBuilder(
        animation: _controller,
        builder: (context, snapshot) {
          if (info.hasFocus) {
            startFocus();
          } else {
            removeFocus();
          }

          final isAnimating = _stateType.animating;

          final pos = info.realPosition;
          final size = Size(
            PositionedMouseCursor.radius,
            PositionedMouseCursor.radius,
          );

          return Positioned(
            top: pos.dy - PositionedMouseCursor.radius,
            left: pos.dx - PositionedMouseCursor.radius,
            child: IgnorePointer(
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    PositionedMouseCursor.radius,
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(170, 170, 170, 0.5),
                  ),
                  color: Color.fromRGBO(170, 170, 170, 0.2),
                ),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller = null;
    super.dispose();
  }
}
