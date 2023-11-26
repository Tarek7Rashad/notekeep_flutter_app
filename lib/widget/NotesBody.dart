import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/CustomAppBar.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
