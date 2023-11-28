import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

enum SingingCharacter { erkek, kadin }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

SingingCharacter? _character = SingingCharacter.erkek;

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: context.general.mediaSize.height * 0.20,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/image/example/profile_example_image.png",
                  ),
                  fit: BoxFit.cover)),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(31, 33, 46, .4),
                    borderRadius: context.border.normalBorderRadius,
                    border: Border.all(
                        width: 1,
                        color: context.general.colorScheme.onBackground),
                  ),
                  child: const Text("kapak fotoğrafını düzenle"),
                ),
                Container(
                  width: 40,
                  color: Colors.transparent,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: context.general.mediaSize.height * 0.24,
          ),
          child: Center(
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
                        CustomElevatedButton(
                          color: context.general.colorScheme.secondary,
                          title: "Bitir",
                          onPressed: () {},
                          textColor: context.general.colorScheme.background,
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: context.general.mediaSize.height * 0.14,
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                                sigmaY: 3,
                                sigmaX:
                                    3), //SigmaX and Y are just for X and Y directions
                            child: Image.network(
                              'https://i.pinimg.com/originals/d4/48/25/d4482530aaa9929463d93de1986ab2ac.jpg',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ) //here you can use any widget you'd like to blur .
                            ),
                      ),
                      Center(
                          child: SvgPicture.asset(
                              "assets/icons/profile_icons/camera_icon.svg"))
                    ],
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}



// Seçili cinsiyeti tutan değişken
