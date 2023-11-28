import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/title_model.dart';
import 'package:stolk_/page/main/page/home/event/page/add_event_page.dart';
import 'package:stolk_/page/main/page/home/event/widget/add_stories_widget.dart';
import 'package:stolk_/page/main/page/home/event/widget/event_page_widget.dart';
import 'package:stolk_/page/main/page/home/event/widget/stories_widget.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

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
          icon: const Icon(
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
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddEventPage(),
                        )),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          borderRadius: context.border.lowBorderRadius,
                          color: context.general.colorScheme.secondary),
                      child: const Icon(
                        Icons.close,
                        size: 38,
                        color: Colors.black,
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

class EventBodyWidget extends StatefulWidget {
  const EventBodyWidget({Key? key}) : super(key: key);

  @override
  State<EventBodyWidget> createState() => _EventBodyWidgetState();
}

class _EventBodyWidgetState extends State<EventBodyWidget> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    void changeIndexTitle(int titleIndex) {
      setState(() {
        selectedIndex = titleIndex;
      });
    }

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
                  return const Padding(
                    padding: EdgeInsets.only(right: 6.0),
                    child: AddStoriesWidget(),
                  );
                }
                return const Padding(
                    padding: EdgeInsets.only(right: 6.0),
                    child: StoriesWidget());
              },
            ),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          SizedBox(
            height: 58,
            child: ListView.builder(
              itemCount: 13,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomDialog();
                            },
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: context.general.colorScheme.primary),
                              color: context.general.colorScheme.onSecondary,
                              borderRadius: context.border.normalBorderRadius),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: SvgPicture.asset(
                            "assets/icons/filter_icon.svg",
                            height: 22,
                          ),
                        ),
                      ));
                }
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    print(selectedIndex);
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: context.general.colorScheme.primary),
                            color: index == selectedIndex
                                ? context.general.colorScheme.secondary
                                : context.general.colorScheme.onSecondary,
                            borderRadius: context.border.normalBorderRadius),
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 6),
                        child: Column(
                          children: [
                            Text(
                              "15",
                              style: context.general.textTheme.bodyMedium
                                  ?.copyWith(
                                      color: index == selectedIndex
                                          ? context
                                              .general.colorScheme.onSecondary
                                          : context
                                              .general.colorScheme.secondary),
                            ),
                            Text(
                              "Oca",
                              style: context.general.textTheme.bodyMedium
                                  ?.copyWith(
                                      color: index == selectedIndex
                                          ? context
                                              .general.colorScheme.onSecondary
                                          : context
                                              .general.colorScheme.onSurface),
                            )
                          ],
                        ),
                      )),
                );
              },
            ),
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          SizedBox(
              height: 38,
              child: ListView.builder(
                itemCount: eventTitleModelList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TitleButton(
                    title: eventTitleModelList[index].title,
                    icon: eventTitleModelList[index].image,
                  ),
                ),
              )),
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
                        builder: (context) => const EventDetailsPage(),
                      ));
                },
                child: const EventPageWidget(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleButton extends StatelessWidget {
  const TitleButton({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: context.general.colorScheme.primary),
          color: context.general.colorScheme.onBackground,
          borderRadius: context.border.normalBorderRadius),
      child: Row(
        children: [
          SvgPicture.asset(icon ?? "assets/icons/event_icon/heart_icon.svg"),
          SizedBox(
            width: context.general.mediaSize.width * 0.02,
          ),
          Text(title)
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      // Add your dialog content here
      child: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Filtreleme',
                style: context.general.textTheme.bodyLarge?.copyWith(
                    color: context.general.colorScheme.secondary,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: context.general.mediaSize.height * 0.01),
            const Text('This is a custom dialog.'),
            SizedBox(height: context.general.mediaSize.height * 0.01),
          ],
        ),
      ),
    );
  }
}
