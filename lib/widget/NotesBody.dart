import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/CustomAppBar.dart';
import 'package:notekeep_flutter_app/widget/CustomNotesListView.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 24,
          ),
          CustomNotesListView()
        ],
      ),
    );
  }
}


