import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototypes/models/bus/bus.model.dart';

part 'terminal.model.freezed.dart';

@freezed
class Terminal with _$Terminal {
  const factory Terminal({String? location, List<Bus>? bus}) = _Terminal;
}
