import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/NotesBody.dart';

class NoteKeepHomeScreen extends StatelessWidget {
  const NoteKeepHomeScreen({super.key});
  static String id = 'NoteKeepHomeScreen';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NotesBodyWidget(),
      ),
    );
  }
}

