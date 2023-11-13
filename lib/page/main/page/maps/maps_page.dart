// ignore_for_file: prefer_is_empty

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kartal/kartal.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => MapsPageState();
}

class MapsPageState extends State<MapsPage> {
  GoogleMapController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.general.mediaSize.height,
        width: context.general.mediaSize.width,
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                this.controller = controller;
              },
              initialCameraPosition: const CameraPosition(
                target: LatLng(39.9334, 32.8597),
                zoom: 12.0,
              ),
            ),
            const SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: "Event ara..",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            )),
            Positioned(
                bottom: 100,
                right: 0,
                left: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: context.border.normalBorderRadius,
                        color: context.general.colorScheme.primary),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: context.border.lowBorderRadius,
                          child: Image.network(
                            "https://i.pinimg.com/originals/de/77/39/de7739a7d543ffccafbdb1763fe5de87.jpg",
                            height: 72,
                            width: 72,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: context.general.mediaSize.width * 0.03,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Drake Concert Event",
                                style: context.general.textTheme.bodyLarge
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width:
                                        context.general.mediaSize.width * 0.01,
                                  ),
                                  Text(
                                    "Allianz Arena Stadium",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(
                                            color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.alarm_sharp,
                                    color: Colors.grey,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width:
                                        context.general.mediaSize.width * 0.009,
                                  ),
                                  Text(
                                    "18.012.2024 / 22.00",
                                    style: context.general.textTheme.bodyMedium
                                        ?.copyWith(
                                            color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color: context.general.colorScheme.secondary,
                                borderRadius: context.border.lowBorderRadius),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
