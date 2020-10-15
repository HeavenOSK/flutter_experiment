import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/cursor_controller/cursor_state/cursor_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final cursorControllerProvider =
    StateNotifierProvider((_) => CursorController());

class CursorController extends StateNotifier<CursorState> {
  CursorController() : super(CursorState());

  void updateVirtualPosition() {
    print('called:updateVirtualPosition');
  }

  void updateRealPosition(Offset pos) {
    state = state.copyWith(realPosition: pos);
  }
}
