import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';
import 'package:notekeep_flutter_app/widget/CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;
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
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          )
        ],
      ),
    );
  }
}
