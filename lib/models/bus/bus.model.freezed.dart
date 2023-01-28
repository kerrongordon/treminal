// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Bus {
  String? get name => throw _privateConstructorUsedError;
  String? get locations => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  BusLoading? get loading => throw _privateConstructorUsedError;
  DateTime? get timeStamp => throw _privateConstructorUsedError;
  int? get loadtime => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get inQueue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusCopyWith<Bus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusCopyWith<$Res> {
  factory $BusCopyWith(Bus value, $Res Function(Bus) then) =
      _$BusCopyWithImpl<$Res, Bus>;
  @useResult
  $Res call(
      {String? name,
      String? locations,
      String? price,
      BusLoading? loading,
      DateTime? timeStamp,
      int? loadtime,
      bool isLoading,
      bool inQueue});
}

/// @nodoc
class _$BusCopyWithImpl<$Res, $Val extends Bus> implements $BusCopyWith<$Res> {
  _$BusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? locations = freezed,
    Object? price = freezed,
    Object? loading = freezed,
    Object? timeStamp = freezed,
    Object? loadtime = freezed,
    Object? isLoading = null,
    Object? inQueue = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as BusLoading?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loadtime: freezed == loadtime
          ? _value.loadtime
          : loadtime // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      inQueue: null == inQueue
          ? _value.inQueue
          : inQueue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusCopyWith<$Res> implements $BusCopyWith<$Res> {
  factory _$$_BusCopyWith(_$_Bus value, $Res Function(_$_Bus) then) =
      __$$_BusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? locations,
      String? price,
      BusLoading? loading,
      DateTime? timeStamp,
      int? loadtime,
      bool isLoading,
      bool inQueue});
}

/// @nodoc
class __$$_BusCopyWithImpl<$Res> extends _$BusCopyWithImpl<$Res, _$_Bus>
    implements _$$_BusCopyWith<$Res> {
  __$$_BusCopyWithImpl(_$_Bus _value, $Res Function(_$_Bus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? locations = freezed,
    Object? price = freezed,
    Object? loading = freezed,
    Object? timeStamp = freezed,
    Object? loadtime = freezed,
    Object? isLoading = null,
    Object? inQueue = null,
  }) {
    return _then(_$_Bus(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as BusLoading?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loadtime: freezed == loadtime
          ? _value.loadtime
          : loadtime // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      inQueue: null == inQueue
          ? _value.inQueue
          : inQueue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Bus extends _Bus {
  const _$_Bus(
      {this.name,
      this.locations,
      this.price,
      this.loading,
      this.timeStamp,
      this.loadtime,
      this.isLoading = false,
      this.inQueue = true})
      : super._();

  @override
  final String? name;
  @override
  final String? locations;
  @override
  final String? price;
  @override
  final BusLoading? loading;
  @override
  final DateTime? timeStamp;
  @override
  final int? loadtime;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool inQueue;

  @override
  String toString() {
    return 'Bus(name: $name, locations: $locations, price: $price, loading: $loading, timeStamp: $timeStamp, loadtime: $loadtime, isLoading: $isLoading, inQueue: $inQueue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bus &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.locations, locations) ||
                other.locations == locations) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.loadtime, loadtime) ||
                other.loadtime == loadtime) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.inQueue, inQueue) || other.inQueue == inQueue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, locations, price, loading,
      timeStamp, loadtime, isLoading, inQueue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusCopyWith<_$_Bus> get copyWith =>
      __$$_BusCopyWithImpl<_$_Bus>(this, _$identity);
}

abstract class _Bus extends Bus {
  const factory _Bus(
      {final String? name,
      final String? locations,
      final String? price,
      final BusLoading? loading,
      final DateTime? timeStamp,
      final int? loadtime,
      final bool isLoading,
      final bool inQueue}) = _$_Bus;
  const _Bus._() : super._();

  @override
  String? get name;
  @override
  String? get locations;
  @override
  String? get price;
  @override
  BusLoading? get loading;
  @override
  DateTime? get timeStamp;
  @override
  int? get loadtime;
  @override
  bool get isLoading;
  @override
  bool get inQueue;
  @override
  @JsonKey(ignore: true)
  _$$_BusCopyWith<_$_Bus> get copyWith => throw _privateConstructorUsedError;
}
