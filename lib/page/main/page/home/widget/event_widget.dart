import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/page/main/page/home/event/page/event_page_details.dart';

class EventWidget extends StatelessWidget {
  const EventWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventDetailsPage(),
              ));
        },
        child: SizedBox(
          width: context.general.mediaSize.width * 0.72,
          height: context.general.mediaSize.height / 4,
          child: Stack(children: [
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: context.general.mediaSize.height / 5,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: context.general.colorScheme.onBackground),
                  color: context.general.colorScheme.primary,
                  borderRadius: context.border.normalBorderRadius),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 17,
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/originals/dd/a0/6f/dda06fd7bc6ee37dbee5b72b0ed916fd.jpg"),
                        ),
                      ),
                      SizedBox(
                        width: context.general.mediaSize.width * 0.01,
                      ),
                      Column(
                        children: [
                          Text(
                            "Düzenleyen",
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(color: Colors.grey, fontSize: 8),
                          ),
                          Text(
                            "William",
                            style: context.general.textTheme.bodyMedium
                                ?.copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            "Allianz Arena Stadium",
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(color: Colors.grey, fontSize: 8),
                          ),
                          Text(
                            "Drake Concert Event",
                            style: context.general.textTheme.bodyMedium
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10),
                          ),
                          Text(
                            "18.012.2024 / 22.00",
                            style: context.general.textTheme.bodySmall
                                ?.copyWith(color: Colors.grey, fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Center(
                    child: Container(
                      height: context.general.mediaSize.height / 9.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: context.border.lowBorderRadius,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/8c/5b/1a/8c5b1a10c150c9893f18dbbcb1b49c85.jpg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 22, top: 6),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: context.general.colorScheme
                                                .onBackground),
                                        color: context
                                            .general.colorScheme.onSecondary,
                                        shape: BoxShape.circle),
                                    child: const Icon(
                                      Icons.favorite_border_outlined,
                                      size: 12,
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: context.general.colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    color: context.general.colorScheme.secondary,
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
