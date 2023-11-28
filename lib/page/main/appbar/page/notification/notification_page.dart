import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BİLDİRİMLER",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/notifi_icon.svg",
                  height: 25,
                ))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: ListView(
            children: [
              Text(
                "Bugün",
                style: context.general.textTheme.bodyMedium?.copyWith(
                    color: context.general.colorScheme.secondary, fontSize: 16),
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              NotificationWidget(
                title: "Seni takip etmeye başladı",
                color: context.general.colorScheme.onPrimary,
                buttonTitle: 'Takip Et',
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              const NotificationWidget(
                title: "Seni takip etmeye başladı",
                color: Colors.transparent,
                buttonTitle: 'Takiptesin',
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              NotificationWidget(
                title: "Seni evente davet etti",
                color: context.general.colorScheme.secondary,
                buttonTitle: 'Evente Katıl',
                titleColor: Colors.black,
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              NotificationWidget(
                title: "Canlı yayın başlattı",
                color: context.general.colorScheme.secondary,
                buttonTitle: 'Evente Katıl',
                titleColor: Colors.black,
                isNotBool: true,
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              Text(
                "Dün",
                style: context.general.textTheme.bodyMedium?.copyWith(
                    color: context.general.colorScheme.secondary, fontSize: 16),
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              const NotificationWidget(
                title: "Seni takip etmeye başladı",
                color: Colors.transparent,
                buttonTitle: 'Takiptesin',
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              NotificationWidget(
                title: "Seni evente davet etti",
                color: context.general.colorScheme.secondary,
                buttonTitle: 'Evente Katıl',
                titleColor: Colors.black,
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
            ],
          ),
        ));
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.title,
    required this.color,
    required this.buttonTitle,
    this.titleColor,
    this.isNotBool,
  });
  final String title;
  final Color color;
  final String buttonTitle;
  final Color? titleColor;
  final bool? isNotBool;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
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
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: context.general.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.normal, fontSize: 12),
                  ),
                  Text(
                    "  1h",
                    style: context.general.textTheme.bodyMedium?.copyWith(
                        color: const Color.fromRGBO(124, 135, 146, 1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
        isNotBool ?? false
            ? const SizedBox.shrink()
            : CustomButton(
                title: buttonTitle,
                color: color,
                titleColor: titleColor,
              )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    this.titleColor,
  });
  final String title;
  final Color color;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: context.general.colorScheme.onBackground),
            color: color,
            borderRadius: context.border.normalBorderRadius),
        child: Text(
          title,
          style: context.general.textTheme.bodyMedium
              ?.copyWith(fontSize: 14, color: titleColor),
        ),
      ),
    );
  }
}
