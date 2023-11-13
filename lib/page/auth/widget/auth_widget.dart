// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });
  final String title;
  final String image;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 48,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: context.border.normalBorderRadius,
            color: const Color.fromRGBO(237, 239, 240, 1),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                image,
                color: const Color.fromRGBO(31, 33, 46, 1),
              ),
              SizedBox(
                width: context.general.mediaSize.width * 0.03,
              ),
              Text(
                title,
                style: context.general.textTheme.bodyMedium?.copyWith(
                  color: const Color.fromRGBO(31, 33, 46, 1),
                ),
              )
            ],
          )),
    );
  }
}
