import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubits/notes_cubit.dart';
import 'package:notes_app/cubits/notescubits/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/Note_item.dart';

class NoteItemList extends StatelessWidget {
  const NoteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        final List<NoteModel> notes = context.read<NotesCubit>().notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (BuildContext context, int index) {
            return NoteItem(note: notes[index]);
          },
        );
      },
    );
  }
}
