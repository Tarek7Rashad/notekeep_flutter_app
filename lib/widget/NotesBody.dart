import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/widget/CustomAppBar.dart';
import 'package:notekeep_flutter_app/widget/CustomNotesListView.dart';

class NotesBodyWidget extends StatefulWidget {
  const NotesBodyWidget({
    super.key,
  });

  @override
  State<NotesBodyWidget> createState() => _NotesBodyWidgetState();
}

class _NotesBodyWidgetState extends State<NotesBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          SizedBox(
            height: 24,
          ),
          CustomNotesListView()
        ],
      ),
    );
  }
}
