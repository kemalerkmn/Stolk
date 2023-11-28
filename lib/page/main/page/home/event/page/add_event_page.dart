// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class AddEventPage extends StatelessWidget {
  const AddEventPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: AssetImage(
                  //     'assets/image/example/event_example_image3.png',
                  //   ),
                  // ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Center(
                          child: SvgPicture.asset(
                              "assets/icons/profile_icons/camera_icon.svg"),
                        ),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 68,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: context
                                        .general.colorScheme.onBackground),
                                color: context.general.colorScheme.onSecondary,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            width: double.infinity,
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    const CustomIconButton(
                                        color: Color.fromRGBO(31, 33, 46, 1),
                                        iconName:
                                            "assets/icons/bottom_icons/maps_icon2.svg"),
                                    SizedBox(
                                      width: context.general.mediaSize.width *
                                          0.02,
                                    ),
                                    const Text("Event Konumu"),
                                    const Spacer(),
                                    GestureDetector(
                                      child: Text(
                                        "Haritadan Seç",
                                        style: context
                                            .general.textTheme.bodySmall
                                            ?.copyWith(
                                                color: context.general
                                                    .colorScheme.secondary),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Container(
                            height: 44,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                    color: context
                                        .general.colorScheme.onBackground,
                                    width: 1,
                                  ),
                                  top: BorderSide(
                                    color: context
                                        .general.colorScheme.onBackground,
                                    width: 0,
                                  ),
                                  right: BorderSide(
                                    color: context
                                        .general.colorScheme.onBackground,
                                    width: 1,
                                  ),
                                  bottom: BorderSide(
                                    color: context
                                        .general.colorScheme.onBackground,
                                    width: 1,
                                  )),
                              color: context.general.colorScheme.onSecondary,
                            ),
                            width: double.infinity,
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("İzmir, Buca")),
                          ),
                          Container(
                            height: 44,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                      color: context
                                          .general.colorScheme.onBackground,
                                      width: 1,
                                    ),
                                    top: BorderSide(
                                      color: context
                                          .general.colorScheme.onBackground,
                                      width: 0,
                                    ),
                                    right: BorderSide(
                                      color: context
                                          .general.colorScheme.onBackground,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: context
                                          .general.colorScheme.onBackground,
                                      width: 1,
                                    )),
                                color: context.general.colorScheme.onSecondary,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            width: double.infinity,
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text("İzmir, Bornova")),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          const AddEventWidget(
                            title: "Event Başlığı",
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          const AddEventWidget(
                            title: "Event Açıklaması",
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          const AddEventWidget(
                            title: "Event Kuralları",
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tarih",
                                    style: context.general.textTheme.bodySmall
                                        ?.copyWith(
                                            color: context
                                                .general.colorScheme.secondary),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: context.general.colorScheme
                                                .onBackground),
                                        color: context
                                            .general.colorScheme.onSecondary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "18.10.2023",
                                      style:
                                          context.general.textTheme.bodySmall,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: context.general.mediaSize.width * 0.02,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Saat",
                                    style: context.general.textTheme.bodySmall
                                        ?.copyWith(
                                            color: context
                                                .general.colorScheme.secondary),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: context.general.colorScheme
                                                .onBackground),
                                        color: context
                                            .general.colorScheme.onSecondary,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "22:00",
                                      style:
                                          context.general.textTheme.bodySmall,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          Text(
                            "Yaş Sınırı",
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(
                                    color:
                                        context.general.colorScheme.secondary),
                          ),
                          Row(
                            children: List.generate(
                                5,
                                (index) => Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Container(
                                        height: 52,
                                        width: 52,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1,
                                              color: context.general.colorScheme
                                                  .onBackground),
                                          color: context
                                              .general.colorScheme.onSecondary,
                                        ),
                                        child: Center(
                                          child: Text("6+",
                                              style: context
                                                  .general.textTheme.bodyMedium
                                                  ?.copyWith(
                                                      color: context
                                                          .general
                                                          .colorScheme
                                                          .secondary)),
                                        ),
                                      ),
                                    )),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.02,
                          ),
                          SafeArea(
                            child: CustomElevatedButton(
                              textColor:
                                  context.general.colorScheme.onBackground,
                              title: "Event Oluştur",
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

class AddEventWidget extends StatelessWidget {
  const AddEventWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground),
          color: context.general.colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(20)),
      width: double.infinity,
      child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              const CustomIconButton(
                  color: Color.fromRGBO(31, 33, 46, 1),
                  iconName: "assets/icons/edit_icon.svg"),
              SizedBox(
                width: context.general.mediaSize.width * 0.02,
              ),
              Text(title),
            ],
          )),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconName,
    this.color,
  });
  final String iconName;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground),
          color: color ?? const Color.fromRGBO(24, 25, 33, .4),
          shape: BoxShape.circle),
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
