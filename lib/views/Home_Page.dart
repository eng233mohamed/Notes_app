import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notesappbody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Notes_app_body());
  }
}
