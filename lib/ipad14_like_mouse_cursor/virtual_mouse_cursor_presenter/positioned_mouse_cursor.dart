import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor/virtual_mouse_cursor_presenter/mouse_cursor_information.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'virtual_mouse_cursor_controller.dart';

enum _CursorStateType {
  noFocus,
  startFocus,
  focus,
  removeFocus,
}

Offset _f({
  @required Offset origin,
  @required Offset center,
  @required Offset pos,
}) {
  final maxDiff = origin - center;
  final diff = pos - center;
  return diff * 0.4;
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
  Animation<Offset> _position;
  Animation<Size> _size;
  Offset _currentPosition;

  _CursorStateType _stateType = _CursorStateType.noFocus;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 160),
      reverseDuration: Duration(milliseconds: 100),
    );
    super.initState();
  }

  void _startFocus(MouseCursorInformation info) {
    if (_stateType.hasFocus) {
      return;
    }
    _stateType = _CursorStateType.startFocus;
    _initializeAnimation(info);
    _forward();
  }

  void _removeFocus(MouseCursorInformation info) {
    if (!_stateType.hasFocus) {
      return;
    }
    _stateType = _CursorStateType.removeFocus;
    _initializeAnimationForReverse(
      info,
    );
    _reverse();
  }

  void _initializeAnimation(
    MouseCursorInformation info,
  ) {
    final positionTween = Tween(
      begin: info.realPosition,
      end: info.target.position +
          _f(
            origin: info.target.position,
            pos: info.realPosition,
            center: info.target.center,
          ),
    );
    _position = _controller
        .drive(
          CurveTween(
              curve: Interval(
            _controller.value,
            1,
            curve: Curves.fastOutSlowIn,
          )),
        )
        .drive(positionTween);
    final sizeTween = Tween(
      begin: Size(
        PositionedMouseCursor.radius,
        PositionedMouseCursor.radius,
      ),
      end: info.target.size,
    );
    _size = _controller
        .drive(
          CurveTween(
              curve: Interval(
            _controller.value,
            1,
            curve: Curves.fastOutSlowIn,
          )),
        )
        .drive(sizeTween);
  }

  void _initializeAnimationForReverse(MouseCursorInformation info) {
    final positionTween = Tween(
      begin: info.realPosition,
      end: _currentPosition,
    );
    _position = _controller
        .drive(
          CurveTween(
              curve: Interval(
            0,
            _controller.value,
            curve: Curves.fastOutSlowIn,
          )),
        )
        .drive(positionTween);
    final sizeTween = Tween(
      begin: Size(
        PositionedMouseCursor.radius,
        PositionedMouseCursor.radius,
      ),
      end: info.target.size,
    );
    _size = _controller
        .drive(
          CurveTween(
              curve: Interval(
            0,
            _controller.value,
            curve: Curves.fastOutSlowIn,
          )),
        )
        .drive(sizeTween);
  }

  void _forward() {
    _controller.forward().then((_) {
      _stateType = _CursorStateType.focus;
    });
  }

  void _reverse() {
    _controller.reverse().then((_) {
      _stateType = _CursorStateType.noFocus;
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
            _startFocus(info);
          } else {
            _removeFocus(info);
          }

          final isAnimating = _stateType.animating;
          final hasFocus = _stateType.hasFocus;

          _currentPosition = isAnimating
              ? _position.value
              : (hasFocus
                  ? info.target.position +
                      _f(
                        origin: info.target.position,
                        pos: info.realPosition,
                        center: info.target.center,
                      )
                  : info.realPosition -
                      Offset(
                        PositionedMouseCursor.radius / 2,
                        PositionedMouseCursor.radius / 2,
                      ));
          final size = isAnimating
              ? _size.value
              : (hasFocus
                  ? info.target.size
                  : Size(
                      PositionedMouseCursor.radius,
                      PositionedMouseCursor.radius,
                    ));

          return Positioned(
            top: _currentPosition.dy,
            left: _currentPosition.dx,
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
