import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/widget/CustomAddButton.dart';
import 'package:notekeep_flutter_app/widget/CustomTextFormField.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          CustomTextFormField(
            hint: "Note Title",
            label: "Note Title",
          ),
          Spacer(
            flex: 1,
          ),
          CustomTextFormField(
            maxLines: 5,
            hint: "Note",
            label: "Note",
          ),
          Spacer(
            flex: 5,
          ),
          CustomAddButton(text: "Add"),
        ],
      ),
    );
  }
}
