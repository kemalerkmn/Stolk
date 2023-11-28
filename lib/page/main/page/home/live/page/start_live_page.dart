import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StartLivePage extends StatelessWidget {
  const StartLivePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.general.mediaSize.height,
        width: context.general.mediaSize.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/originals/11/e6/19/11e6195f53f12422864d28d5369cd6a2.jpg",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SafeArea(
                child: IconButton(
              icon: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.close,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: SizedBox(
                width: context.general.mediaSize.width / 2.5,
                height: 52,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(31, 33, 45, 1)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_circle_outlined,
                    color: context.general.colorScheme.secondary,
                    size: 30,
                  ),
                  label: Text(
                    "Yayına Başla",
                    style: context.general.textTheme.bodyMedium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
