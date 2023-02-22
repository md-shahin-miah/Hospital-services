// To parse this JSON data, do
//
//     final layanan = layananFromJson(jsonString);

import 'dart:convert';

class Service {
  Service({
    required this.id,
    required this.nama,
    required this.shortDesc,
    required this.deskripsi,
    required this.image,
  });

  int? id;
  String? nama;
  String? shortDesc;
  String? deskripsi;
  DateTime? tanggal;
  String? image;

  factory Service.fromRawJson(String str) => Service.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["id"],
        nama: json["nama"],
        shortDesc: json["short_desc"],
        deskripsi: json["deskripsi"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "short_desc": shortDesc,
        "deskripsi": deskripsi,
        "image": image,
      };
}
