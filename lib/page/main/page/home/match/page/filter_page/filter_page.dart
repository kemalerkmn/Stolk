import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/match/page/filter_page/page_view_pages/about_page.dart';
import 'package:stolk_/page/main/page/home/match/page/filter_page/page_view_pages/discorvery_page.dart';
import 'package:stolk_/page/main/page/home/match/page/filter_page/page_view_pages/hobbies_page.dart';
import 'package:stolk_/page/main/page/home/match/page/filter_page/page_view_pages/photo_page.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  Size get preferredSize => const Size.fromHeight(kToolbarHeight / 3);
  int selectedIndex = 0;
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    // Adding listener to page controller
    _pageController.addListener(() {
      int nextPage = _pageController.page!.round();
      if (selectedIndex != nextPage) {
        setState(() {
          selectedIndex = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose(); // Don't forget to dispose the controller!
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> filterPageViewList = [
      AboutPage(
        pageController: _pageController,
      ),
      PhotoPage(
        pageController: _pageController,
      ),
      HobbiesPage(
        pageController: _pageController,
      ),
      const DiscoveryPage(),
    ];
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: preferredSize,
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    4,
                    (index) => Container(
                      height: 2.5,
                      width: context.general.mediaSize.width / 4.8,
                      color: index == selectedIndex
                          ? context.general.colorScheme.secondary
                          : const Color.fromRGBO(237, 239, 240, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .center, // This will align items to the center horizontally

              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios)),
                const Spacer(),
                Text(
                  filterPageTitleList[selectedIndex],
                  style: context.general.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                const Opacity(
                  // Görünmez bir IconButton boyutu dengeler
                  opacity: 0.0,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: filterPageViewList.length,
                itemBuilder: (context, index) {
                  return filterPageViewList[index];
                },
              ),
            ),
          ],
        ));
  }
}

List<String> filterPageTitleList = [
  "Hakkında",
  "En Güzel\nFotoğraflarını Ekle",
  "Tutku",
  "Keşfet"
];
