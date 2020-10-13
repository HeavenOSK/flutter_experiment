import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mouse_cursor_information.freezed.dart';

extension HasFocus on MouseCursorInformation {
  bool get hasFocus => this.hasFocus != null;
}

@freezed
abstract class MouseCursorInformation with _$MouseCursorInformation {
  const factory MouseCursorInformation.notShowing() = _NotShowing;

  const factory MouseCursorInformation.showing({
    @required Offset realPosition,
    @nullable MouseCursorTarget target,
  }) = _Showing;
}

@freezed
abstract class MouseCursorTarget with _$MouseCursorTarget {
  const factory MouseCursorTarget({
    @required Offset position,
    @required Size targetSize,
  }) = _MouseCursorTarget;
}
