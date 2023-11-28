import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onTap,
  });
  final Widget icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: context.general.colorScheme.onBackground),
              color: context.general.colorScheme.onSecondary,
              shape: BoxShape.circle),
          child: icon),
    );
  }
}
