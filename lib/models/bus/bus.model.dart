import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototypes/enums/docks.enum.dart';
import 'package:prototypes/enums/locations.enum.dart';

part 'bus.model.freezed.dart';

@freezed
class Bus with _$Bus {
  const Bus._();
  const factory Bus({
    String? name,
    @Default([]) List<Location?> locations,
    Location? comingForm,
    Location? goingTo,
    DateTime? timeStamp,
    Dock? dockLocation,
    @Default(false) bool isLoading,
    @Default(true) bool inQueue,
  }) = _Bus;
}
