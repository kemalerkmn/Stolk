import 'package:flutter/material.dart';

class MatchPageCandidateModel {
  String name;
  String job;
  String city;
  String image;
  List<Color> color;

  MatchPageCandidateModel({
    required this.name,
    required this.job,
    required this.city,
    required this.image,
    required this.color,
  });
}

final List<MatchPageCandidateModel> candidates = [
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/46/83/45/4683450f347820225db0eee9e792ecd8.jpg",
    name: 'Maria, 23',
    job: 'Developer',
    city: 'Areado',
    color: const [Color(0xFFFF3868), Color(0xFFFFB49A)],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/c9/ff/1c/c9ff1c449e5e28b608abd76c25cb4d67.jpg",
    name: 'Icard, 30',
    job: 'Developer',
    city: 'İstanbul',
    color: const [
      Color(0xFFFFB49A),
      Color(0xFFFF3868),
    ],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/d6/22/b1/d622b1039175f2f9327aaf6315afe969.jpg",
    name: 'Ellia, 20',
    job: 'Manager',
    city: 'New York',
    color: const [Color(0xFF736EFE), Color(0xFF62E4EC)],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/bd/9f/a3/bd9fa3d12ded554230feb37ef7225562.jpg",
    name: 'Leraiia, 27',
    job: 'Manager',
    city: 'New York',
    color: const [
      Color(0xFF62E4EC),
      Color(0xFF736EFE),
    ],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/56/3b/b1/563bb1879831ec868dd8d3d7823e07b9.jpg",
    name: 'Lollye, 30',
    job: 'Engineer',
    city: 'London',
    color: const [Color(0xFF2F80ED), Color(0xFF56CCF2)],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/f5/b4/03/f5b4034ebc3a95334f4cecd89be058aa.jpg",
    name: 'Ruyred, 25',
    job: 'Designer',
    city: 'Tokyo',
    color: const [Color(0xFF0BA4E0), Color(0xFFA9E4BD)],
  ),
  MatchPageCandidateModel(
    image:
        "https://i.pinimg.com/originals/22/5b/e4/225be402cac96f9b6fadcacb54cb5f88.jpg",
    name: 'Lewis, 28',
    job: 'Designer',
    city: 'Ankara',
    color: const [
      Color(0xFFA9E4BD),
      Color(0xFF0BA4E0),
    ],
  ),
];
