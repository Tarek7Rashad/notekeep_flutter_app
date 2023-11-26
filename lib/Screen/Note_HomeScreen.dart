import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/NotesBody.dart';

class NoteKeepHomeScreen extends StatelessWidget {
  const NoteKeepHomeScreen({super.key});
  static String id = 'NoteKeepHomeScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          shape: const CircleBorder(
              side: BorderSide(
                  width: 5, color: Color.fromARGB(255, 149, 3, 246))),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
        body: const NotesBodyWidget(),
      ),
    );
  }
}
