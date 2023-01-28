import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class NameCardCom extends StatelessWidget {
  const NameCardCom({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text(title),
        trailing:
            Icon(FluentIcons.vehicle_bus_24_filled, color: theme.primaryColor),
      ),
    );
  }
}
