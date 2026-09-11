import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class EditNoteview extends StatelessWidget {
  const EditNoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteBody());
  }
}

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),

      child: Column(
        children: [
          const SizedBox(height: 50),
          custom_appBar(title: 'Edit Note', icon: Icons.check),
        ],
      ),
    );
  }
}
