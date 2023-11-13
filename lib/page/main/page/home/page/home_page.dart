import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import 'package:stolk_/main.dart';
import 'package:stolk_/model/core/title_model.dart';
import 'package:stolk_/page/main/page/home/event/page/event_page.dart';
import 'package:stolk_/page/main/page/home/page/event_list_screen/event_list_screen.dart';
import 'package:stolk_/page/main/page/home/page/live_list_screen/live_list_screen_page.dart';
import 'package:stolk_/page/main/page/home/page/main_body_page/main_body_page.dart';
import 'package:stolk_/widget/custom_icon_button.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectedIndex = 0;
PageController pageBodyController = PageController();

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: CircleAvatar(
              backgroundImage: const NetworkImage(
                  "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
              backgroundColor: context.general.colorScheme.onSecondary,
            ),
          ),
          title: context.watch<ChangeMainBody>().getIndex == 0
              ? Image.asset(
                  "assets/image/icons/splash_logo.png",
                  height: 33,
                )
              : Text(
                  "STOLK",
                  style: context.general.textTheme.bodyLarge
                      ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                ),
          actions: [
            CustomIconButton(
              onTap: () {},
              icon: Image.asset("assets/image/icons/cup_icon.png"),
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/notifi_icon.svg",
                  height: 25,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, top: 2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SearchBarWidget(searchController: _searchController),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.010,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Center(
                  child: SizedBox(
                    height: 38,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: titleModelList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: context.general.colorScheme.primary),
                                color: context.general.colorScheme.onBackground,
                                borderRadius:
                                    context.border.normalBorderRadius),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 7),
                            height: 38,
                            child: GestureDetector(
                              onTap: () {
                                if (index == 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const EventPage(),
                                      ));
                                }
                                pageBodyController.animateToPage(index,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeOutQuad);
                                context
                                    .read<ChangeMainBody>()
                                    .changePage(index);
                              },
                              child: Row(
                                children: [
                                  titleModelList[index].image == null
                                      ? const SizedBox.shrink()
                                      : SvgPicture.asset(
                                          titleModelList[index].image!),
                                  if (titleModelList[index].image != null)
                                    SizedBox(
                                      width: context.general.mediaSize.width *
                                          0.02,
                                    ),
                                  Text(titleModelList[index].title)
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
                height: context.general.mediaSize.height * 0.01,
              ),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageBodyController,
                  itemBuilder: (context, index) => bodyList[index],
                ),
              )
              // Expanded(
              //     child: bodyList[context.watch<ChangeMainBody>().getIndex]),
            ],
          ),
        ));
  }
}

List<Widget> bodyList = [
  const MainBodyPage(),
  const Text("CANLI YAYIN PAGE"),
  const Text("EVENT PAGE"),
  const Text("MATCH PAGE"),
  const LiveListScreen(),
  const EventListScreen()
];
