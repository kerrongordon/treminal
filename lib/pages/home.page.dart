import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prototypes/components/appbarsearch.com.dart';
import 'package:prototypes/components/maincard.com.dart';
import 'package:prototypes/components/namecard.com.dart';
import 'package:prototypes/enums/busloading.enum.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';
import 'package:prototypes/providers/appdata.provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final location = useState<String>('');
    final data = ref.watch(appDataProvider(location.value));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Terminal'),
        centerTitle: true,
        backgroundColor: theme.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(230),
          child: AppBarSearchCom(
            onSelected: (search) {
              location.value = search;
            },
          ),
        ),
      ),
      body: location.value == ''
          ? Center(
              child: Column(
                children: [
                  Lottie.asset('assets/lottie/39612-location-animation.json')
                ],
              ),
            )
          : data.when(
              data: (data) => ContentList(data: data),
              error: (error, stackTrace) => Center(child: Text('$error')),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
    );
  }
}

class ContentList extends StatelessWidget {
  const ContentList({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Terminal data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      children: [
        if (data.bus == null)
          ...[]
        else ...[
          for (final item in data.bus!)
            if (item.isLoading) ...[
              MainCardCom(
                busName: item.name!,
                busLocation: item.locations!,
                busCost: item.price!,
                busBoarding: busLoadingToString(item.loading!),
                loadingTime: 'Time Past: ${item.loadtime} minute',
              ),
            ] else ...[
              NameCardCom(title: item.name!, state: item.loading!),
            ],
        ],
      ],
    );
  }
}
