// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Career {
  Career({
    required this.id,
    required this.name,
    required this.shortDesc,
    required this.description,
    required this.date,
    required this.image,
  });

  int id;
  String name;
  String shortDesc;
  String description;
  DateTime date;
  String image;

  factory Career.fromRawJson(String str) => Career.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Career.fromJson(Map<String, dynamic> json) => Career(
        id: json["id"],
        name: json["name"],
        shortDesc: json["short_desc"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "short_desc": shortDesc,
        "description": description,
        "date": date.toIso8601String(),
        "image": image,
      };
}
