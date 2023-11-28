import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BaseProfilPage extends StatelessWidget {
  const BaseProfilPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    String text =
        """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""";

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: false,
          title: Text(
            title,
            style: context.general.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: context.padding.normal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kurallar",
                style: context.general.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.general.colorScheme.secondary),
              ),
              const Divider(
                height: 28,
              ),
              Text(
                text,
              )
            ],
          ),
        ));
  }
}
