// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // Mesaj listesi ve mesaj giriş kontrolcüsü
  List<String> messages = ["SOHBET SAYFASININ YAPIMI DEVAM EDİYOR"];
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Mesajları gösteren kısım

            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  bool isMe = index % 2 ==
                      0; // Örnek olarak her iki mesajdan biri benim mesajım
                  return Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 14),
                        decoration: BoxDecoration(
                          color: isMe
                              ? context.general.colorScheme.onPrimary
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(messages[index]),
                      ),
                    ],
                  );
                },
              ),
            ),
            // Mesaj yazma kısmı
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration:
                          const InputDecoration(hintText: 'Bir şeyler yaz...'),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      setState(() {
                        messages.add(messageController.text);
                        messageController.clear();
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                maxRadius: 20,
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Batuhan KURT",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/icons/message_icons/video_icon.svg",
                height: 18,
              ),
              const SizedBox(width: 16),
              SvgPicture.asset(
                "assets/icons/message_icons/phone_icon.svg",
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
