import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/CustomAddButton.dart';
import 'package:notekeep_flutter_app/widget/CustomTextFormField.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: FieldsOfAddNewNote(),
      ),
    );
  }
}

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
