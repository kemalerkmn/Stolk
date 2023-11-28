import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/title_model.dart';
import 'package:stolk_/page/main/page/profile/pages/base_profil_page.dart';
import 'package:stolk_/page/main/page/profile/pages/edit_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/image/example/profile_example_image.png",
          width: double.infinity,
          height: context.general.mediaSize.height * 0.20,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: context.general.mediaSize.height * 0.14,
          ),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i.pinimg.com/originals/3e/86/cb/3e86cb8ddc062561196b14fcc7cd60b0.jpg"),
                  radius: 50,
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                Container(
                  width: 62,
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(31, 33, 46, .4),
                      borderRadius: context.border.normalBorderRadius,
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/icons/cup_icon.png",
                        height: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "2,356",
                        style: context.general.textTheme.bodySmall
                            ?.copyWith(fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                Text(
                  "BATUHANKURT",
                  style: context.general.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.01,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfilePage(),
                      )),
                  child: Container(
                    width: context.general.mediaSize.width / 2.5,
                    height: 42,
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(31, 33, 46, .4),
                      borderRadius: context.border.normalBorderRadius,
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/edit_icon.svg",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text("Profili Düzenle")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.02,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FollowWidget(
                      title: 'Takip',
                    ),
                    FollowWidget(
                      title: 'Takipçi',
                    ),
                    FollowWidget(
                      title: 'Beğeniler',
                    ),
                  ],
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.02,
                ),
                Expanded(
                  child: Padding(
                      padding: context.padding.normal,
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(profileTitleModelList.length,
                              (index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (index < 3) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BaseProfilPage(
                                                      title:
                                                          profileTitleModelList[
                                                                  index]
                                                              .title),
                                            ));
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            profileTitleModelList[index]
                                                    .image ??
                                                ""),
                                        SizedBox(
                                          width:
                                              context.general.mediaSize.width *
                                                  0.02,
                                        ),
                                        Expanded(
                                            child: Text(
                                                profileTitleModelList[index]
                                                    .title)),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 14,
                                          color:
                                              Color.fromRGBO(237, 239, 240, 1),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: context.general.mediaSize.height *
                                        0.007,
                                  ),
                                  const Divider()
                                ],
                              ),
                            );
                          }),
                        ),
                      )),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class FollowWidget extends StatelessWidget {
  const FollowWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          width: context.general.mediaSize.width / 3.4,
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 32),
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: context.general.colorScheme.onBackground),
            borderRadius: BorderRadius.circular(10),
            color: context.general.colorScheme.onSecondary,
          ),
          child: Column(
            children: [
              Text(
                "45",
                style: context.general.textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.005,
              ),
              Text(
                title,
                style:
                    context.general.textTheme.bodyMedium?.copyWith(fontSize: 9),
              )
            ],
          )),
    );
  }
}
