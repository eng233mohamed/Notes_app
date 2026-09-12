import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubits/notes_cubit.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/widgets/AddNote.dart';
import 'package:notes_app/widgets/notesappbody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kprimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNote();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
        ),

        body: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: const Notes_app_body(),
        ),
      ),
    );
  }
}
