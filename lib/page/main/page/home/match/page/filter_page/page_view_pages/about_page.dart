import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

enum SingingCharacter { erkek, kadin }

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

SingingCharacter? _character = SingingCharacter.erkek;

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: context.padding.normal,
                child: Form(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "İsim",
                        style: context.general.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const TextField(),
                      SizedBox(
                        height: context.general.mediaSize.height * 0.015,
                      ),
                      Text(
                        "Yaş",
                        style: context.general.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const TextField(),
                      SizedBox(
                        height: context.general.mediaSize.height * 0.015,
                      ),
                      Text(
                        "Telefon Numarası",
                        style: context.general.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const TextField(),
                      SizedBox(
                        height: context.general.mediaSize.height * 0.015,
                      ),
                      Text(
                        "E-posta",
                        style: context.general.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const TextField(),
                      SizedBox(
                        height: context.general.mediaSize.height * 0.015,
                      ),
                      Text(
                        "Cinsiyet",
                        style: context.general.textTheme.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text('Erkek'),
                        leading: Radio<SingingCharacter>(
                          activeColor: context.general.colorScheme.secondary,
                          value: SingingCharacter.erkek,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text('Kadın'),
                        leading: Radio<SingingCharacter>(
                          activeColor: context.general.colorScheme.secondary,
                          value: SingingCharacter.kadin,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: context.padding.normal,
            child: CustomElevatedButton(
              color: context.general.colorScheme.secondary,
              title: "Devam",
              onPressed: () => widget.pageController.nextPage(
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeInCubic),
              textColor: context.general.colorScheme.background,
            ),
          ),
        )
      ],
    ));
  }
}



// Seçili cinsiyeti tutan değişken
