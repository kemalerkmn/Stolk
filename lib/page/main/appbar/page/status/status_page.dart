import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/appbar/page/notification/notification_page.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

String text =
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""";

class _StatusPageState extends State<StatusPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ÖDÜLLER",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ));
                },
                icon: SvgPicture.asset(
                  "assets/icons/notifi_icon.svg",
                  height: 25,
                ))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: Column(
            children: [
              Center(
                  child: DolmaMiktariGosterge(
                daireRengi: context.general.colorScheme.onBackground,
                dolmaRengi: const Color.fromRGBO(255, 152, 1, 1),
                dolmaMiktari: 10,
              )),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Ödüle Kalan Süre Gün',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 152, 1, 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Text("Sıralama",
                          style: context.general.textTheme.bodyLarge?.copyWith(
                              color: index == 0
                                  ? const Color.fromRGBO(255, 152, 1, 1)
                                  : context.general.colorScheme.onSurface))),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Text("Haftanın Ödülü",
                          style: context.general.textTheme.bodyLarge?.copyWith(
                              color: index == 1
                                  ? const Color.fromRGBO(255, 152, 1, 1)
                                  : context.general.colorScheme.onSurface))),
                ],
              ),
              Divider(
                thickness: 1,
                height: 32,
                color: context.general.colorScheme.onBackground,
              ),
              Expanded(child: bodyStatusList[index]),
            ],
          ),
        ));
  }
}

List<Widget> bodyStatusList = [
  ListView.builder(
    itemCount: 12,
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: StatusWidget(
        indexto: index + 1,
      ),
    ),
  ),
  Text(text)
];

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
    required this.indexto,
  });
  final int indexto;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/image/example/status_expamle_image.png",
          height: 56,
          width: 82,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 8,
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
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 33, 46, .4),
                        borderRadius: context.border.normalBorderRadius,
                        border: Border.all(
                            width: 1,
                            color: context.general.colorScheme.onBackground)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/image/icons/cup_icon.png",
                          height: 10,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "2,356",
                          style: context.general.textTheme.bodySmall
                              ?.copyWith(fontSize: 10, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 33, 46, .4),
                        borderRadius: context.border.normalBorderRadius,
                        border: Border.all(
                            width: 1,
                            color: context.general.colorScheme.onBackground)),
                    child: Text(
                      "MVP",
                      style: context.general.textTheme.bodySmall
                          ?.copyWith(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Text(
          indexto.toString(),
          style: context.general.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color.fromRGBO(255, 152, 1, 1)),
        )
      ],
    );
  }
}

class DolmaMiktariGosterge extends StatelessWidget {
  final double dolmaMiktari; // Dolma miktarı yüzde cinsinden (0-100 arası)
  final double daireCapi; // Daire çapı
  final Color daireRengi; // Daire rengi
  final Color dolmaRengi; // Dolma rengi

  const DolmaMiktariGosterge({
    Key? key,
    required this.dolmaMiktari,
    this.daireCapi = 150.0,
    this.daireRengi = Colors.grey,
    this.dolmaRengi = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: daireCapi,
      height: daireCapi,
      child: CustomPaint(
        painter: _DolmaMiktariPainter(
          dolmaMiktari: dolmaMiktari,
          daireRengi: daireRengi,
          dolmaRengi: dolmaRengi,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '50 Gün',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: dolmaRengi,
                ),
              ),
              Text(
                '26.12.2024',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: context.general.colorScheme.onBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DolmaMiktariPainter extends CustomPainter {
  final double dolmaMiktari;
  final Color daireRengi;
  final Color dolmaRengi;

  _DolmaMiktariPainter({
    required this.dolmaMiktari,
    required this.daireRengi,
    required this.dolmaRengi,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = daireRengi
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6.0;

    final double radius = size.width / 2;
    canvas.drawCircle(Offset(radius, radius), radius - 1, paint);

    final Paint dolmaPaint = Paint()
      ..color = dolmaRengi
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    final double sweepAngle = 2 * pi * (dolmaMiktari / 100);
    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius - 1),
      -pi / 2,
      sweepAngle,
      false,
      dolmaPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
