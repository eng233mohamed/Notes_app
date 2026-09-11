import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customiconwidget.dart';

class custom_appBar extends StatelessWidget {
  const custom_appBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(flex: 1),
        CustomICon(icon: icon),
      ],
    );
  }
}
