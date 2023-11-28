// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class LiveCountWidget extends StatelessWidget {
  const LiveCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 34,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(31, 33, 46, .4),
          borderRadius: context.border.normalBorderRadius,
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/auth_icons/password_icons2.svg",
            height: 8,
            color: Colors.white,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            "15",
            style: context.general.textTheme.bodySmall
                ?.copyWith(fontSize: 8, color: Colors.white),
          )
        ],
      ),
    );
  }
}
