import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:stolk_/widget/search_bar_widget.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({Key? key}) : super(key: key);

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  List<int> selectedItems = [];
  List<String> itemList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  void toggleItem(int index) {
    setState(() {
      if (selectedItems.contains(index)) {
        selectedItems.remove(index); // Öğeyi listeden çıkar
      } else {
        selectedItems.add(index); // Öğeyi listeye ekle
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    List<int> selectedIndexs = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Katılımcı Ekle",
            style: context.general.textTheme.bodyLarge
                ?.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "İlerle",
                  style: context.general.textTheme.bodyLarge
                      ?.copyWith(color: context.general.colorScheme.secondary),
                ))
          ],
        ),
        body: Padding(
          padding: context.padding.normal,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SearchBarWidget(searchController: _searchController),
              SizedBox(
                height: context.general.mediaSize.height * 0.02,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: context.general.colorScheme.onBackground),
                  color: context.general.colorScheme.onSecondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text("KATILIMCI LİSTESİ"),
              ),
              SizedBox(
                height: context.general.mediaSize.height * 0.02,
              ),
              Container(
                  height: context.general.mediaSize.height * 0.65,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: context.general.colorScheme.onBackground),
                    color: context.general.colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView.builder(
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedItems.contains(index);

                      return GestureDetector(
                        onTap: () {
                          print("object");
                          toggleItem(index); // Öğeyi ekle veya çıkar
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/bf/34/9b/bf349bb7a4dd0c18acf35fe012667a6f.jpg"),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "BATUHANKURT",
                                        style: context
                                            .general.textTheme.bodyMedium
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: 60,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 6),
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                31, 33, 46, .4),
                                            borderRadius: context
                                                .border.normalBorderRadius,
                                            border: Border.all(
                                                width: 1,
                                                color: context.general
                                                    .colorScheme.onBackground)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              style: context
                                                  .general.textTheme.bodySmall
                                                  ?.copyWith(
                                                      fontSize: 10,
                                                      color: Colors.white),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(31, 33, 46, .4),
                                      borderRadius:
                                          context.border.normalBorderRadius,
                                      border: Border.all(
                                          width: 2,
                                          color: isSelected
                                              ? context
                                                  .general.colorScheme.secondary
                                              : context.general.colorScheme
                                                  .onBackground)),
                                )
                              ],
                            ),
                            const Divider(
                              height: 22,
                            )
                          ],
                        ),
                      );
                    },
                  )
                  // child: ListView.builder(
                  //   // shrinkWrap: true,
                  //   // physics: const NeverScrollableScrollPhysics(),
                  //   itemCount: 12,
                  //   itemBuilder: (context, index) {
                  //     bool isSelected = selectedIndexs.contains(index);

                  //     // İndis seçilmiş mi kontrolü

                  //     return Padding(
                  //       padding: const EdgeInsets.all(6.0),
                  //       child: GestureDetector(
                  //         onTap: () {
                  //           setState(() {
                  //             setState(() {
                  //               if (isSelected) {
                  //                 selectedIndexs.remove(index);
                  //               } else {
                  //                 selectedIndexs.add(index);
                  //               }
                  //             });
                  //           });
                  //         },
                  //         child: Column(
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 const CircleAvatar(
                  //                   backgroundImage: AssetImage(
                  //                       "assets/image/example/match_example_image.png"),
                  //                 ),
                  //                 const SizedBox(
                  //                   width: 12,
                  //                 ),
                  //                 Expanded(
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     children: [
                  //                       Text(isSelected.toString()),
                  //                       Text(
                  //                         "BATUHANKURT",
                  //                         style: context
                  //                             .general.textTheme.bodyMedium
                  //                             ?.copyWith(
                  //                                 fontWeight: FontWeight.bold,
                  //                                 fontSize: 12),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 4,
                  //                       ),
                  //                       Container(
                  //                         width: 60,
                  //                         padding: const EdgeInsets.symmetric(
                  //                             vertical: 3, horizontal: 6),
                  //                         decoration: BoxDecoration(
                  //                             color: const Color.fromRGBO(
                  //                                 31, 33, 46, .4),
                  //                             borderRadius: context
                  //                                 .border.normalBorderRadius,
                  //                             border: Border.all(
                  //                                 width: 1,
                  //                                 color: context.general
                  //                                     .colorScheme.onBackground)),
                  //                         child: Row(
                  //                           mainAxisAlignment:
                  //                               MainAxisAlignment.center,
                  //                           children: [
                  //                             Image.asset(
                  //                               "assets/image/icons/cup_icon.png",
                  //                               height: 10,
                  //                             ),
                  //                             const SizedBox(
                  //                               width: 4,
                  //                             ),
                  //                             Text(
                  //                               "2,356",
                  //                               style: context
                  //                                   .general.textTheme.bodySmall
                  //                                   ?.copyWith(
                  //                                       fontSize: 10,
                  //                                       color: Colors.white),
                  //                             )
                  //                           ],
                  //                         ),
                  //                       )
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 Container(
                  //                   height: 16,
                  //                   width: 16,
                  //                   decoration: BoxDecoration(
                  //                       color:
                  //                           const Color.fromRGBO(31, 33, 46, .4),
                  //                       borderRadius:
                  //                           context.border.normalBorderRadius,
                  //                       border: Border.all(
                  //                           width: 2,
                  //                           color: selectedIndexs.contains(index)
                  //                               ? context
                  //                                   .general.colorScheme.secondary
                  //                               : context.general.colorScheme
                  //                                   .onBackground)),
                  //                 )
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 22,
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),

                  )
            ],
          ),
        ));
  }
}
