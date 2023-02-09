import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:prototypes/enums/busloading.enum.dart';
import 'package:prototypes/models/bus/bus.model.dart';
import 'package:prototypes/pages/detail.page.dart';

class NameCardCom extends StatelessWidget {
  const NameCardCom({
    Key? key,
    required this.bus,
    required this.title,
    required this.state,
  }) : super(key: key);

  final String title;
  final BusLoading state;
  final Bus bus;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => DetailPage(bus: bus)))),
          title: Text(title),
          subtitle: Text(busLoadingToString(state)),
          trailing: Icon(
            FluentIcons.vehicle_bus_24_filled,
            color: theme.primaryColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
