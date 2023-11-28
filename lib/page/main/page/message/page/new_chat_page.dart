import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/message/page/new_group_page.dart';

import 'package:stolk_/widget/search_bar_widget.dart';

class NewChatPage extends StatelessWidget {
  const NewChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Yeni Sohbet",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: context.padding.normal,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SearchBarWidget(searchController: _searchController),
              SizedBox(
                height: context.general.mediaSize.height * 0.02,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewGroupPage(),
                    )),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: context.general.colorScheme.onBackground),
                    color: context.general.colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/message_icons/group_icon.svg",
                        height: 18,
                      ),
                      SizedBox(
                        width: context.general.mediaSize.height * 0.02,
                      ),
                      const Text("Yeni Grup")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.02,
              ),
              Container(
                height: context.general.mediaSize.height * 0.65,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: context.general.colorScheme.onBackground),
                  color: context.general.colorScheme.onSecondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  // shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://i.pinimg.com/originals/bf/34/9b/bf349bb7a4dd0c18acf35fe012667a6f.jpg"),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "BATUHANKURT",
                                      style: context
                                          .general.textTheme.bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 6),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              31, 33, 46, .4),
                                          borderRadius:
                                              context.border.normalBorderRadius,
                                          border: Border.all(
                                              width: 1,
                                              color: context.general.colorScheme
                                                  .onBackground)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            style: context
                                                .general.textTheme.bodySmall
                                                ?.copyWith(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 22,
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
