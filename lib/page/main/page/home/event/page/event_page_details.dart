// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    String _exampleText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

    String _exampleText2 =
        """- Etkinlik mekanına yiyecek ve içecek sokmak yasaktır.
- Satın alınan biletlerde iptal, iade ve değişiklik yapılmamaktadır.""";
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: const [
              CustomIconButton(
                iconName: 'assets/icons/event_icon/share_icon.svg',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomIconButton(
                  iconName: "assets/icons/event_icon/heart_icon.svg",
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(24, 25, 33, .4),
                      shape: BoxShape.circle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "assets/icons/auth_icons/close.svg",
                        ),
                      ),
                    ],
                  ), // Özel başlık eklemek için burayı özelleştirebilirsiniz
                ),
              ),
            ),
            expandedHeight: 300.0, // Arka plan resmin yüksekliği
            floating:
                false, // Kaydırma sırasında app barın üstte sabit kalıp kalmayacağı
            pinned: true, // En üstteki app barın üstte sabit kalıp kalmayacağı
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/image/example/event_example_image3.png',
                        ))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(
                          "Tarkan Maltepe Konseri",
                          style: context.general.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "25 Ağustos 2023, 15.30",
                          style: context.general.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: context.padding.normal,
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 24,
                              backgroundImage: NetworkImage(
                                  "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                            ),
                          ),
                          SizedBox(
                            width: context.general.mediaSize.width * 0.02,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Düzenleyen",
                                  style: context.general.textTheme.bodySmall
                                      ?.copyWith(
                                          color: Colors.grey, fontSize: 10),
                                ),
                                Text(
                                  "William,",
                                  style: context.general.textTheme.bodyMedium
                                      ?.copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 32,
                            width: 100,
                            decoration: BoxDecoration(
                                color: context.general.colorScheme.secondary,
                                borderRadius:
                                    context.border.normalBorderRadius),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color.fromRGBO(53, 55, 58, 1),
                    ),
                    Padding(
                      padding: context.padding.normal,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Evente Dair",
                            style: context.general.textTheme.bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.01,
                          ),
                          Text(
                            _exampleText,
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: context.general.colorScheme.secondary,
                              ),
                              SizedBox(
                                width: context.general.mediaSize.width * 0.01,
                              ),
                              Text(
                                "Allianz Arena Stadium",
                                style: context.general.textTheme.bodyMedium
                                    ?.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: context
                                            .general.colorScheme.secondary),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          Text(
                            "Evente Kuralları",
                            style: context.general.textTheme.bodyLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.01,
                          ),
                          Text(
                            _exampleText2,
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomElevatedButton(
                              textColor:
                                  context.general.colorScheme.onBackground,
                              title: "Evente Katıl",
                              onPressed: () {},
                              color: context.general.colorScheme.secondary,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconName,
  });
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(24, 25, 33, .4), shape: BoxShape.circle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              iconName,
            ),
          ),
        ],
      ), // Özel başlık eklemek için burayı özelleştirebilirsiniz
    );
  }
}
