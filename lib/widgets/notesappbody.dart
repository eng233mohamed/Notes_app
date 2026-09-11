import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/listitem.dart';

class Notes_app_body extends StatelessWidget {
  const Notes_app_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          const SizedBox(height: 50),
          custom_appBar(),
          const SizedBox(height: 5),
          Expanded(child: NoteItemList()),
        ],
      ),
    );
  }
}
