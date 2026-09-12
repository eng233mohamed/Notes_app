import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/views/Home_Page.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(knotesbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
