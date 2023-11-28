import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/title_model.dart';
import 'package:stolk_/page/main/page/home/live/page/start_live_page.dart';
import 'package:stolk_/page/main/page/home/widget/live_count_widget.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  bool homeSelected = true;
  bool mapsSelected = false;
  bool messageSelected = false;
  bool profileSelected = false;
  int index = 0;
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
          "LİVE",
          style: context.general.textTheme.bodyLarge
              ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          // CustomIconButton(
          //   onTap: () {},
          //   icon: Image.asset("assets/image/icons/cup_icon.png"),
          // ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/notifi_icon.svg",
                height: 25,
              ))
        ],
      ),
      body: Stack(
        children: [
          const LiveBodyWidget(),
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
                  child: GestureDetector(
                    onTap: () =>
                        context.route.navigateToPage(const StartLivePage()),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          borderRadius: context.border.lowBorderRadius,
                          color: context.general.colorScheme.secondary),
                      child: Transform.rotate(
                        angle: -45 * 1.1,
                        child: const Icon(
                          Icons.play_arrow,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class LiveBodyWidget extends StatelessWidget {
  const LiveBodyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 2, bottom: 32),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SearchBarWidget(searchController: _searchController),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
              child: SizedBox(
                height: 38,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: liveModelList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: context.general.colorScheme.primary),
                            color: context.general.colorScheme.onBackground,
                            borderRadius: context.border.normalBorderRadius),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 7),
                        height: 38,
                        child: GestureDetector(
                          onTap: () {
                            if (index == 2) {}
                            if (index == 1) {}
                          },
                          child: Row(
                            children: [
                              liveModelList[index].image == null
                                  ? const SizedBox.shrink()
                                  : SvgPicture.asset(
                                      liveModelList[index].image!),
                              if (liveModelList[index].image != null)
                                SizedBox(
                                  width: context.general.mediaSize.width * 0.02,
                                ),
                              Text(liveModelList[index].title)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: LiveHorizontalWidget(),
                );
              },
            ),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: context.general.mediaSize.width / 2,
                childAspectRatio: 2 / 2.3,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    // İlk resim için blur efekti uygulanmış Container
                    ClipRRect(
                      borderRadius: context.border.lowBorderRadius,
                      child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                              sigmaY: 3,
                              sigmaX:
                                  3), //SigmaX and Y are just for X and Y directions
                          child: Image.network(
                            'https://i.pinimg.com/originals/d4/48/25/d4482530aaa9929463d93de1986ab2ac.jpg',
                            height: context.general.mediaSize.height,
                            fit: BoxFit.cover,
                          ) //here you can use any widget you'd like to blur .
                          ),
                    ),
                    // Diğer öğeler
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: context.border.normalBorderRadius,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                  height:
                                      context.general.mediaSize.height * 0.01,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Emma Watson",
                                        style: context
                                            .general.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),
                                        textAlign: TextAlign.center,
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LiveHorizontalWidget extends StatelessWidget {
  const LiveHorizontalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.general.mediaSize.height * 0.15,
        width: context.general.mediaSize.width * 0.6,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: context.general.colorScheme.onBackground),
            color: context.general.colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: context.border.lowBorderRadius,
              child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                      sigmaY: 3,
                      sigmaX: 3), //SigmaX and Y are just for X and Y directions
                  child: Image.network(
                    'https://i.pinimg.com/originals/d4/48/25/d4482530aaa9929463d93de1986ab2ac.jpg',
                    fit: BoxFit.cover,
                    width: context.general.mediaSize.width * 0.6,
                    height: context.general.mediaSize.height * 0.15,
                  ) //here you can use any widget you'd like to blur .
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LiveCountWidget(),
                      Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(31, 31, 46, 1)),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Emma Watson",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Türkiye gezisi canlı yayın",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(fontSize: 8),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              //SvgPicture.asset("assets/icons/checklist_icon.svg")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/image/tr.png",
                    height: 12,
                    width: 18,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
