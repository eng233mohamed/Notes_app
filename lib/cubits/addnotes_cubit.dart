import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/addnotes_states.dart';
import 'package:notes_app/helper/conests.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/AddNote.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnotemethod(NoteModel Note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = await Hive.openBox<NoteModel>(knotesbox);
      emit(AddNoteSuccess());
      notesbox.add(Note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
