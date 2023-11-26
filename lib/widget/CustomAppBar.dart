import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';
import 'package:notekeep_flutter_app/widget/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
                fontSize: 30,
                color: kMoreDarkPurpleColor,
                fontWeight: FontWeight.bold),
          ),
          CustomSearchIcon()
        ],
      ),
    );
  }
}
