import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/matchpage_candidate_model.dart';
import 'package:stolk_/page/main/page/home/match/widget/match_button.dart';
import 'package:stolk_/page/main/page/home/match/widget/mini_match_button.dart';

class MatchPageCard extends StatelessWidget {
  const MatchPageCard({
    Key? key,
    required this.candidate,
    required this.controller,
  }) : super(key: key);
  final MatchPageCandidateModel candidate;
  final CardSwiperController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.general.mediaSize.height * 0.65,
      child: Stack(
        children: [
          Container(
            height: context.general.mediaSize.height * 0.65,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: context.general.colorScheme.primary,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/example/match_example_image.png",
                    ))),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: IgnorePointer(
              ignoring:
                  true, // Tıklamaları devre dışı bırakmak için 'true' yapın

              child: Container(
                height: context.general.mediaSize.height * 0.12,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                        colors: [
                      Color.fromRGBO(24, 25, 33, 0),
                      Color.fromRGBO(24, 25, 33, 1)
                    ])),
              ),
            ),
          ),
          Padding(
            padding: context.padding.low,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 2,
                        width: context.general.mediaSize.width / 5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                Container(
                  height: 30,
                  width: context.general.mediaSize.width / 3,
                  decoration: BoxDecoration(
                      color: context.general.colorScheme.secondary,
                      borderRadius: context.border.normalBorderRadius),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Evente Davet Et",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSecondary),
                      ),
                      SvgPicture.asset("assets/icons/match_icons/add_icon.svg")
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  candidate.name,
                  style: TextStyle(
                    color: context.general.colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.general.colorScheme.secondary),
                    ),
                    SizedBox(
                      width: context.general.mediaSize.width * 0.01,
                    ),
                    Text(
                      "8 km uzaklıkla",
                      style: context.general.textTheme.bodySmall
                          ?.copyWith(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.005,
                ),
                Wrap(
                    children: List.generate(
                        hobbies.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 4.0, top: 8),
                              child: HobiesWidget(title: hobbies[index]),
                            ))),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MiniMatchButton(
                      onPressed: controller.undo,
                      iconString: "assets/icons/match_icons/reset_icon.svg",
                    ),
                    MatchButton(
                      iconString: "assets/icons/match_icons/close_icon.svg",
                      onPressed: controller.swipeLeft,
                    ),
                    MatchButton(
                      onPressed: controller.swipeRight,
                      iconString: "assets/icons/match_icons/heart_icon.svg",
                    ),
                    MiniMatchButton(
                      iconString: "assets/icons/match_icons/star_icon.svg",
                      onPressed: controller.swipeTop,
                    )
                  ],
                ),
              ],
            ),
          ),
          // alignment: Alignment.center,
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Flexible(
          //         child: ClipRRect(
          //       borderRadius: context.border.lowBorderRadius,
          //       child: Image.network(
          //         candidate.image,
          //         width: double.infinity,
          //         height: context.general.mediaSize.height,
          //         fit: BoxFit.cover,
          //       ),
          //     )),
          //     // Padding(
          //     //   padding: const EdgeInsets.all(16),
          //     //   child: Column(
          //     //     crossAxisAlignment: CrossAxisAlignment.start,
          //     //     children: [
          //     //       Text(
          //     //         candidate.name,
          //     //         style: TextStyle(
          //     //           color: context.general.colorScheme.onPrimary,
          //     //           fontWeight: FontWeight.bold,
          //     //           fontSize: 20,
          //     //         ),
          //     //       ),
          //     //       const SizedBox(height: 5),
          //     //       Text(
          //     //         candidate.job,
          //     //         style: const TextStyle(
          //     //           color: Colors.grey,
          //     //           fontSize: 15,
          //     //         ),
          //     //       ),
          //     //       const SizedBox(height: 5),
          //     //       Text(
          //     //         candidate.city,
          //     //         style: const TextStyle(color: Colors.grey),
          //     //       )
          //     //     ],
          //     //   ),
          //     // ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class HobiesWidget extends StatelessWidget {
  const HobiesWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground),
          color: const Color.fromRGBO(31, 33, 46, .6),
          borderRadius: context.border.normalBorderRadius),
      child: Text(title),
    );
  }
}

List<String> hobbies = [
  "Yürüyüş ve sırt çantası",
  "Uçak Gezisi",
  "Moda tasarımı",
  "Spor hastası",
  "Kova burcu"
];
