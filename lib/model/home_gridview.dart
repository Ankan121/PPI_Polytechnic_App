// To parse this JSON data, do
//
//     final homegridview = homegridviewFromJson(jsonString);

import 'dart:convert';

List<Homegridview> homegridviewFromJson(dynamic str) => List<Homegridview>.from((str as dynamic).map((x) => Homegridview.fromJson(x)));

String homegridviewToJson(List<Homegridview> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Homegridview {
  String? name;
  String? img;

  Homegridview({
    this.name,
    this.img,
  });

  factory Homegridview.fromJson(Map<String, dynamic> json) => Homegridview(
    name: json["name"],
    img: json["img"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "img": img,
  };
}
