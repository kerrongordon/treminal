import 'package:flutter/material.dart';

class CardTextItemCom extends StatelessWidget {
  const CardTextItemCom({
    super.key,
    required this.icon,
    required this.title,
    this.fontSize,
    this.fontWeight,
  });

  final IconData icon;
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, color: theme.primaryColor),
        const SizedBox(width: 10),
        SizedBox(
          width: 200,
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
