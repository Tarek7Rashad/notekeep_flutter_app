import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';
import 'package:notekeep_flutter_app/widget/CustomBottomSheet.dart';
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
              side: BorderSide(width: 5, color: kMattWhiteColor)),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: kDarkPurpleColor.withOpacity(0.95),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              )),
              context: context,
              builder: (context) {
                return const CustomBottomSheet();
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 30,
            color: kMattWhiteColor,
          ),
        ),
        body: const NotesBodyWidget(),
      ),
    );
  }
}
