import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/widget/live_count_widget.dart';

class LiveWidget extends StatelessWidget {
  const LiveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.general.mediaSize.width / 3.5,
        height: context.general.mediaSize.height / 5.3,
        child: Stack(
          children: [
            // İlk resim için blur efekti uygulanmış Container
            ClipRRect(
              borderRadius: context.border.lowBorderRadius,
              child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3), //SigmaX and Y are just for X and Y directions
                  child: Image.network(
                    'https://i.pinimg.com/originals/d4/48/25/d4482530aaa9929463d93de1986ab2ac.jpg',
                    fit: BoxFit.cover,
                    width: context.general.mediaSize.width / 3.5,
                    height: context.general.mediaSize.height / 5.3,
                  ) //here you can use any widget you'd like to blur .
                  ),
            ),
            // Diğer öğeler
            Container(
              padding: const EdgeInsets.all(8),
              width: context.general.mediaSize.width / 3.5,
              height: context.general.mediaSize.height / 5.2,
              decoration: BoxDecoration(
                borderRadius: context.border.normalBorderRadius,
                border: Border.all(
                    width: 1, color: const Color.fromARGB(13, 255, 255, 255)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const LiveCountWidget(),
                      SizedBox(
                        width: context.general.mediaSize.width * 0.02,
                      ),
                      Image.asset(
                        "assets/image/tr.png",
                        height: 10,
                        width: 14,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 19,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                          ),
                        ),
                        SizedBox(
                          height: context.general.mediaSize.height * 0.01,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Emma Watson",
                                  style: context.general.textTheme.bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            //SvgPicture.asset("assets/icons/checklist_icon.svg")
                          ],
                        ),
                        Text(
                          "Türkiye gezisi canlı yayın",
                          style: context.general.textTheme.bodyMedium
                              ?.copyWith(fontSize: 8),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
