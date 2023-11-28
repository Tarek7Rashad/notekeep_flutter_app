import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notekeep_flutter_app/cubits/AddNoteCubit/cubit/add_note_cubit.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/widget/CustomAddButton.dart';
import 'package:notekeep_flutter_app/widget/CustomTextFormField.dart';

class FieldsOfAddNewNote extends StatefulWidget {
  const FieldsOfAddNewNote({
    super.key,
  });

  @override
  State<FieldsOfAddNewNote> createState() => _fieldsOfAddNewNoteState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title;
String? subTitle;

// ignore: camel_case_types
class _fieldsOfAddNewNoteState extends State<FieldsOfAddNewNote> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (input) {
              title = input;
            },
            hint: "Note Title",
            label: "Note Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (input) {
              subTitle = input;
            },
            maxLines: 5,
            hint: "Note",
            label: "Note",
          ),
          const SizedBox(
            height: 50,
          ),
          CustomAddButton(
            text: "Add",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!, subTitle: subTitle!, date: DateTime.now());
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
