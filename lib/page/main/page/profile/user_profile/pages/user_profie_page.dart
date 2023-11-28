import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/title_model.dart';

import '../../pages/profile_page.dart';

class UserProfilPage extends StatefulWidget {
  const UserProfilPage({Key? key}) : super(key: key);

  @override
  State<UserProfilPage> createState() => _UserProfilPageState();
}

class _UserProfilPageState extends State<UserProfilPage> {
  int selectedIndex = 0;
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
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(31, 33, 46, .4),
                      borderRadius: context.border.normalBorderRadius,
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                    ),
                    child: const Text("Takip Et"),
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
                  height: context.general.mediaSize.height * 0.01,
                ),
                Padding(
                  padding: context.padding.normal,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                        child: ListView.builder(
                            itemCount: userProfileTitle.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Text(
                                      userProfileTitle[index].title,
                                      style: context
                                          .general.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontSize: 14,
                                              color: selectedIndex == index
                                                  ? context.general.colorScheme
                                                      .secondary
                                                  : const Color.fromRGBO(
                                                      124, 135, 146, 1)),
                                    ),
                                  ),
                                )),
                      ),
                      Divider(
                        thickness: 1,
                        height: 32,
                        color: context.general.colorScheme.onBackground,
                      ),
                      userProfilePagesList[selectedIndex]
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

List<Widget> userProfilePagesList = [
  const Text("EVENT"),
  const Text("CANLI YAYIN"),
  const Text("HAKKINDA"),
];
