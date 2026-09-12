import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Textfield.dart';
import 'package:notes_app/widgets/bottemwidget.dart';

class Formaddnote extends StatefulWidget {
  const Formaddnote({super.key});

  @override
  State<Formaddnote> createState() => _FormaddnoteState();
}

class _FormaddnoteState extends State<Formaddnote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),

          CustomTextfield(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 24),
          CustomTextfield(
            hint: 'content',
            maxline: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 60),

          CustomBottom(
            bottemText: 'Add',
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
