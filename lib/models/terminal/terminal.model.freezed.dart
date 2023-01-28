// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terminal.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Terminal {
  String? get location => throw _privateConstructorUsedError;
  List<Bus>? get bus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TerminalCopyWith<Terminal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminalCopyWith<$Res> {
  factory $TerminalCopyWith(Terminal value, $Res Function(Terminal) then) =
      _$TerminalCopyWithImpl<$Res, Terminal>;
  @useResult
  $Res call({String? location, List<Bus>? bus});
}

/// @nodoc
class _$TerminalCopyWithImpl<$Res, $Val extends Terminal>
    implements $TerminalCopyWith<$Res> {
  _$TerminalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? bus = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bus: freezed == bus
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as List<Bus>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TerminalCopyWith<$Res> implements $TerminalCopyWith<$Res> {
  factory _$$_TerminalCopyWith(
          _$_Terminal value, $Res Function(_$_Terminal) then) =
      __$$_TerminalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? location, List<Bus>? bus});
}

/// @nodoc
class __$$_TerminalCopyWithImpl<$Res>
    extends _$TerminalCopyWithImpl<$Res, _$_Terminal>
    implements _$$_TerminalCopyWith<$Res> {
  __$$_TerminalCopyWithImpl(
      _$_Terminal _value, $Res Function(_$_Terminal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? bus = freezed,
  }) {
    return _then(_$_Terminal(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bus: freezed == bus
          ? _value._bus
          : bus // ignore: cast_nullable_to_non_nullable
              as List<Bus>?,
    ));
  }
}

/// @nodoc

class _$_Terminal extends _Terminal {
  const _$_Terminal({this.location, final List<Bus>? bus})
      : _bus = bus,
        super._();

  @override
  final String? location;
  final List<Bus>? _bus;
  @override
  List<Bus>? get bus {
    final value = _bus;
    if (value == null) return null;
    if (_bus is EqualUnmodifiableListView) return _bus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Terminal(location: $location, bus: $bus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Terminal &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._bus, _bus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, location, const DeepCollectionEquality().hash(_bus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TerminalCopyWith<_$_Terminal> get copyWith =>
      __$$_TerminalCopyWithImpl<_$_Terminal>(this, _$identity);
}

abstract class _Terminal extends Terminal {
  const factory _Terminal({final String? location, final List<Bus>? bus}) =
      _$_Terminal;
  const _Terminal._() : super._();

  @override
  String? get location;
  @override
  List<Bus>? get bus;
  @override
  @JsonKey(ignore: true)
  _$$_TerminalCopyWith<_$_Terminal> get copyWith =>
      throw _privateConstructorUsedError;
}
