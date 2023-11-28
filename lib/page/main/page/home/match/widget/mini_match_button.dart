// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class MiniMatchButton extends StatelessWidget {
  const MiniMatchButton({
    super.key,
    this.iconString,
    this.onPressed,
  });
  final String? iconString;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: context.general.colorScheme.onBackground,
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1, color: context.general.colorScheme.onSecondary)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(
              iconString!,
            ),
          )),
    );
  }
}
