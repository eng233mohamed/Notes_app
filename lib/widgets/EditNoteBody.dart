import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Textfield.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),

      child: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: custom_appBar(title: 'Edit Note', icon: Icons.check),
          ),
          const SizedBox(height: 30),

          CustomTextfield(hint: 'title'),
          const SizedBox(height: 20),

          CustomTextfield(hint: 'content', maxline: 5),
        ],
      ),
    );
  }
}
