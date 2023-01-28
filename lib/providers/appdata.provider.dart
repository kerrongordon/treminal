import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prototypes/data/gen.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';

final appDataProvider = Provider.autoDispose<List<Terminal>>((ref) => appData);
