import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/widget/event_widget.dart';
import 'package:stolk_/widget/gradient_text_widget.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Senin İçin',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const EventWidget();
            },
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Popüler',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const EventWidget();
            },
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Takipler',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const EventWidget();
            },
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                'Yeni',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                child: Text(
                  "Hepsini Gör",
                  style: context.general.textTheme.bodyMedium
                      ?.copyWith(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height / 5,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const EventWidget();
            },
          ),
        ),
        SizedBox(
          height: context.general.mediaSize.height * 0.01,
        ),
      ],
    );
  }
}
