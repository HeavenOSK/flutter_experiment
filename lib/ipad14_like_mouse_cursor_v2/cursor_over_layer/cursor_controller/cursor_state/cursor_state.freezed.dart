// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cursor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CursorStateTearOff {
  const _$CursorStateTearOff();

// ignore: unused_element
  _CursorState call(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition,
      @required double cursorWeight,
      @nullable Target target,
      bool hasFocus = false}) {
    return _CursorState(
      realPosition: realPosition,
      virtualPosition: virtualPosition,
      cursorWeight: cursorWeight,
      target: target,
      hasFocus: hasFocus,
    );
  }
}

// ignore: unused_element
const $CursorState = _$CursorStateTearOff();

mixin _$CursorState {
  @nullable
  Offset get realPosition;
  @nullable
  Offset get virtualPosition;
  double get cursorWeight;
  @nullable
  Target get target;
  bool get hasFocus;

  $CursorStateCopyWith<CursorState> get copyWith;
}

abstract class $CursorStateCopyWith<$Res> {
  factory $CursorStateCopyWith(
          CursorState value, $Res Function(CursorState) then) =
      _$CursorStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition,
      double cursorWeight,
      @nullable Target target,
      bool hasFocus});

  $TargetCopyWith<$Res> get target;
}

class _$CursorStateCopyWithImpl<$Res> implements $CursorStateCopyWith<$Res> {
  _$CursorStateCopyWithImpl(this._value, this._then);

  final CursorState _value;
  // ignore: unused_field
  final $Res Function(CursorState) _then;

  @override
  $Res call({
    Object realPosition = freezed,
    Object virtualPosition = freezed,
    Object cursorWeight = freezed,
    Object target = freezed,
    Object hasFocus = freezed,
  }) {
    return _then(_value.copyWith(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
      cursorWeight: cursorWeight == freezed
          ? _value.cursorWeight
          : cursorWeight as double,
      target: target == freezed ? _value.target : target as Target,
      hasFocus: hasFocus == freezed ? _value.hasFocus : hasFocus as bool,
    ));
  }

  @override
  $TargetCopyWith<$Res> get target {
    if (_value.target == null) {
      return null;
    }
    return $TargetCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value));
    });
  }
}

abstract class _$CursorStateCopyWith<$Res>
    implements $CursorStateCopyWith<$Res> {
  factory _$CursorStateCopyWith(
          _CursorState value, $Res Function(_CursorState) then) =
      __$CursorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition,
      double cursorWeight,
      @nullable Target target,
      bool hasFocus});

  @override
  $TargetCopyWith<$Res> get target;
}

class __$CursorStateCopyWithImpl<$Res> extends _$CursorStateCopyWithImpl<$Res>
    implements _$CursorStateCopyWith<$Res> {
  __$CursorStateCopyWithImpl(
      _CursorState _value, $Res Function(_CursorState) _then)
      : super(_value, (v) => _then(v as _CursorState));

  @override
  _CursorState get _value => super._value as _CursorState;

  @override
  $Res call({
    Object realPosition = freezed,
    Object virtualPosition = freezed,
    Object cursorWeight = freezed,
    Object target = freezed,
    Object hasFocus = freezed,
  }) {
    return _then(_CursorState(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
      cursorWeight: cursorWeight == freezed
          ? _value.cursorWeight
          : cursorWeight as double,
      target: target == freezed ? _value.target : target as Target,
      hasFocus: hasFocus == freezed ? _value.hasFocus : hasFocus as bool,
    ));
  }
}

class _$_CursorState implements _CursorState {
  _$_CursorState(
      {@nullable this.realPosition,
      @nullable this.virtualPosition,
      @required this.cursorWeight,
      @nullable this.target,
      this.hasFocus = false})
      : assert(cursorWeight != null),
        assert(hasFocus != null);

  @override
  @nullable
  final Offset realPosition;
  @override
  @nullable
  final Offset virtualPosition;
  @override
  final double cursorWeight;
  @override
  @nullable
  final Target target;
  @JsonKey(defaultValue: false)
  @override
  final bool hasFocus;

  bool _didisHidden = false;
  bool _isHidden;

  @override
  bool get isHidden {
    if (_didisHidden == false) {
      _didisHidden = true;
      _isHidden = virtualPosition == null;
    }
    return _isHidden;
  }

  @override
  String toString() {
    return 'CursorState(realPosition: $realPosition, virtualPosition: $virtualPosition, cursorWeight: $cursorWeight, target: $target, hasFocus: $hasFocus, isHidden: $isHidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CursorState &&
            (identical(other.realPosition, realPosition) ||
                const DeepCollectionEquality()
                    .equals(other.realPosition, realPosition)) &&
            (identical(other.virtualPosition, virtualPosition) ||
                const DeepCollectionEquality()
                    .equals(other.virtualPosition, virtualPosition)) &&
            (identical(other.cursorWeight, cursorWeight) ||
                const DeepCollectionEquality()
                    .equals(other.cursorWeight, cursorWeight)) &&
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
      const DeepCollectionEquality().hash(virtualPosition) ^
      const DeepCollectionEquality().hash(cursorWeight) ^
      const DeepCollectionEquality().hash(target) ^
      const DeepCollectionEquality().hash(hasFocus);

  @override
  _$CursorStateCopyWith<_CursorState> get copyWith =>
      __$CursorStateCopyWithImpl<_CursorState>(this, _$identity);
}

abstract class _CursorState implements CursorState {
  factory _CursorState(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition,
      @required double cursorWeight,
      @nullable Target target,
      bool hasFocus}) = _$_CursorState;

  @override
  @nullable
  Offset get realPosition;
  @override
  @nullable
  Offset get virtualPosition;
  @override
  double get cursorWeight;
  @override
  @nullable
  Target get target;
  @override
  bool get hasFocus;
  @override
  _$CursorStateCopyWith<_CursorState> get copyWith;
}

class _$TargetTearOff {
  const _$TargetTearOff();

// ignore: unused_element
  _Target call({@required Offset position, @required Size size}) {
    return _Target(
      position: position,
      size: size,
    );
  }
}

// ignore: unused_element
const $Target = _$TargetTearOff();

mixin _$Target {
  Offset get position;
  Size get size;

  $TargetCopyWith<Target> get copyWith;
}

abstract class $TargetCopyWith<$Res> {
  factory $TargetCopyWith(Target value, $Res Function(Target) then) =
      _$TargetCopyWithImpl<$Res>;
  $Res call({Offset position, Size size});
}

class _$TargetCopyWithImpl<$Res> implements $TargetCopyWith<$Res> {
  _$TargetCopyWithImpl(this._value, this._then);

  final Target _value;
  // ignore: unused_field
  final $Res Function(Target) _then;

  @override
  $Res call({
    Object position = freezed,
    Object size = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed ? _value.position : position as Offset,
      size: size == freezed ? _value.size : size as Size,
    ));
  }
}

abstract class _$TargetCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$TargetCopyWith(_Target value, $Res Function(_Target) then) =
      __$TargetCopyWithImpl<$Res>;
  @override
  $Res call({Offset position, Size size});
}

class __$TargetCopyWithImpl<$Res> extends _$TargetCopyWithImpl<$Res>
    implements _$TargetCopyWith<$Res> {
  __$TargetCopyWithImpl(_Target _value, $Res Function(_Target) _then)
      : super(_value, (v) => _then(v as _Target));

  @override
  _Target get _value => super._value as _Target;

  @override
  $Res call({
    Object position = freezed,
    Object size = freezed,
  }) {
    return _then(_Target(
      position: position == freezed ? _value.position : position as Offset,
      size: size == freezed ? _value.size : size as Size,
    ));
  }
}

class _$_Target implements _Target {
  _$_Target({@required this.position, @required this.size})
      : assert(position != null),
        assert(size != null);

  @override
  final Offset position;
  @override
  final Size size;

  bool _didcenterPosition = false;
  Offset _centerPosition;

  @override
  Offset get centerPosition {
    if (_didcenterPosition == false) {
      _didcenterPosition = true;
      _centerPosition = position + Offset(size.width / 2, size.height / 2);
    }
    return _centerPosition;
  }

  @override
  String toString() {
    return 'Target(position: $position, size: $size, centerPosition: $centerPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Target &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(size);

  @override
  _$TargetCopyWith<_Target> get copyWith =>
      __$TargetCopyWithImpl<_Target>(this, _$identity);
}

abstract class _Target implements Target {
  factory _Target({@required Offset position, @required Size size}) = _$_Target;

  @override
  Offset get position;
  @override
  Size get size;
  @override
  _$TargetCopyWith<_Target> get copyWith;
}
