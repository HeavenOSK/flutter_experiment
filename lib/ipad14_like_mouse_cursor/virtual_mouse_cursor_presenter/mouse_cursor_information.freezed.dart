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
  _NotShowing notShowing() {
    return const _NotShowing();
  }

// ignore: unused_element
  _Showing showing(
      {@required Offset realPosition, @nullable MouseCursorTarget target}) {
    return _Showing(
      realPosition: realPosition,
      target: target,
    );
  }
}

// ignore: unused_element
const $MouseCursorInformation = _$MouseCursorInformationTearOff();

mixin _$MouseCursorInformation {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notShowing(),
    @required
        Result showing(Offset realPosition, @nullable MouseCursorTarget target),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notShowing(),
    Result showing(Offset realPosition, @nullable MouseCursorTarget target),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notShowing(_NotShowing value),
    @required Result showing(_Showing value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notShowing(_NotShowing value),
    Result showing(_Showing value),
    @required Result orElse(),
  });
}

abstract class $MouseCursorInformationCopyWith<$Res> {
  factory $MouseCursorInformationCopyWith(MouseCursorInformation value,
          $Res Function(MouseCursorInformation) then) =
      _$MouseCursorInformationCopyWithImpl<$Res>;
}

class _$MouseCursorInformationCopyWithImpl<$Res>
    implements $MouseCursorInformationCopyWith<$Res> {
  _$MouseCursorInformationCopyWithImpl(this._value, this._then);

  final MouseCursorInformation _value;
  // ignore: unused_field
  final $Res Function(MouseCursorInformation) _then;
}

abstract class _$NotShowingCopyWith<$Res> {
  factory _$NotShowingCopyWith(
          _NotShowing value, $Res Function(_NotShowing) then) =
      __$NotShowingCopyWithImpl<$Res>;
}

class __$NotShowingCopyWithImpl<$Res>
    extends _$MouseCursorInformationCopyWithImpl<$Res>
    implements _$NotShowingCopyWith<$Res> {
  __$NotShowingCopyWithImpl(
      _NotShowing _value, $Res Function(_NotShowing) _then)
      : super(_value, (v) => _then(v as _NotShowing));

  @override
  _NotShowing get _value => super._value as _NotShowing;
}

class _$_NotShowing with DiagnosticableTreeMixin implements _NotShowing {
  const _$_NotShowing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MouseCursorInformation.notShowing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MouseCursorInformation.notShowing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotShowing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notShowing(),
    @required
        Result showing(Offset realPosition, @nullable MouseCursorTarget target),
  }) {
    assert(notShowing != null);
    assert(showing != null);
    return notShowing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notShowing(),
    Result showing(Offset realPosition, @nullable MouseCursorTarget target),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notShowing != null) {
      return notShowing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notShowing(_NotShowing value),
    @required Result showing(_Showing value),
  }) {
    assert(notShowing != null);
    assert(showing != null);
    return notShowing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notShowing(_NotShowing value),
    Result showing(_Showing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notShowing != null) {
      return notShowing(this);
    }
    return orElse();
  }
}

abstract class _NotShowing implements MouseCursorInformation {
  const factory _NotShowing() = _$_NotShowing;
}

abstract class _$ShowingCopyWith<$Res> {
  factory _$ShowingCopyWith(_Showing value, $Res Function(_Showing) then) =
      __$ShowingCopyWithImpl<$Res>;
  $Res call({Offset realPosition, @nullable MouseCursorTarget target});

  $MouseCursorTargetCopyWith<$Res> get target;
}

class __$ShowingCopyWithImpl<$Res>
    extends _$MouseCursorInformationCopyWithImpl<$Res>
    implements _$ShowingCopyWith<$Res> {
  __$ShowingCopyWithImpl(_Showing _value, $Res Function(_Showing) _then)
      : super(_value, (v) => _then(v as _Showing));

  @override
  _Showing get _value => super._value as _Showing;

  @override
  $Res call({
    Object realPosition = freezed,
    Object target = freezed,
  }) {
    return _then(_Showing(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      target: target == freezed ? _value.target : target as MouseCursorTarget,
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

class _$_Showing with DiagnosticableTreeMixin implements _Showing {
  const _$_Showing({@required this.realPosition, @nullable this.target})
      : assert(realPosition != null);

  @override
  final Offset realPosition;
  @override
  @nullable
  final MouseCursorTarget target;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MouseCursorInformation.showing(realPosition: $realPosition, target: $target)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MouseCursorInformation.showing'))
      ..add(DiagnosticsProperty('realPosition', realPosition))
      ..add(DiagnosticsProperty('target', target));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Showing &&
            (identical(other.realPosition, realPosition) ||
                const DeepCollectionEquality()
                    .equals(other.realPosition, realPosition)) &&
            (identical(other.target, target) ||
                const DeepCollectionEquality().equals(other.target, target)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realPosition) ^
      const DeepCollectionEquality().hash(target);

  @override
  _$ShowingCopyWith<_Showing> get copyWith =>
      __$ShowingCopyWithImpl<_Showing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result notShowing(),
    @required
        Result showing(Offset realPosition, @nullable MouseCursorTarget target),
  }) {
    assert(notShowing != null);
    assert(showing != null);
    return showing(realPosition, target);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result notShowing(),
    Result showing(Offset realPosition, @nullable MouseCursorTarget target),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showing != null) {
      return showing(realPosition, target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result notShowing(_NotShowing value),
    @required Result showing(_Showing value),
  }) {
    assert(notShowing != null);
    assert(showing != null);
    return showing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result notShowing(_NotShowing value),
    Result showing(_Showing value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showing != null) {
      return showing(this);
    }
    return orElse();
  }
}

abstract class _Showing implements MouseCursorInformation {
  const factory _Showing(
      {@required Offset realPosition,
      @nullable MouseCursorTarget target}) = _$_Showing;

  Offset get realPosition;
  @nullable
  MouseCursorTarget get target;
  _$ShowingCopyWith<_Showing> get copyWith;
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
