import 'package:flutter/material.dart';
import 'package:notes_app/helper/conests.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hint, this.maxline = 1});

  OutlineInputBorder builderBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: kprimaryColor),
    );
  }

  final String hint;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TextField(
        maxLines: maxline,
        cursorColor: kprimaryColor,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kprimaryColor),
          border: builderBorder(),
          enabledBorder: builderBorder(),
          focusedBorder: builderBorder(),
        ),
      ),
    );
  }
}
