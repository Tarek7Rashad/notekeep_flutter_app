import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  getAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
}
