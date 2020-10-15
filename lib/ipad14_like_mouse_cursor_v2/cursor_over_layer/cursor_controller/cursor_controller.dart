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
    springAction();
  }

  void updateRealPosition(Offset pos) {
    state = state.copyWith(realPosition: pos);
  }

  void exit() {
    state = CursorState();
  }

  void springAction() {
    double spring = 0.2;
    double easing = 0.9;

    double speedX = 0;
    double speedY = 0;
    final realPosition = state.realPosition;
    final mouseX = realPosition.dx;
    final mouseY = realPosition.dy;
    final ball = state.virtualPosition ?? realPosition;

    //マウスとballの距離
    final disX = mouseX - ball.dx;
    final disY = mouseY - ball.dy;

    //距離にバネ係数をかけたものを速度に加算
    speedX += disX * spring;
    speedY += disY * spring;

    //収束値を速度にかける
    speedX *= easing;
    speedY *= easing;

    //残像になるball2設定
    state = state.copyWith(
      virtualPosition: Offset(
        ball.dx + speedX,
        ball.dy + speedY,
      ),
    );
  }
}
