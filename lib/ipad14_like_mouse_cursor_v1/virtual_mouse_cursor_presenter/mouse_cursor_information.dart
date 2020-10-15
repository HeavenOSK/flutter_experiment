import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mouse_cursor_information.freezed.dart';

@freezed
abstract class MouseCursorInformation with _$MouseCursorInformation {
  factory MouseCursorInformation({
    @nullable Offset realPosition,
    @nullable MouseCursorTarget target,
    @Default(false) bool hasFocus,
  }) = _MouseCursorInformation;

  @late
  bool get showing => this.realPosition != null;
}

@freezed
abstract class MouseCursorTarget with _$MouseCursorTarget {
  factory MouseCursorTarget({
    @required Offset position,
    @required Size size,
  }) = _MouseCursorTarget;

  @late
  Offset get center => position + Offset(size.width, size.height) / 2;
}
