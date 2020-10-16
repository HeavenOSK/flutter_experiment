import 'package:flutter/material.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/cursor_controller/cursor_controller.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/utils/loop_animation_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CursorUpdateLayer extends StatefulWidget {
  const CursorUpdateLayer({
    @required this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  _CursorUpdateLayerState createState() => _CursorUpdateLayerState();
}

class _CursorUpdateLayerState extends State<CursorUpdateLayer>
    with SingleTickerProviderStateMixin {
  LoopAnimationController _loopAnimationController;
  @override
  void initState() {
    final cursorController = context.read(cursorControllerProvider);
    _loopAnimationController = LoopAnimationController(this)
      ..addListener(
        () {
          cursorController.updateFrame();
        },
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    _loopAnimationController?.dispose();
    _loopAnimationController = null;
    super.dispose();
  }
}
