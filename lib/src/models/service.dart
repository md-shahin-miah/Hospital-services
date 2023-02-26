// To parse this JSON data, do
//
//     final layanan = layananFromJson(jsonString);

import 'dart:convert';

class Service {
  Service({
    required this.id,
    required this.name,
    required this.shortDesc,
    required this.description,
    required this.image,
  });

  int? id;
  String? name;
  String? shortDesc;
  String? description;
  DateTime? date;
  String? image;

  factory Service.fromRawJson(String str) => Service.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["id"],
        name: json["name"],
        shortDesc: json["short_desc"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "short_desc": shortDesc,
        "description": description,
        "image": image,
      };
}
