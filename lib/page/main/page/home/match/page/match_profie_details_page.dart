import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/match/widget/match_card_widget.dart';

import '../../../../../../widget/custom_icon_button.dart';

class MatchProfileDetailsPage extends StatelessWidget {
  const MatchProfileDetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            "MATCH",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            CustomIconButton(
              onTap: () {},
              icon: Image.asset("assets/image/icons/cup_icon.png"),
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/filter_icon.svg",
                  height: 25,
                ))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: ListView(
            children: [
              SizedBox(
                height: context.general.mediaSize.height * 0.65,
                child: Stack(
                  children: [
                    Container(
                      height: context.general.mediaSize.height * 0.65,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: context.general.colorScheme.primary,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/image/example/match_example_image.png",
                              ))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: IgnorePointer(
                        ignoring:
                            true, // Tıklamaları devre dışı bırakmak için 'true' yapın

                        child: Container(
                          height: context.general.mediaSize.height * 0.12,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.topCenter,
                                  colors: [
                                Color.fromRGBO(24, 25, 33, 0),
                                Color.fromRGBO(24, 25, 33, 1)
                              ])),
                        ),
                      ),
                    ),
                    Padding(
                      padding: context.padding.low,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  height: 2,
                                  width: context.general.mediaSize.width / 5,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Emma, 25",
                            style: TextStyle(
                              color: context.general.colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.01,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        context.general.colorScheme.secondary),
                              ),
                              SizedBox(
                                width: context.general.mediaSize.width * 0.01,
                              ),
                              Text(
                                "8 km uzaklıkla",
                                style: context.general.textTheme.bodySmall
                                    ?.copyWith(fontSize: 10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.005,
                          ),
                          Wrap(
                              children: List.generate(
                                  hobbies.length,
                                  (index) => Padding(
                                        padding: const EdgeInsets.only(
                                            right: 4.0, top: 8),
                                        child:
                                            HobiesWidget(title: hobbies[index]),
                                      ))),
                          SizedBox(
                            height: context.general.mediaSize.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.01,
              ),
              Container(
                padding: context.padding.low,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1.5,
                        color: context.general.colorScheme.onBackground),
                    color: context.general.colorScheme.onSecondary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Birkaç Kelimeyle",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text(
                        "Spor yapmayı severim, kediler ilgi alanım. Sohbeti güzelinsanlar yazsın.",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text("ig: batuhanland",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.01,
              ),
              Container(
                padding: context.padding.low,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1.5,
                        color: context.general.colorScheme.onBackground),
                    color: context.general.colorScheme.onSecondary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hakkında",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text("Yürüyüş ve sırt çantası",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text("Uçak gezisi",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal))
                  ],
                ),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.01,
              ),
              Container(
                padding: context.padding.low,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1.5,
                        color: context.general.colorScheme.onBackground),
                    color: context.general.colorScheme.onSecondary),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bilgilerim",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text("24 Yaş",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: context.general.mediaSize.height * 0.01,
                    ),
                    Text("Moda Tasarım",
                        style: context.general.textTheme.bodyMedium?.copyWith(
                            color: context.general.colorScheme.onSurface,
                            fontWeight: FontWeight.normal))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
