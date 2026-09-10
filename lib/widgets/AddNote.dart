import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 30), CustomTextfield()]);
  }
}
