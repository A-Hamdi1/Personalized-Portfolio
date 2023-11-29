import 'package:flutter/material.dart';

class ChildWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const ChildWidget({
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }
}
