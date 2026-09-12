import 'package:flutter/material.dart';
import 'package:notes_app/widgets/EditNoteBody.dart';

class EditNoteview extends StatelessWidget {
  const EditNoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody());
  }
}
