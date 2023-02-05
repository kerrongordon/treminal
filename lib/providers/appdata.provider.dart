import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prototypes/data/gen.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';

final appDataProvider =
    FutureProvider.autoDispose.family<Terminal, String>((ref, location) {
  return Future.delayed(const Duration(seconds: 3), () {
    return appData
        .where((e) => e.location?.toLowerCase() == location.toLowerCase())
        .toList()
        .first;
  });
});
