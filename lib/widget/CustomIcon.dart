import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kLightBlackColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        splashColor: Colors.transparent,
        color: kMattWhiteColor,
        splashRadius: .1,
        iconSize: 32,
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
