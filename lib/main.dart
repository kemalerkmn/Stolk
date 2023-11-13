import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/splash/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeMainBody()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: const Color.fromRGBO(31, 33, 46, 1),
            contentPadding: const EdgeInsets.only(left: 16, right: 8),
            focusedBorder: OutlineInputBorder(
                borderRadius: context.border.normalBorderRadius,
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(80, 103, 242, 1))),
            enabledBorder: OutlineInputBorder(
                borderRadius: context.border.normalBorderRadius,
                borderSide: const BorderSide(
                    width: 1, color: Color.fromRGBO(53, 55, 68, 1)))),
        textTheme: GoogleFonts.interTextTheme().apply(
          bodyColor: Colors.white, // Varsayılan metin rengi
          displayColor: Colors.white, // Başlık ve büyük metin rengi
        ),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromRGBO(31, 33, 46, 1),
            onPrimary: Color.fromRGBO(80, 103, 242, 1),
            secondary: Color.fromRGBO(0, 255, 207, 1),
            onSecondary: Color.fromRGBO(31, 33, 46, 1),
            error: Color.fromARGB(255, 255, 17, 0),
            onError: Colors.amber,
            background: Color.fromRGBO(24, 25, 33, 1),
            onBackground: Color.fromRGBO(53, 55, 68, 1),
            surface: Color.fromRGBO(24, 25, 33, 1),
            onSurface: Colors.white),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}

class ChangeMainBody with ChangeNotifier, DiagnosticableTreeMixin {
  int index = 0;

  int get getIndex => index;

  void changePage(int selectedIndex) {
    index = selectedIndex;
    notifyListeners();
  }

  void pageBuilderChange(int selectedIndex, PageController pageController) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }
}
