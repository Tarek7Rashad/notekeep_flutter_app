import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/NoteItem.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NoteItemWidget();
        },
      ),
    );
  }
}