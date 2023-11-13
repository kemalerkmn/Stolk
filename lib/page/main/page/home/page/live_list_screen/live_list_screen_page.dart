import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';
import 'package:stolk_/main.dart';

import 'package:stolk_/widget/gradient_text_widget.dart';

import '../../../../../../widget/live_widget.dart';

class LiveListScreen extends StatelessWidget {
  const LiveListScreen({Key? key}) : super(key: key);
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
                'Öne Çıkan',
                style: context.general.textTheme.bodyLarge
                    ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                gradient: const LinearGradient(colors: [
                  Color.fromRGBO(129, 245, 223, 1),
                  Color.fromRGBO(244, 241, 255, 1),
                  Color.fromRGBO(124, 197, 183, 1),
                ]),
              ),
              InkWell(
                onTap: () {
                  context.read<ChangeMainBody>().changePage(4);
                },
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
          height: context.general.mediaSize.height / 5.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: LiveWidget(),
              );
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
                onTap: () {
                  context.read<ChangeMainBody>().changePage(4);
                },
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
          height: context.general.mediaSize.height / 5.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: LiveWidget(),
              );
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
                onTap: () {
                  context.read<ChangeMainBody>().changePage(4);
                },
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
          height: context.general.mediaSize.height / 5.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: LiveWidget(),
              );
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
                onTap: () {},
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
          height: context.general.mediaSize.height / 5.5,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: LiveWidget(),
              );
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
