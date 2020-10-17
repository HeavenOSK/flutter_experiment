import 'package:flutter/material.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/components/components.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../cursor_controller/cursor_controller.dart';

part 'positioned_cursor.g.dart';

@hwidget
Widget positionedCursor() {
  final isHidden =
      useProvider(cursorControllerProvider.state.select((s) => s.isHidden));
  final pos = useProvider(
      cursorControllerProvider.state.select((s) => s.virtualPosition));
  final target = useProvider(
    cursorControllerProvider.state.select((value) => value.target),
  );
  final cursorWeight = useProvider(
    cursorControllerProvider.state.select((value) => value.cursorWeight),
  );

  final additionalOffset = target == null
      ? Offset(0, 0)
      : ((target.size + Offset(0, -8)) * cursorWeight -
          defaultVirtualCursorSize * cursorWeight);
  final size = defaultVirtualCursorSize + additionalOffset;
  if (isHidden) {
    return const SizedBox.shrink();
  } else {
    return Positioned(
      top: pos.dy - size.height / 2,
      left: pos.dx - size.width / 2,
      child: VirtualCursor(
        size: size,
        weight: cursorWeight,
      ),
    );
  }
}
