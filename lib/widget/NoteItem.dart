import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              blurStyle: BlurStyle.outer,
              color: Colors.deepPurple,
            )
          ],
          border: Border.all(width: 5, color: kMattWhiteColor),
          color: kDarkPurpleColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 12, left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Note',
                    style: TextStyle(
                        color: kMattWhiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                subtitle: const Text(
                  'this is first note ! this is first note !this is first note !this is first note !this is first note !this is first note !this is first note !',
                  style: TextStyle(
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
              const Padding(
                padding: EdgeInsets.only(right: 26),
                child: Text(
                  '26/11/2023',
                  style: TextStyle(color: kMattWhiteColor, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
