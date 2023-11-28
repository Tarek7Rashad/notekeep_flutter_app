import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notekeep_flutter_app/Screen/Note_EditingScreen.dart';
import 'package:notekeep_flutter_app/cubits/Notes/notes_cubit.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
    required this.noteModell,
  });
  final NoteModel noteModell;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteEditing(
              noteModel: noteModell,
            ),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
                color: Colors.deepPurple,
              )
            ],
            border: Border.all(width: .3, color: kMattWhiteColor),
            color: kBlackColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      noteModell.title,
                      style: const TextStyle(
                          color: kMattWhiteColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  subtitle: Text(
                    noteModell.subTitle,
                    style: const TextStyle(
                        color: kMattWhiteColor,
                        fontSize: 24,
                        fontStyle: FontStyle.italic),
                  ),
                  trailing: IconButton(
                      iconSize: 40,
                      color: kMattWhiteColor,
                      onPressed: () {
                        noteModell.delete();
                        BlocProvider.of<NotesCubit>(context).getAllNotes();
                      },
                      icon: const Icon(Icons.delete)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 26),
                  child: Text(
                    '${DateFormat.yMEd().format(noteModell.date)}  ${DateFormat.jm().format(noteModell.date)}',
                    style:
                        const TextStyle(color: kMattWhiteColor, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
