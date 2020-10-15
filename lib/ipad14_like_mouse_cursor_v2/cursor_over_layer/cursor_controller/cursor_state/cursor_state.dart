import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_state.freezed.dart';

@freezed
abstract class CursorState with _$CursorState {
  factory CursorState({
    @nullable Offset realPosition,
    @nullable Offset virtualPosition,
  }) = _CursorState;

  @late
  bool get isHidden => virtualPosition == null;
}
