import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.color,
    this.onPressed,
    this.textColor,
  });
  final String title;
  final Color? color;
  final Color? textColor;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? context.general.colorScheme.onPrimary),
        onPressed: onPressed,
        child: Text(title,
            style: context.general.textTheme.bodyLarge?.copyWith(
              color: textColor ?? Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
