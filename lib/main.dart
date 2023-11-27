import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notekeep_flutter_app/Screen/Note_EditingScreen.dart';
import 'package:notekeep_flutter_app/Screen/Note_HomeScreen.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const NoteKeepApp());
}

class NoteKeepApp extends StatelessWidget {
  const NoteKeepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
