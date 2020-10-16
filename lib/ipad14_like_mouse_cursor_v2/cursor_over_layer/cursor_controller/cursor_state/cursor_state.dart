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

  @late
  bool get isHidden => virtualPosition == null;
}

@freezed
abstract class Target with _$Target {
  const factory Target({
    @required Offset position,
    @required Size size,
  }) = _Target;
}
