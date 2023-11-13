// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:stolk_/splash/page_view/page_view_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _loginKey();
  }

  void _loginKey() {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const PageViewPage(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/image/icons/splash_logo.png"),
      ),
    );
  }
}
