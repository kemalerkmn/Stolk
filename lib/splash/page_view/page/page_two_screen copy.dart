import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/image/page_view/page2.png"),
        SizedBox(
          height: context.general.mediaSize.height * 0.04,
        ),
        Text(
          "Event",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "Etkinlikler Dünyası Parmaklarınızın Ucunda!",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
