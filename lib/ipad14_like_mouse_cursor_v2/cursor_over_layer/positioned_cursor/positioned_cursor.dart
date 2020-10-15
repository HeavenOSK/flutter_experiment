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
  final pos =
      useProvider(cursorControllerProvider.state.select((s) => s.realPosition));
  if (isHidden) {
    return const SizedBox.shrink();
  } else {
    return Positioned(
      top: pos.dy,
      left: pos.dx,
      child: VirtualCursor(),
    );
  }
}
