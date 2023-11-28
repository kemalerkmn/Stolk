import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/match/widget/match_card_widget.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: context.padding.normal,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const Center(child: Text("Tutkun Seni Rehber Etsin!")),
                SizedBox(
                  height: context.general.mediaSize.height * 0.015,
                ),
                Wrap(
                    children: List.generate(
                        hobbisesList.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, bottom: 8),
                              child: HobiesWidget(title: hobbisesList[index]),
                            ))),
                SizedBox(
                  height: context.general.mediaSize.height * 0.015,
                ),
                Center(
                  child: Text(
                    "Burç",
                    style: context.general.textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: context.general.mediaSize.height * 0.015,
                ),
                Wrap(
                    children: List.generate(
                        horoscopeList.length,
                        (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, bottom: 8),
                              child: HobiesWidget(title: horoscopeList[index]),
                            ))),
              ],
            ),
          ),
          SafeArea(
            child: CustomElevatedButton(
              color: context.general.colorScheme.secondary,
              title: "Devam",
              onPressed: () => pageController.nextPage(
                  duration: const Duration(microseconds: 500),
                  curve: Curves.easeInCubic),
              textColor: context.general.colorScheme.background,
            ),
          )
        ],
      ),
    ));
  }
}

List<String> hobbisesList = [
  "Yürüyüş ve sırt çantası",
  "Uçak Gezisi",
  "Uzun Süreli İlişki",
  "Moda tasarımı",
  "Spor hastası",
  "Uzun İlişki Ama Kısada Olur",
  "Kısa Süreli Eğlence",
  "Yeni Arkadaşlar",
  "Kısa İlişki Ama Uzunda Olur",
  "Henüz Karar Vermedim",
  "Mesajlaşmada İyiyim",
  "Ararım",
  "Video Sohbet",
  "Mesajlaşmada Kötüyüm",
  "Yüz Yüze",
  "Köpek",
  "Kedi",
  "Kuş"
];
List<String> horoscopeList = [
  "Oğlak",
  "Kova",
  "Balık",
  "Koç",
  "Boğa",
  "İkizler",
  "Yengeç",
  "Aslan",
  "Başak",
  "Akrep",
  "Yay",
];
