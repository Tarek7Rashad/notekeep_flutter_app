import 'package:flutter/material.dart';

void main() {
  runApp(const NoteKeepApp());
}

class NoteKeepApp extends StatelessWidget {
  const NoteKeepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: ,
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
