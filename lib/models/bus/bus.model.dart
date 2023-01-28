import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:prototypes/enums/busloading.enum.dart';

part 'bus.model.freezed.dart';

@freezed
class Bus with _$Bus {
  const Bus._();
  const factory Bus({
    String? name,
    String? locations,
    String? price,
    BusLoading? loading,
    DateTime? timeStamp,
    int? loadtime,
    @Default(false) bool isLoading,
    @Default(true) bool inQueue,
  }) = _Bus;
}
