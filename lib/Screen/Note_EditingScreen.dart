import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/CustomAppBar.dart';
import 'package:notekeep_flutter_app/widget/CustomTextFormField.dart';

class NoteEditing extends StatelessWidget {
  const NoteEditing({
    super.key,
  });
  static String id = 'NotesBodyWidget';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomAppBar(
                icon: Icons.check,
                title: "Edit Note",
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hint: "Note Title",
                label: "Note Title",
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                maxLines: 5,
                hint: "Note",
                label: "Note",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
