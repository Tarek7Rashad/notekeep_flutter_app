import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notekeep_flutter_app/cubits/AddNoteCubit/cubit/add_note_cubit.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/widget/FormOfAddNote.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return AddNoteCubit();
      },
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            log(state.errorMessage);
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).getAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 30,
                  right: 20,
                  left: 20,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: FieldsOfAddNewNote()),
            ),
          );
        },
      ),
    );
  }
}
