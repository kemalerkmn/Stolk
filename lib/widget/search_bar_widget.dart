import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/custom_icon_button.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
            onTap: () {},
            icon: const Icon(
              Icons.search,
              size: 20,
              color: Colors.grey,
            )),
        SizedBox(
          width: context.general.mediaSize.width * .03,
        ),
        Expanded(
            child: SizedBox(
                height: 38,
                child: TextField(
                  controller: _searchController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(hintText: "Ara"),
                )))
      ],
    );
  }
}
