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
List<TitleModel> liveModelList = [
  TitleModel(
      title: "Öne Çıkan",
      image: "assets/icons/live_icons/highlights_icons.svg"),
  TitleModel(
    title: "Popüler",
    image: "assets/icons/live_icons/populer_icons.svg",
  ),
  TitleModel(
    title: "Takipler",
    image: "assets/icons/live_icons/follow_icons.svg",
  ),
  TitleModel(
    title: "Yeni",
    image: "assets/icons/live_icons/new_icons.svg",
  ),
];
List<TitleModel> messageListModel = [
  TitleModel(
    title: "Arkadaşlar",
  ),
  TitleModel(
    title: "Gruplar",
  ),
  TitleModel(
    title: "Event",
  ),
  TitleModel(
    title: "Match",
  ),
];
List<TitleModel> profileTitleModelList = [
  TitleModel(
    title: "Event",
    image: "assets/icons/menu_icon/event_icon.svg",
  ),
  TitleModel(
    title: "Canlı Yayın",
    image: "assets/icons/menu_icon/live_icon.svg",
  ),
  TitleModel(
    title: "Match",
    image: "assets/icons/menu_icon/match_icon.svg",
  ),
  TitleModel(
    title: "Ödüller",
    image: "assets/icons/profile_icons/deal_icon.svg",
  ),
  TitleModel(
    title: "Ayarlar",
    image: "assets/icons/profile_icons/settings_icon.svg",
  ),
  TitleModel(
    title: "Destek ve Geri Bildirim",
    image: "assets/icons/profile_icons/support_icon.svg",
  ),
  TitleModel(
    title: "İçerik Dili",
    image: "assets/icons/profile_icons/language_icon.svg",
  ),
];
List<TitleModel> userProfileTitle = [
  TitleModel(
    title: "Event",
  ),
  TitleModel(
    title: "Canlı Yayın",
  ),
  TitleModel(
    title: "Hakkında",
  ),
];
List<TitleModel> eventTitleModelList = [
  TitleModel(
    title: "Öne Çıkan",
    image: "assets/icons/event_icon/featured_icon.svg",
  ),
  TitleModel(
    title: "Popüler",
    image: "assets/icons/event_icon/populer_icon.svg",
  ),
  TitleModel(
    title: "Takipler",
    image: "assets/icons/event_icon/follow_icon.svg",
  ),
  TitleModel(
    title: "Yeni",
    image: "assets/icons/event_icon/new_icon.svg",
  ),
];
