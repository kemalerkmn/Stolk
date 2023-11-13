import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/image/page_view/page1.png"),
        SizedBox(
          height: context.general.mediaSize.height * 0.04,
        ),
        Text(
          "Canlı Yayın",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "Her Anı Canlı, Her Anı Özel!",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
