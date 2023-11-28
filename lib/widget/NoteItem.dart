import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/Screen/Note_EditingScreen.dart';
import 'package:notekeep_flutter_app/model/Note_Model.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(NoteEditing.id);
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
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      noteModel.title,
                      style: const TextStyle(
                          color: kMattWhiteColor,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  subtitle: Text(
                    noteModel.subTitle,
                    style: const TextStyle(
                        color: kMattWhiteColor,
                        fontSize: 24,
                        fontStyle: FontStyle.italic),
                  ),
                  trailing: IconButton(
                      iconSize: 40,
                      color: kMattWhiteColor,
                      onPressed: () {},
                      icon: const Icon(Icons.delete)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 26),
                  child: Text(
                    '${noteModel.date.hour % 12}:${noteModel.date.minute}  ${noteModel.date.day}/${noteModel.date.month}',
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
