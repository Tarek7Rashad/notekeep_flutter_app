import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/widget/CustomAppBar.dart';
import 'package:notekeep_flutter_app/widget/CustomTextFormField.dart';

class NoteEditing extends StatefulWidget {
  const NoteEditing({
    super.key,
    required this.noteModel,
  });
  static String id = 'NotesBodyWidget';
  final NoteModel noteModel;

  @override
  State<NoteEditing> createState() => _NoteEditingState();
}

TextEditingController titltEditingController = TextEditingController();
TextEditingController subTitleEditingController = TextEditingController();

class _NoteEditingState extends State<NoteEditing> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    titltEditingController.text = widget.noteModel.title;
    subTitleEditingController.text = widget.noteModel.subTitle;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
                  if (titltEditingController.text.isNotEmpty ||
                      subTitleEditingController.text.isNotEmpty) {
                    widget.noteModel.title = title ?? widget.noteModel.title;
                    widget.noteModel.subTitle =
                        subTitle ?? widget.noteModel.subTitle;

                    widget.noteModel.save();
                    BlocProvider.of<NotesCubit>(context).getAllNotes();
                    titltEditingController.clear();
                    subTitleEditingController.clear();
                    Navigator.pop(context);
                  }
                },
                icon: Icons.check,
                title: "Edit Note",
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                controller: titltEditingController,
                onChanged: (value) {
                  title = value;
                },
                hint: "Note Title",
                label: "Note Title",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: subTitleEditingController,
                onChanged: (value) {
                  subTitle = value;
                },
                maxLines: 5,
                hint: "Note",
                label: "Note",
              ),
              const SizedBox(
                height: 30,
              ),
              IconButton(
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close))
            ],
          ),
        ),
      ),
    );
  }
}
