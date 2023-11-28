import 'dart:developer';

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
    return BlocProvider(
      create: (context) {
        return AddNoteCubit();
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              log(state.errorMessage);
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child:
                    const SingleChildScrollView(child: FieldsOfAddNewNote()));
          },
        ),
      ),
    );
  }
}
