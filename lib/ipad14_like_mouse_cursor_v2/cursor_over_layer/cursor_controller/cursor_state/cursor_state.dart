import 'dart:ui';

import 'package:flutter_experiment/ipad14_like_mouse_cursor_v2/components/components.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_state.freezed.dart';

@freezed
abstract class CursorState with _$CursorState {
  factory CursorState({
    @nullable Offset realPosition,
    @nullable Offset virtualPosition,
    @required double cursorWeight,
    @nullable Target target,
    @Default(false) bool hasFocus,
  }) = _CursorState;

  @late
  bool get isHidden => virtualPosition == null;
}

@freezed
abstract class Target with _$Target {
  factory Target({
    @required Offset position,
    @required Size size,
  }) = _Target;

  @late
  Offset get centerPosition =>
      position + Offset(size.width / 2, size.height / 2);
}
