import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 66,
      decoration: BoxDecoration(
          color: context.general.colorScheme.secondary, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(1.5),
        child: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
              color: context.general.colorScheme.background,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/93/ba/08/93ba0828119f93f319d8876f2505c316.jpg"))),
            ),
          ),
        ),
      ),
    );
  }
}
