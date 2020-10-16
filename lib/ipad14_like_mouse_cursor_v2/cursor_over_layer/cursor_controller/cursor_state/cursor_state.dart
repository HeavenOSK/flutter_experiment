import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_state.freezed.dart';

@freezed
abstract class CursorState with _$CursorState {
  factory CursorState({
    @nullable Offset realPosition,
    @nullable Offset virtualPosition,
    @nullable Target target,
  }) = _CursorState;

  factory CursorState.none() => CursorState();

  @late
  bool get isHidden => virtualPosition == null;

  @late
  bool get hasTarget => target != null;
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
