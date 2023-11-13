import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

import 'package:stolk_/page/main/page/home/page/home_page.dart';
import 'package:stolk_/page/main/page/home/widget/event_widget.dart';
import 'package:stolk_/widget/gradient_text_widget.dart';
import 'package:stolk_/widget/live_widget.dart';

class MainBodyPage extends StatefulWidget {
  const MainBodyPage({
    super.key,
  });

  @override
  State<MainBodyPage> createState() => _MainBodyPageState();
}

class _MainBodyPageState extends State<MainBodyPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Canlı Yayınlar',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                onTap: () {
                  pageBodyController.jumpToPage(
                    4,
                  );
                },
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: LiveWidget(),
              );
            },
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height * 0.005,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Eventler',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                onTap: () {
                  pageBodyController.jumpToPage(
                    5,
                  );
                },
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const EventWidget();
            },
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SizedBox(
            height: context.general.mediaSize.height / 5.7,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: context.general.mediaSize.height / 5.7,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                      color: context.general.colorScheme.primary,
                      borderRadius: context.border.normalBorderRadius),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/menu_icon/match_icon.svg"),
                        const SizedBox(
                          height: 8,
                        ),
                        GradientText(
                          "Match",
                          style: context.general.textTheme.bodyLarge?.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w600),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(129, 245, 223, 1),
                            Color.fromRGBO(244, 241, 255, 1),
                            Color.fromRGBO(124, 197, 183, 1),
                          ]),
                        ),
                        Text(
                          "Aşkı veya dostluğu keşfet,\nseninle aynı frekansta \nolanları bul!",
                          style: context.general.textTheme.bodySmall
                              ?.copyWith(fontSize: 8),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: context.general.colorScheme.secondary,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 5,
                    bottom: 5,
                    child: Image.asset("assets/image/match_page.png")),
              ],
            ),
          ),
        )
      ],
    );
  }
}
