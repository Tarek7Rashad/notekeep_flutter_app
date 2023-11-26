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
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hint: "Note Title",
              label: "Note Title",
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              maxLines: 5,
              hint: "Note",
              label: "Note",
            ),
            SizedBox(
              height: 80,
            ),
            CustomAddButton(text: "Add"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
