import 'package:flutter/material.dart';
import 'package:notes_app/helper/conests.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.bottemText,
    this.ontap,
    this.isLoading = false,
  });
  final String bottemText;
  final void Function()? ontap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(color: Colors.black),
                  )
                : Text(
                    bottemText,
                    style: const TextStyle(
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
