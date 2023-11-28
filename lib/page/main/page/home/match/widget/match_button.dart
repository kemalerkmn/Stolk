// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class MatchButton extends StatelessWidget {
  const MatchButton({
    Key? key,
    this.iconString,
    this.onPressed,
    this.color,
  }) : super(key: key);

  final String? iconString;
  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: context.general.colorScheme.onBackground,
          shape: BoxShape.circle,
          border: Border.all(
              width: 2, color: context.general.colorScheme.onSecondary)),
      child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(
            iconString!,
          )),
    );
  }
}
