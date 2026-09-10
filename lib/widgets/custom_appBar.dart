import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customserchwidget.dart';

class custom_appBar extends StatelessWidget {
  const custom_appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 28)),
        Spacer(flex: 1),
        CustomsearchICon(),
      ],
    );
  }
}
