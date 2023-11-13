// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/auth/page/agreement/agreement_page.dart';
import 'package:stolk_/page/auth/widget/auth_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginPageWidget());
  }
}

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  bool isPassword = true;
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/image/icons/login_logo.png")),
            SizedBox(
              height: context.general.mediaSize.height * 0.05,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/image/icons/login_lineer.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Center(
                  child: Text("Live\nEvent\nMatch",
                      style: GoogleFonts.abrilFatface()
                          .apply()
                          .copyWith(fontSize: 48, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            SizedBox(
              height: context.general.mediaSize.height * 0.01,
            ),
            Padding(
              padding: context.padding.normal,
              child: Column(
                children: [
                  const AuthWidget(
                    title: 'Apple ile giriş yap',
                    image: "assets/icons/auth_icons/apple.svg",
                  ),
                  SizedBox(
                    height: context.general.mediaSize.height * 0.025,
                  ),
                  const AuthWidget(
                    title: 'Facebook ile giriş yap',
                    image: "assets/icons/auth_icons/facebook.svg",
                  ),
                  SizedBox(
                    height: context.general.mediaSize.height * 0.025,
                  ),
                  const AuthWidget(
                    title: 'Google ile giriş yap',
                    image: "assets/icons/auth_icons/google.svg",
                  ),
                  SizedBox(
                    height: context.general.mediaSize.height * 0.025,
                  ),
                  AuthWidget(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AgreementPage(),
                      ),
                    ),
                    title: 'Telefon numarası ile oturum aç',
                    image: "assets/icons/auth_icons/phone.svg",
                  ),
                  SizedBox(
                    height: context.general.mediaSize.height * 0.025,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: context.general.textTheme.bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w500),
                        children: [
                          const TextSpan(text: "Kaydolarak, "),
                          TextSpan(
                            text: "Genel Kullanım Koşullarımızı ",
                            style: context.general.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          const TextSpan(text: "ve "),
                          TextSpan(
                            text: "Gizlilik Politikamızı ",
                            style: context.general.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                          const TextSpan(text: "kabul etmiş olursun. "),
                        ]),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Bağlantı sorunu mu?",
                        style: context.general.textTheme.bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
