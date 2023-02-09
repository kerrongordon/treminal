import 'package:flutter/material.dart';
import 'package:prototypes/components/maincard.com.dart';
import 'package:prototypes/components/namecard.com.dart';
import 'package:prototypes/enums/busloading.enum.dart';
import 'package:prototypes/models/terminal/terminal.model.dart';

class ContentList extends StatelessWidget {
  const ContentList({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Terminal data;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final bus = data.bus;
            if (bus!.isEmpty) {
              return Container();
            }
            return bus[index].isLoading
                ? MainCardCom(
                    busName: bus[index].name!,
                    busLocation: bus[index].locations!,
                    busCost: bus[index].price!,
                    busBoarding: busLoadingToString(bus[index].loading!),
                    loadingTime: 'Time Past: ${bus[index].loadtime} minute',
                    bus: bus[index],
                  )
                : NameCardCom(
                    title: bus[index].name!,
                    state: bus[index].loading!,
                    bus: bus[index],
                  );
          },
          childCount: data.bus!.length,
        ),
      ),
    );
  }
}
