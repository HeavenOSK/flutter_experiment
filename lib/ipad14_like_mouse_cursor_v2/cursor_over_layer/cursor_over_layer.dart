import 'package:flutter/material.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/positioned_cursor/positioned_cursor.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'cursor_controller/cursor_controller.dart';
import 'cursor_update_layer/cursor_update_layer.dart';

part 'cursor_over_layer.g.dart';

@hwidget
Widget cursorOverLayer({
  @required Widget child,
}) {
  final controller = useProvider(cursorControllerProvider);
  return MouseRegion(
    onHover: (event) {
      controller.updateRealPosition(event.position);
    },
    onExit: (_) {},
    child: Stack(
      children: [
        child,
        CursorUpdateLayer(
          child: PositionedCursor(),
        ),
      ],
    ),
  );
}
