import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/NoteItem.dart';

class CustomNotesListView extends StatelessWidget {
  const CustomNotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const NoteItemWidget();
          },
        ),
      ),
    );
  }
}
