import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_elevated_button.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key, required this.pageController}) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: context.padding.normal,
      child: Column(
        children: [
          const Text("İlk fotoğraf kendi fotoğrafın olmalı"),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(flex: 2, child: PictureSelectedBigWidget()),
              SizedBox(
                width: context.general.mediaSize.width * 0.02,
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: context.general.mediaSize.height * 0.4,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PictureSelected(),
                      PictureSelected(),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: context.general.mediaSize.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(child: PictureSelected()),
              SizedBox(
                width: context.general.mediaSize.width * 0.02,
              ),
              const Flexible(child: PictureSelected()),
              SizedBox(
                width: context.general.mediaSize.width * 0.02,
              ),
              Flexible(
                child: Container(
                  height: context.general.mediaSize.height * 0.195,
                  // width: context.general.mediaSize.width / 3.44,
                  decoration: BoxDecoration(
                    color: context.general.colorScheme.onSecondary,
                    border: Border.all(
                        width: 1,
                        color: context.general.colorScheme.onBackground),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: context.padding.low,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1,
                                      color: context
                                          .general.colorScheme.onBackground),
                                  color: const Color.fromRGBO(24, 25, 33, .4),
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.add,
                                size: 16,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
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

class PictureSelectedBigWidget extends StatelessWidget {
  const PictureSelectedBigWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.general.mediaSize.height * 0.4,
      // width: context.general.mediaSize.width / 1.82,
      decoration: BoxDecoration(
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/originals/3e/86/cb/3e86cb8ddc062561196b14fcc7cd60b0.jpg",
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: context.padding.low,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                      color: const Color.fromRGBO(24, 25, 33, .4),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.close,
                    size: 16,
                  )),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                      color: const Color.fromRGBO(24, 25, 33, .4),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text("Ana Fotoğraf")),
            ),
          ],
        ),
      ),
    );
  }
}

class PictureSelected extends StatelessWidget {
  const PictureSelected({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.general.mediaSize.height * 0.195,
      // width: context.general.mediaSize.width / 3.44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 1, color: context.general.colorScheme.onBackground),
          image: const DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/originals/3e/86/cb/3e86cb8ddc062561196b14fcc7cd60b0.jpg",
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: context.padding.low,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1,
                          color: context.general.colorScheme.onBackground),
                      color: const Color.fromRGBO(24, 25, 33, .4),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.close,
                    size: 16,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
