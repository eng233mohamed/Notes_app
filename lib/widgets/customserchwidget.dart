import 'package:flutter/material.dart';

class CustomsearchICon extends StatelessWidget {
  const CustomsearchICon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(Icons.search, size: 27)),
    );
  }
}
