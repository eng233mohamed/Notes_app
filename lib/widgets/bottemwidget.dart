import 'package:flutter/material.dart';
import 'package:notes_app/helper/conests.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.bottemText, this.ontap});
  final String bottemText;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              bottemText,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
