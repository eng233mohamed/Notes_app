import 'package:flutter/material.dart';
import 'package:notes_app/helper/conests.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  OutlineInputBorder builderBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kprimaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: const TextStyle(color: kprimaryColor),
          border: builderBorder(),
          enabledBorder: builderBorder(),
          focusedBorder: builderBorder(),
        ),
      ),
    );
  }
}
