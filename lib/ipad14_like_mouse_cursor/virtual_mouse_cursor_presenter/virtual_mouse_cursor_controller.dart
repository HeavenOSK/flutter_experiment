import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor/virtual_mouse_cursor_presenter/mouse_cursor_information.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final virtualMouseCursorControllerProvider = ChangeNotifierProvider.autoDispose(
  (_) => VirtualMouseCursorController(),
);

class VirtualMouseCursorController
    extends ValueNotifier<MouseCursorInformation> {
  VirtualMouseCursorController()
      : super(
          MouseCursorInformation.notShowing(),
        );
  void hide() {
    value = MouseCursorInformation.notShowing();
  }

  void updateRealPosition(Offset offset) {
    value = value.when(
      notShowing: () => MouseCursorInformation.showing(realPosition: offset),
      showing: (_, target) {
        return MouseCursorInformation.showing(
          realPosition: offset,
          target: target,
        );
      },
    );
  }

  void enter(
    Offset targetPosition,
    Size targetSize,
  ) {
    value = value.when(
      notShowing: () => MouseCursorInformation.notShowing(),
      showing: (p, _) {
        return MouseCursorInformation.showing(
          realPosition: p,
          target: MouseCursorTarget(
            position: targetPosition,
            targetSize: targetSize,
          ),
        );
      },
    );
  }

  void exit() {
    value = value.when(
      notShowing: () => MouseCursorInformation.notShowing(),
      showing: (p, _) {
        return MouseCursorInformation.showing(realPosition: p);
      },
    );
  }
}
