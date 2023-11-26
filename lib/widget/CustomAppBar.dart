import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';
import 'package:notekeep_flutter_app/widget/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 30,
                color: kMattWhiteColor,
                fontWeight: FontWeight.bold),
          ),
          CustomSearchIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}
