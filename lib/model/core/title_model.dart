// ignore_for_file: public_member_api_docs, sort_constructors_first
class TitleModel {
  String title;
  String? image;
  TitleModel({
    required this.title,
    this.image,
  });
}

List<TitleModel> titleModelList = [
  TitleModel(
    title: "Hepsi",
  ),
  TitleModel(
    title: "Canlı Yayın",
    image: "assets/icons/menu_icon/live_icon.svg",
  ),
  TitleModel(
    title: "Event",
    image: "assets/icons/menu_icon/event_icon.svg",
  ),
  TitleModel(
    title: "Match",
    image: "assets/icons/menu_icon/match_icon.svg",
  ),
];
