import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnotes_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel Note) {}
}
