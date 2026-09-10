import 'package:flutter/material.dart';
import 'package:notes_app/views/Home_Page.dart';

void main() {
  runApp(const Notes_APP());
}

class Notes_APP extends StatelessWidget {
  const Notes_APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home_Page());
  }
}
