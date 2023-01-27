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
  List<Location?> get locations => throw _privateConstructorUsedError;
  Location? get comingForm => throw _privateConstructorUsedError;
  Location? get goingTo => throw _privateConstructorUsedError;
  DateTime? get timeStamp => throw _privateConstructorUsedError;
  Dock? get dockLocation => throw _privateConstructorUsedError;
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
      List<Location?> locations,
      Location? comingForm,
      Location? goingTo,
      DateTime? timeStamp,
      Dock? dockLocation,
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
    Object? locations = null,
    Object? comingForm = freezed,
    Object? goingTo = freezed,
    Object? timeStamp = freezed,
    Object? dockLocation = freezed,
    Object? isLoading = null,
    Object? inQueue = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location?>,
      comingForm: freezed == comingForm
          ? _value.comingForm
          : comingForm // ignore: cast_nullable_to_non_nullable
              as Location?,
      goingTo: freezed == goingTo
          ? _value.goingTo
          : goingTo // ignore: cast_nullable_to_non_nullable
              as Location?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dockLocation: freezed == dockLocation
          ? _value.dockLocation
          : dockLocation // ignore: cast_nullable_to_non_nullable
              as Dock?,
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
      List<Location?> locations,
      Location? comingForm,
      Location? goingTo,
      DateTime? timeStamp,
      Dock? dockLocation,
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
    Object? locations = null,
    Object? comingForm = freezed,
    Object? goingTo = freezed,
    Object? timeStamp = freezed,
    Object? dockLocation = freezed,
    Object? isLoading = null,
    Object? inQueue = null,
  }) {
    return _then(_$_Bus(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location?>,
      comingForm: freezed == comingForm
          ? _value.comingForm
          : comingForm // ignore: cast_nullable_to_non_nullable
              as Location?,
      goingTo: freezed == goingTo
          ? _value.goingTo
          : goingTo // ignore: cast_nullable_to_non_nullable
              as Location?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dockLocation: freezed == dockLocation
          ? _value.dockLocation
          : dockLocation // ignore: cast_nullable_to_non_nullable
              as Dock?,
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
      final List<Location?> locations = const [],
      this.comingForm,
      this.goingTo,
      this.timeStamp,
      this.dockLocation,
      this.isLoading = false,
      this.inQueue = true})
      : _locations = locations,
        super._();

  @override
  final String? name;
  final List<Location?> _locations;
  @override
  @JsonKey()
  List<Location?> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  final Location? comingForm;
  @override
  final Location? goingTo;
  @override
  final DateTime? timeStamp;
  @override
  final Dock? dockLocation;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool inQueue;

  @override
  String toString() {
    return 'Bus(name: $name, locations: $locations, comingForm: $comingForm, goingTo: $goingTo, timeStamp: $timeStamp, dockLocation: $dockLocation, isLoading: $isLoading, inQueue: $inQueue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bus &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.comingForm, comingForm) ||
                other.comingForm == comingForm) &&
            (identical(other.goingTo, goingTo) || other.goingTo == goingTo) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.dockLocation, dockLocation) ||
                other.dockLocation == dockLocation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.inQueue, inQueue) || other.inQueue == inQueue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_locations),
      comingForm,
      goingTo,
      timeStamp,
      dockLocation,
      isLoading,
      inQueue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusCopyWith<_$_Bus> get copyWith =>
      __$$_BusCopyWithImpl<_$_Bus>(this, _$identity);
}

abstract class _Bus extends Bus {
  const factory _Bus(
      {final String? name,
      final List<Location?> locations,
      final Location? comingForm,
      final Location? goingTo,
      final DateTime? timeStamp,
      final Dock? dockLocation,
      final bool isLoading,
      final bool inQueue}) = _$_Bus;
  const _Bus._() : super._();

  @override
  String? get name;
  @override
  List<Location?> get locations;
  @override
  Location? get comingForm;
  @override
  Location? get goingTo;
  @override
  DateTime? get timeStamp;
  @override
  Dock? get dockLocation;
  @override
  bool get isLoading;
  @override
  bool get inQueue;
  @override
  @JsonKey(ignore: true)
  _$$_BusCopyWith<_$_Bus> get copyWith => throw _privateConstructorUsedError;
}
