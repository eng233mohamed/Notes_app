import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return NoteItem();
      },
    );
  }
}
