import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/auth/page/login/page/login_page.dart';
import 'package:stolk_/splash/page_view/page/page_one_screen.dart';
import 'package:stolk_/splash/page_view/page/page_three_screen.dart';
import 'package:stolk_/splash/page_view/page/page_two_screen%20copy.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController _controller = PageController();
  int currentPageValue = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPageValue = _controller.page?.round() as int;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                itemCount: 3,
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  return _pageViewWidget[index];
                },
              ),
            ),
            if (currentPageValue == 2)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                child: CustomElevatedButton(
                  title: "Devam Et",
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (route) => false);
                  },
                ),
              ),
            DotsIndicator(
              dotsCount: 3,
              position: currentPageValue,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size.square(12.0),

                color: const Color.fromRGBO(217, 217, 217, 1), // Inactive color
                activeColor: context.general.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _pageViewWidget = [
  const PageOneScreen(),
  const PageTwoScreen(),
  const PageThreeScreen()
];
