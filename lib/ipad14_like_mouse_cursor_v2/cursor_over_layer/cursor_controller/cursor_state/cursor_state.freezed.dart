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
      {@nullable Offset realPosition, @nullable Offset virtualPosition}) {
    return _CursorState(
      realPosition: realPosition,
      virtualPosition: virtualPosition,
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

  $CursorStateCopyWith<CursorState> get copyWith;
}

abstract class $CursorStateCopyWith<$Res> {
  factory $CursorStateCopyWith(
          CursorState value, $Res Function(CursorState) then) =
      _$CursorStateCopyWithImpl<$Res>;
  $Res call({@nullable Offset realPosition, @nullable Offset virtualPosition});
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
  }) {
    return _then(_value.copyWith(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
    ));
  }
}

abstract class _$CursorStateCopyWith<$Res>
    implements $CursorStateCopyWith<$Res> {
  factory _$CursorStateCopyWith(
          _CursorState value, $Res Function(_CursorState) then) =
      __$CursorStateCopyWithImpl<$Res>;
  @override
  $Res call({@nullable Offset realPosition, @nullable Offset virtualPosition});
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
  }) {
    return _then(_CursorState(
      realPosition: realPosition == freezed
          ? _value.realPosition
          : realPosition as Offset,
      virtualPosition: virtualPosition == freezed
          ? _value.virtualPosition
          : virtualPosition as Offset,
    ));
  }
}

class _$_CursorState implements _CursorState {
  _$_CursorState({@nullable this.realPosition, @nullable this.virtualPosition});

  @override
  @nullable
  final Offset realPosition;
  @override
  @nullable
  final Offset virtualPosition;

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
    return 'CursorState(realPosition: $realPosition, virtualPosition: $virtualPosition, isHidden: $isHidden)';
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
                    .equals(other.virtualPosition, virtualPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realPosition) ^
      const DeepCollectionEquality().hash(virtualPosition);

  @override
  _$CursorStateCopyWith<_CursorState> get copyWith =>
      __$CursorStateCopyWithImpl<_CursorState>(this, _$identity);
}

abstract class _CursorState implements CursorState {
  factory _CursorState(
      {@nullable Offset realPosition,
      @nullable Offset virtualPosition}) = _$_CursorState;

  @override
  @nullable
  Offset get realPosition;
  @override
  @nullable
  Offset get virtualPosition;
  @override
  _$CursorStateCopyWith<_CursorState> get copyWith;
}
