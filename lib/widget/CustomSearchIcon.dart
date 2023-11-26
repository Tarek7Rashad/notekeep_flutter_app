import 'package:flutter/material.dart';
import 'package:notekeep_flutter_app/shared/components/constant.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;
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
        onPressed: () {},
        icon: Icon(icon),
      ),
    );
  }
}
