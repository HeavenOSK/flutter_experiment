// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'mouse_cursor_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MouseCursorInformationTearOff {
  const _$MouseCursorInformationTearOff();

// ignore: unused_element
  _MouseCursorInformation call(
      {@nullable Offset realPosition,
      @nullable MouseCursorTarget target,
      bool hasFocus = false}) {
    return _MouseCursorInformation(
      realPosition: realPosition,
      target: target,
      hasFocus: hasFocus,
    );
  }
}

// ignore: unused_element
const $MouseCursorInformation = _$MouseCursorInformationTearOff();

mixin _$MouseCursorInformation {
  @nullable
  Offset get realPosition;
  @nullable
  MouseCursorTarget get target;
  bool get hasFocus;

  $MouseCursorInformationCopyWith<MouseCursorInformation> get copyWith;
}

abstract class $MouseCursorInformationCopyWith<$Res> {
  factory $MouseCursorInformationCopyWith(MouseCursorInformation value,
          $Res Function(MouseCursorInformation) then) =
      _$MouseCursorInformationCopyWithImpl<$Res>;
  $Res call(
      {@nullable Offset realPosition,
      @nullable MouseCursorTarget target,
      bool hasFocus});

  $MouseCursorTargetCopyWith<$Res> get target;
}

class _$MouseCursorInformationCopyWithImpl<$Res>
    implements $MouseCursorInformationCopyWith<$Res> {
  _$MouseCursorInformationCopyWithImpl(this._value, this._then);

  final MouseCursorInformation _value;
  // ignore: unused_field
  final $Res Function(MouseCursorInformation) _then;

  @override
  $Res call({
    Object realPosition = freezed,
    Object target = freezed,
    Object hasFocus = freezed,
  }) {
    return _then(_value.copyWith(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      target: target == freezed ? _value.target : target as MouseCursorTarget,
      hasFocus: hasFocus == freezed ? _value.hasFocus : hasFocus as bool,
    ));
  }

  @override
  $MouseCursorTargetCopyWith<$Res> get target {
    if (_value.target == null) {
      return null;
    }
    return $MouseCursorTargetCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

abstract class _$MouseCursorInformationCopyWith<$Res>
    implements $MouseCursorInformationCopyWith<$Res> {
  factory _$MouseCursorInformationCopyWith(_MouseCursorInformation value,
          $Res Function(_MouseCursorInformation) then) =
      __$MouseCursorInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Offset realPosition,
      @nullable MouseCursorTarget target,
      bool hasFocus});

  @override
  $MouseCursorTargetCopyWith<$Res> get target;
}

class __$MouseCursorInformationCopyWithImpl<$Res>
    extends _$MouseCursorInformationCopyWithImpl<$Res>
    implements _$MouseCursorInformationCopyWith<$Res> {
  __$MouseCursorInformationCopyWithImpl(_MouseCursorInformation _value,
      $Res Function(_MouseCursorInformation) _then)
      : super(_value, (v) => _then(v as _MouseCursorInformation));

  @override
  _MouseCursorInformation get _value => super._value as _MouseCursorInformation;

  @override
  $Res call({
    Object realPosition = freezed,
    Object target = freezed,
    Object hasFocus = freezed,
  }) {
    return _then(_MouseCursorInformation(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      target: target == freezed ? _value.target : target as MouseCursorTarget,
      hasFocus: hasFocus == freezed ? _value.hasFocus : hasFocus as bool,
    ));
  }
}

class _$_MouseCursorInformation
    with DiagnosticableTreeMixin
    implements _MouseCursorInformation {
  _$_MouseCursorInformation(
      {@nullable this.realPosition,
      @nullable this.target,
      this.hasFocus = false})
      : assert(hasFocus != null);

  @override
  @nullable
  final Offset realPosition;
  @override
  @nullable
  final MouseCursorTarget target;
  @JsonKey(defaultValue: false)
  @override
  final bool hasFocus;

  bool _didshowing = false;
  bool _showing;

  @override
  bool get showing {
    if (_didshowing == false) {
      _didshowing = true;
      _showing = this.realPosition != null;
    }
    return _showing;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MouseCursorInformation(realPosition: $realPosition, target: $target, hasFocus: $hasFocus, showing: $showing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MouseCursorInformation'))
      ..add(DiagnosticsProperty('realPosition', realPosition))
      ..add(DiagnosticsProperty('target', target))
      ..add(DiagnosticsProperty('hasFocus', hasFocus))
      ..add(DiagnosticsProperty('showing', showing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MouseCursorInformation &&
            (identical(other.realPosition, realPosition) ||
                const DeepCollectionEquality()
                    .equals(other.realPosition, realPosition)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)) &&
            (identical(other.hasFocus, hasFocus) ||
                const DeepCollectionEquality()
                    .equals(other.hasFocus, hasFocus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realPosition) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(hasFocus);

  @override
  _$MouseCursorInformationCopyWith<_MouseCursorInformation> get copyWith =>
      __$MouseCursorInformationCopyWithImpl<_MouseCursorInformation>(
          this, _$identity);
}

abstract class _MouseCursorInformation implements MouseCursorInformation {
  factory _MouseCursorInformation(
      {@nullable Offset realPosition,
      @nullable MouseCursorTarget target,
      bool hasFocus}) = _$_MouseCursorInformation;

  @override
  @nullable
  Offset get realPosition;
  @override
  @nullable
  MouseCursorTarget get target;
  @override
  bool get hasFocus;
  @override
  _$MouseCursorInformationCopyWith<_MouseCursorInformation> get copyWith;
}

class _$MouseCursorTargetTearOff {
  const _$MouseCursorTargetTearOff();

// ignore: unused_element
  _MouseCursorTarget call(
      {@required Offset position, @required Size targetSize}) {
    return _MouseCursorTarget(
      position: position,
      targetSize: targetSize,
    );
  }
}

// ignore: unused_element
const $MouseCursorTarget = _$MouseCursorTargetTearOff();

mixin _$MouseCursorTarget {
  Offset get position;
  Size get targetSize;

  $MouseCursorTargetCopyWith<MouseCursorTarget> get copyWith;
}

abstract class $MouseCursorTargetCopyWith<$Res> {
  factory $MouseCursorTargetCopyWith(
          MouseCursorTarget value, $Res Function(MouseCursorTarget) then) =
      _$MouseCursorTargetCopyWithImpl<$Res>;
  $Res call({Offset position, Size targetSize});
}

class _$MouseCursorTargetCopyWithImpl<$Res>
    implements $MouseCursorTargetCopyWith<$Res> {
  _$MouseCursorTargetCopyWithImpl(this._value, this._then);

  final MouseCursorTarget _value;
  // ignore: unused_field
  final $Res Function(MouseCursorTarget) _then;

  @override
  $Res call({
    Object position = freezed,
    Object targetSize = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed ? _value.position : position as Offset,
      targetSize:
          targetSize == freezed ? _value.targetSize : targetSize as Size,
    ));
  }
}

abstract class _$MouseCursorTargetCopyWith<$Res>
    implements $MouseCursorTargetCopyWith<$Res> {
  factory _$MouseCursorTargetCopyWith(
          _MouseCursorTarget value, $Res Function(_MouseCursorTarget) then) =
      __$MouseCursorTargetCopyWithImpl<$Res>;
  @override
  $Res call({Offset position, Size targetSize});
}

class __$MouseCursorTargetCopyWithImpl<$Res>
    extends _$MouseCursorTargetCopyWithImpl<$Res>
    implements _$MouseCursorTargetCopyWith<$Res> {
  __$MouseCursorTargetCopyWithImpl(
      _MouseCursorTarget _value, $Res Function(_MouseCursorTarget) _then)
      : super(_value, (v) => _then(v as _MouseCursorTarget));

  @override
  _MouseCursorTarget get _value => super._value as _MouseCursorTarget;

  @override
  $Res call({
    Object position = freezed,
    Object targetSize = freezed,
  }) {
    return _then(_MouseCursorTarget(
      position: position == freezed ? _value.position : position as Offset,
      targetSize:
          targetSize == freezed ? _value.targetSize : targetSize as Size,
    ));
  }
}

class _$_MouseCursorTarget
    with DiagnosticableTreeMixin
    implements _MouseCursorTarget {
  const _$_MouseCursorTarget(
      {@required this.position, @required this.targetSize})
      : assert(position != null),
        assert(targetSize != null);

  @override
  final Offset position;
  @override
  final Size targetSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MouseCursorTarget(position: $position, targetSize: $targetSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MouseCursorTarget'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('targetSize', targetSize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MouseCursorTarget &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.targetSize, targetSize) ||
                const DeepCollectionEquality()
                    .equals(other.targetSize, targetSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(targetSize);

  @override
  _$MouseCursorTargetCopyWith<_MouseCursorTarget> get copyWith =>
      __$MouseCursorTargetCopyWithImpl<_MouseCursorTarget>(this, _$identity);
}

abstract class _MouseCursorTarget implements MouseCursorTarget {
  const factory _MouseCursorTarget(
      {@required Offset position,
      @required Size targetSize}) = _$_MouseCursorTarget;

  @override
  Offset get position;
  @override
  Size get targetSize;
  @override
  _$MouseCursorTargetCopyWith<_MouseCursorTarget> get copyWith;
}
