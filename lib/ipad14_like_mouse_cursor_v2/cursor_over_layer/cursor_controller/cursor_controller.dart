import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/cursor_over_layer/cursor_controller/cursor_state/cursor_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

extension _PointerOnScreen on CursorState {
  bool get pointerOnScreen => this?.realPosition != null;
}

final cursorControllerProvider =
    StateNotifierProvider((_) => CursorController());

class CursorController extends StateNotifier<CursorState> {
  CursorController() : super(CursorState());

  void updateFrame() {
    _updateVirtualPosition();
  }

  void updateRealPosition(Offset pos) {
    state = state.copyWith(realPosition: pos);
  }

  void exitFromScreen() {
    state = CursorState.none();
  }

  void _updateVirtualPosition() {
    if (!state.pointerOnScreen) {
      return;
    }

    final newState = updateCursorState(state);

    final modifiedWithTarget =
        newState.target != null ? updateCursorStateWithTarget(state) : newState;
    state = modifiedWithTarget;
  }

  void enterTarget(Offset position, Size size) {
    state = state.copyWith(
      target: Target(
        position: position,
        size: size,
      ),
    );
  }

  void existTarget() {
    state = state.copyWith(
      target: null,
    );
  }
}

CursorState updateCursorState(CursorState state) {
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
  return state.copyWith(
    virtualPosition: Offset(
      ball.dx + speedX,
      ball.dy + speedY,
    ),
  );
}

CursorState updateCursorStateWithTarget(CursorState state) {
  double spring = 0.4;
  double easing = 0.6;

  double speedX = 0;
  double speedY = 0;
  final realPosition = state.target.centerPosition;
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
  return state.copyWith(
    virtualPosition: Offset(
      ball.dx + speedX,
      ball.dy + speedY,
    ),
  );
}
