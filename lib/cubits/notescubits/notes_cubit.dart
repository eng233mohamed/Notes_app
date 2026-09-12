import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;

  void fetchAllNotes() {
    final notesBox = Hive.box<NoteModel>(knotesbox);
    notes = notesBox.values.toList();
    emit(NotesSuccess(notes!));
  }
}
