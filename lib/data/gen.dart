import 'dart:math';

import 'package:prototypes/data/location.data.dart';
import 'package:prototypes/enums/busloading.enum.dart';
import 'package:prototypes/models/bus/bus.model.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';

List<String> busNames = [
  'Red Express',
  'Green Line',
  'Yellow Cruiser',
  'Bluebird',
  'Purple Rider',
  'Orange Shuttle',
  'Pink Tourist',
  'Black Bullet',
  'Silver Sprinter',
  'Gold Cruiser',
];

String priceRange(String location) {
  if (location == 'Westerhall' ||
      location == 'Birchgrove' ||
      location == 'Grand Etang') {
    return '\$4.50';
  } else if (location == 'Grenville') {
    return '\$5.00';
  } else if (location == 'Sauteurs') {
    return '\$7.50';
  }
  return '\$2.50';
}

List<Terminal> appData = locationList.map((location) {
  var random = Random();
  List<Bus> buses = List.generate(6, (index) {
    final busLoading =
        index == 0 ? BusLoading.boardingInProgress : BusLoading.queue;
    BusLoading.values[random.nextInt(BusLoading.values.length)];
    return Bus(
      name: busNames[random.nextInt(busNames.length)],
      locations: location,
      price: priceRange(location),
      loadtime: random.nextInt(15) + 1,
      isLoading: index == 0 ? true : false,
      inQueue: index == 0 ? false : true,
      loading: busLoading,
      timeStamp: DateTime.now(),
    );
  });
  return Terminal(location: location, bus: buses);
}).toList();
