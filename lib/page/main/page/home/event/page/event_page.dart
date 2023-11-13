import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

import '../../../../../../widget/custom_icon_button.dart';
import 'event_page_details.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
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
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "EVENT",
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
          const EventBodyWidget(),
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
}

class EventBodyWidget extends StatelessWidget {
  const EventBodyWidget({Key? key}) : super(key: key);
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
          SizedBox(
            height: 68,
            child: ListView.builder(
              itemCount: 16,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.only(right: 6.0),
                    child: Container(
                      height: 68,
                      width: 68,
                      child: Stack(children: [
                        Container(
                          height: 66,
                          width: 66,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color:
                                      context.general.colorScheme.onBackground),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i.pinimg.com/originals/3e/86/cb/3e86cb8ddc062561196b14fcc7cd60b0.jpg")),
                              shape: BoxShape.circle),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 2,
                          child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                                color: context.general.colorScheme.background,
                                shape: BoxShape.circle),
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 0, top: 0),
                            child: Container(
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: context
                                          .general.colorScheme.onBackground),
                                  color: context.general.colorScheme.secondary,
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.add,
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  );
                }
                return Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Container(
                      height: 66,
                      width: 66,
                      decoration: BoxDecoration(
                          color: context.general.colorScheme.secondary,
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(1.5),
                        child: Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              color: context.general.colorScheme.background,
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://i.pinimg.com/originals/93/ba/08/93ba0828119f93f319d8876f2505c316.jpg"))),
                            ),
                          ),
                        ),
                      ),
                    ));
              },
            ),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          Text("TARİH VE KATEGORİ OLACAK"),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 16, right: 8),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventDetailsPage(),
                      ));
                },
                child: SizedBox(
                  height: context.general.mediaSize.height / 4,
                  child: Stack(children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: double.infinity,
                      height: context.general.mediaSize.height / 4,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: context.general.colorScheme.onBackground),
                          color: context.general.colorScheme.primary,
                          borderRadius: context.border.normalBorderRadius),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 17,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                                ),
                              ),
                              SizedBox(
                                width: context.general.mediaSize.width * 0.01,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Düzenleyen",
                                    style: context.general.textTheme.bodySmall
                                        ?.copyWith(
                                            color: Colors.grey, fontSize: 8),
                                  ),
                                  Text(
                                    "William",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    "Allianz Arena Stadium",
                                    style: context.general.textTheme.bodySmall
                                        ?.copyWith(
                                            color: Colors.grey, fontSize: 8),
                                  ),
                                  Text(
                                    "Drake Concert Event",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10),
                                  ),
                                  Text(
                                    "18.012.2024 / 22.00",
                                    style: context.general.textTheme.bodySmall
                                        ?.copyWith(
                                            color: Colors.grey, fontSize: 8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Center(
                            child: Container(
                              height: context.general.mediaSize.height / 7,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: context.border.lowBorderRadius,
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/originals/8c/5b/1a/8c5b1a10c150c9893f18dbbcb1b49c85.jpg"),
                                      fit: BoxFit.cover)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 22, top: 6),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                            width: 22,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: context
                                                        .general
                                                        .colorScheme
                                                        .onBackground),
                                                color: context.general
                                                    .colorScheme.onSecondary,
                                                shape: BoxShape.circle),
                                            child: const Icon(
                                              Icons.favorite_border_outlined,
                                              size: 12,
                                              color: Colors.grey,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: context.general.colorScheme.background,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                            color: context.general.colorScheme.secondary,
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
