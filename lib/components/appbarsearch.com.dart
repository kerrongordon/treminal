import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prototypes/components/searchbar.com.dart';

class AppBarSearchCom extends HookConsumerWidget {
  const AppBarSearchCom({
    Key? key,
    required this.onSelected,
  }) : super(key: key);

  final void Function(String) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Card(
        elevation: 30,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: SearchBarCom(onSelected: onSelected),
      ),
    );
  }
}
