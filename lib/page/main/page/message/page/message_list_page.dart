import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/model/core/title_model.dart';
import 'package:stolk_/page/main/page/message/page/chat_page.dart';
import 'package:stolk_/page/main/page/message/page/new_chat_page.dart';
import 'package:stolk_/page/main/page/profile/user_profile/pages/user_profie_page.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

class MessageListPage extends StatefulWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  State<MessageListPage> createState() => _MessageListPageState();
}

class _MessageListPageState extends State<MessageListPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Mesajlar",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewChatPage(),
                      ));
                },
                icon: SvgPicture.asset(
                  "assets/icons/message_icon.svg",
                  height: 25,
                ))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: ListView(
            children: [
              SearchBarWidget(searchController: _searchController),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 20,
                child: ListView.builder(
                    itemCount: messageListModel.length,
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
                              messageListModel[index].title,
                              style: context.general.textTheme.bodyMedium
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: selectedIndex == index
                                          ? context
                                              .general.colorScheme.secondary
                                          : const Color.fromRGBO(
                                              124, 135, 146, 1)),
                            ),
                          ),
                        )),
              ),
              const Divider(),
              Slidable(
                  // Specify a key if the Slidable is dismissible.
                  key: const ValueKey(0),

                  // The start action pane is the one at the left or the top side.

                  // The end action pane is the one at the right or the bottom side.
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SizedBox(
                        width: context.general.mediaSize.width * 0.04,
                      ),
                      const CustomMessageButton(
                        image: "assets/icons/match_icons/close_icon.svg",
                      ),
                      SizedBox(
                        width: context.general.mediaSize.width * 0.02,
                      ),
                      const CustomMessageButton(
                        image: 'assets/icons/message_icons/close_message.svg',
                      )
                    ],
                  ),

                  // The child of the Slidable is what the user sees when the
                  // component is not dragged.
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatPage(),
                        )),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfilPage(),
                              )),
                          child: const CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BATUHANKURT",
                                style: context.general.textTheme.bodyMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Bugün çok güzel görünüyorsun",
                                style: context.general.textTheme.bodyMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "17:00",
                              style: context.general.textTheme.bodyMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          124, 135, 146, 1)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: context.general.colorScheme.secondary),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: context.general.textTheme.bodySmall
                                      ?.copyWith(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}

class CustomMessageButton extends StatelessWidget {
  const CustomMessageButton({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: context.general.colorScheme.onBackground),
        color: context.general.colorScheme.onSecondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          image,
          // ignore: deprecated_member_use
          color: const Color.fromRGBO(125, 130, 140, 1),
        ),
      ),
    );
  }
}
