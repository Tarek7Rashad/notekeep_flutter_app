import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notekeep_flutter_app/Screen/BlocObserver.dart';
import 'package:notekeep_flutter_app/Screen/Note_EditingScreen.dart';
import 'package:notekeep_flutter_app/Screen/Note_HomeScreen.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(const NoteKeepApp());
}

class NoteKeepApp extends StatelessWidget {
  const NoteKeepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NoteKeepHomeScreen.id,
        routes: {
          NoteKeepHomeScreen.id: (context) => const NoteKeepHomeScreen(),
          NoteEditing.id: (context) => const NoteEditing(),
        },
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Lato",
        ),
      ),
    );
  }
}
