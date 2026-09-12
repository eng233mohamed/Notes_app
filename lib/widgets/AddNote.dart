import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubits/addnotes_cubit.dart';
import 'package:notes_app/cubits/cubits/addnotes_states.dart';

import 'package:notes_app/widgets/formaddnote.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('field ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.viewInsetsOf(context).bottom,
              ),
              child: SingleChildScrollView(child: Formaddnote()),
            ),
          );
        },
      ),
    );
  }
}
