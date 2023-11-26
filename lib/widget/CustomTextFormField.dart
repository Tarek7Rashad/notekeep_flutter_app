import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.label,
    this.contentPadding,
  });
  final String hint;
  final String label;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: 22),
      decoration: InputDecoration(
          contentPadding: contentPadding,
          hintText: hint,
          hintStyle:
              TextStyle(color: kMattWhiteColor.withOpacity(.5), fontSize: 22),
          labelText: label,
          labelStyle:
              TextStyle(color: kMattWhiteColor.withOpacity(.9), fontSize: 22),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: .4, color: kMattWhiteColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: kMattWhiteColor))),
    );
  }
}
