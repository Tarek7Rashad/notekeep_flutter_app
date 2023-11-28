import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notekeep_flutter_app/cubits/AddNoteCubit/cubit/add_note_cubit.dart';
import 'package:notekeep_flutter_app/widget/FormOfAddNote.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                print('success');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: const FieldsOfAddNewNote());
            },
          )),
    );
  }
}
