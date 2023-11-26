import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffdfe3ee),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: kDarkPurpleColor,
          ),
        ),
      ),
    );
  }
}
