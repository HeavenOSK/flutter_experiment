import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mouse_cursor_information.dart';

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
