import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/page/home_page.dart';
import 'package:stolk_/page/main/page/maps/maps_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();
  bool homeSelected = true;
  bool mapsSelected = false;
  bool messageSelected = false;
  bool profileSelected = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics:
                const NeverScrollableScrollPhysics(), // Sayfalar arasındaki kaydırmayı devre dışı bırakır

            controller: _pageController,
            itemCount: screenList.length,
            itemBuilder: (context, index) {
              return screenList[index];
            },
          ),
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
                        _pageController.jumpToPage(index);
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
                        _pageController.jumpToPage(index);
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
                        _pageController.jumpToPage(index);
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
                        _pageController.jumpToPage(index);
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

      resizeToAvoidBottomInset:
          false, // Klavye ile çıkma engellemek için bu özelliği kullanın

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

List<Widget> screenList = [
  const HomePage(),
  const MapsPage(),
  const Center(child: Text("MESAJLAR GELECEK")),
  const Center(child: Text("PROFİL GELECEK")),
];
