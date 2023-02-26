// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Event {
  Event({
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

  factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"],
        name: json["name"],
        shortDesc: json["short_desc"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": name,
        "short_desc": shortDesc,
        "description": description,
        "date": date.toIso8601String(),
        "image": image,
      };
}
