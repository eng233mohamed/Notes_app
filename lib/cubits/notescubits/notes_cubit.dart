import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  Future<void> fetchNotes() async {
    emit(NotesLoading());

    try {
      final notesBox = Hive.box<NoteModel>(knotesbox);
      final notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (error) {
      emit(NotesFailure(error.toString()));
    }
  }
}
