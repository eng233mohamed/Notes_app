import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/addnotes_states.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Future<void> addnotemethod(NoteModel Note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(knotesbox);
      await Future.delayed(const Duration(seconds: 1));
      await notesbox.add(Note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
