import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:prototypes/components/appbarsearch.com.dart';
import 'package:prototypes/components/content.list.com.dart';
import 'package:prototypes/providers/appdata.provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final location = useState<String>('');
    final data = ref.watch(appDataProvider(location.value));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Bus Terminal'),
            centerTitle: true,
            backgroundColor: theme.primaryColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/Perspective_View_3.png',
                width: double.maxFinite,
                fit: BoxFit.fitWidth,
              ),
            ),
            pinned: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: AppBarSearchCom(
                  onSelected: (search) {
                    location.value = search;
                  },
                ),
              ),
            ),
          ),
          if (location.value == '')
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Lottie.asset('assets/lottie/39612-location-animation.json')
                  ],
                ),
              ),
            )
          else
            data.when(
              data: (data) => ContentList(data: data),
              error: (error, stackTrace) => SliverFillRemaining(
                child: Center(
                  child: Text('$error'),
                ),
              ),
              loading: () => const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
