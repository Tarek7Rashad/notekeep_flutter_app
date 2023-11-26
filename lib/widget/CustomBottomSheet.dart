import 'package:flutter/material.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            hint: "Note Title",
            label: "Note Title",
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            contentPadding: EdgeInsets.all(30),
            hint: "Note",
            label: "Note",
          ),
        ],
      ),
    );
  }
}
