import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor/virtual_mouse_cursor_presenter/mouse_cursor_information.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final virtualMouseCursorControllerProvider = ChangeNotifierProvider.autoDispose(
  (_) => VirtualMouseCursorController(),
);

class VirtualMouseCursorController
    extends ValueNotifier<MouseCursorInformation> {
  VirtualMouseCursorController() : super(MouseCursorInformation());

  void hide() {
    value = MouseCursorInformation();
  }

  void updateRealPosition(Offset offset) {
    value = value.copyWith(realPosition: offset);
  }

  void enter(
    Offset targetPosition,
    Size targetSize,
  ) {
    value = value.copyWith(
      target: MouseCursorTarget(
        position: targetPosition,
        size: targetSize,
      ),
      hasFocus: true,
    );
  }

  void exit() {
    value = value.copyWith(hasFocus: false);
  }
}
