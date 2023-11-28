import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/matchpage_candidate_model.dart';
import 'package:stolk_/page/main/page/home/match/page/filter_page/filter_page.dart';
import 'package:stolk_/page/main/page/home/match/page/match_profie_details_page.dart';
import 'package:stolk_/page/main/page/home/match/widget/match_card_widget.dart';

import '../../../../../../widget/custom_icon_button.dart';

List<String> titleText = ["Senin için", "Popüler", "Etkinlik Oluştur +"];

class MatchPage extends StatefulWidget {
  const MatchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MatchPage> createState() => _MatchPagePageState();
}

class _MatchPagePageState extends State<MatchPage> {
  final CardSwiperController controller = CardSwiperController();
  int selectedIndex = 0;
  //final cards = candidates.map(MatchPageCard.new).toList();
  bool homeSelected = true;
  bool mapsSelected = false;
  bool messageSelected = false;
  bool profileSelected = false;
  int index = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "MATCH",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Image.asset("assets/image/icons/cup_icon.png"),
          ),
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FilterPage(),
                  )),
              icon: SvgPicture.asset(
                "assets/icons/filter_icon.svg",
                height: 25,
              ))
        ],
      ),
      body: Stack(
        children: [
          CardSwiper(
              controller: controller,
              cardsCount: candidates.length,
              onSwipe: _onSwipe,
              onUndo: _onUndo,
              numberOfCardsDisplayed: 2,
              backCardOffset: const Offset(0, 0),
              padding: const EdgeInsets.all(24.0),
              cardBuilder: (
                context,
                index,
                horizontalThresholdPercentage,
                verticalThresholdPercentage,
              ) =>
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MatchProfileDetailsPage(),
                        )),
                    child: MatchPageCard(
                      controller: controller,
                      candidate: candidates[index],
                    ),
                  )),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: context.general.colorScheme.onSecondary,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              height: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: context.general.mediaSize.width * .07,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                          homeSelected = true;
                          mapsSelected = false;
                          messageSelected = false;
                          profileSelected = false;
                        });
                        // _pageController.animateToPage(index,
                        //     duration: const Duration(milliseconds: 400),
                        //     curve: Curves.easeOutQuad);
                      },
                      icon: SvgPicture.asset(
                        homeSelected
                            ? "assets/icons/bottom_icons/home_icon2.svg"
                            : "assets/icons/bottom_icons/home_icon.svg",
                        height: 28,
                      )),
                  SizedBox(
                    width: context.general.mediaSize.width * 0.05,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          index = 1;
                          homeSelected = false;
                          mapsSelected = true;
                          messageSelected = false;
                          profileSelected = false;
                        });
                      },
                      icon: SvgPicture.asset(
                        mapsSelected
                            ? "assets/icons/bottom_icons/maps_icon2.svg"
                            : "assets/icons/bottom_icons/maps_icon.svg",
                        height: 28,
                      )),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          index = 2;
                          homeSelected = false;
                          mapsSelected = false;
                          messageSelected = true;
                          profileSelected = false;
                        });
                      },
                      icon: SvgPicture.asset(
                        messageSelected
                            ? "assets/icons/bottom_icons/message_icon2.svg"
                            : "assets/icons/bottom_icons/message_icon.svg",
                        height: 28,
                      )),
                  SizedBox(
                    width: context.general.mediaSize.width * 0.05,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          index = 3;

                          homeSelected = false;
                          mapsSelected = false;
                          messageSelected = false;
                          profileSelected = true;
                        });
                      },
                      icon: SvgPicture.asset(
                        "assets/icons/bottom_icons/profile_icon.svg",
                        height: 28,
                      )),
                  SizedBox(
                    width: context.general.mediaSize.width * .07,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.rotate(
                  angle: 45 * 1.1,
                  child: Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        borderRadius: context.border.lowBorderRadius,
                        color: context.general.colorScheme.secondary),
                    child: const Icon(
                      Icons.add,
                      size: 38,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}

class DetailProfilCard extends StatelessWidget {
  const DetailProfilCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: context.general.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: ClipRRect(
              borderRadius: context.border.lowBorderRadius,
              child: Image.network(
                candidates[index].image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: ClipRRect(
              borderRadius: context.border.lowBorderRadius,
              child: Image.network(
                "https://i.pinimg.com/originals/e9/0e/ca/e90ecaef94d80060a14a5388fd955188.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: ClipRRect(
              borderRadius: context.border.lowBorderRadius,
              child: Image.network(
                "https://i.pinimg.com/originals/91/07/6c/91076c6ac642a3eadc3efcb5c06a246b.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  candidates[index].name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  candidates[index].job,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  candidates[index].city,
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
