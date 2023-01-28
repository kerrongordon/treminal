import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';
import 'package:prototypes/providers/appdata.provider.dart';

final _terminalProvider =
    StateNotifierProvider.autoDispose<TerminalRepositoryNotifier, Terminal>(
        (ref) => TerminalRepositoryNotifier(ref, const Terminal()));

class TerminalRepositoryNotifier extends StateNotifier<Terminal> {
  TerminalRepositoryNotifier(this.ref, super.state);
  final Ref ref;

  static AutoDisposeStateNotifierProvider<TerminalRepositoryNotifier, Terminal>
      get provider => _terminalProvider;

  void search(String location) {
    final data = ref.read(appDataProvider);
    final filter = data
        .where((e) => e.location?.toLowerCase() == location.toLowerCase())
        .toList();

    filter.isEmpty
        ? const Terminal()
        : state = state.copyWith(
            location: filter[0].location,
            bus: filter[0].bus,
          );
  }
}
