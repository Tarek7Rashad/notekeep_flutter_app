import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/widget/NoteItem.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notesModel =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        notesModel = notesModel.reversed.toList();
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: notesModel.length,
              itemBuilder: (context, index) {
                return NoteItemWidget(noteModell: notesModel[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
