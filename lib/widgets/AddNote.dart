import 'package:flutter/material.dart';

import 'package:notes_app/widgets/Custom_Textfield.dart';
import 'package:notes_app/widgets/bottemwidget.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 30),

          CustomTextfield(hint: 'title'),
          SizedBox(height: 24),
          CustomTextfield(hint: 'content', maxline: 5),
          SizedBox(height: 60),

          CustomBottom(bottemText: 'Add'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
