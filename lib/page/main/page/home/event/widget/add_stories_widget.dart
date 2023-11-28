import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AddStoriesWidget extends StatelessWidget {
  const AddStoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 68,
      child: Stack(children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2, color: context.general.colorScheme.onBackground),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/3e/86/cb/3e86cb8ddc062561196b14fcc7cd60b0.jpg")),
              shape: BoxShape.circle),
        ),
        Positioned(
          bottom: 2,
          right: 2,
          child: Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
                color: context.general.colorScheme.background,
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: 4,
          right: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 0, top: 0),
            child: Container(
              width: 21,
              height: 21,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: context.general.colorScheme.onBackground),
                  color: context.general.colorScheme.secondary,
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.add,
                size: 16,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
