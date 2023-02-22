// To parse this JSON data, do
//
//     final fasilitas = fasilitasFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Fasilitas {
    Fasilitas({
        required this.id,
        required this.nama,
        required this.shortDesc,
        required this.deskripsi,
        required this.tanggal,
        required this.image,
    });

    int id;
    String nama;
    String shortDesc;
    String deskripsi;
    DateTime tanggal;
    String image;

    factory Fasilitas.fromRawJson(String str) => Fasilitas.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Fasilitas.fromJson(Map<String, dynamic> json) => Fasilitas(
        id: json["id"],
        nama: json["nama"],
        shortDesc: json["short_desc"],
        deskripsi: json["deskripsi"],
        tanggal: DateTime.parse(json["tanggal"]),
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "short_desc": shortDesc,
        "deskripsi": deskripsi,
        "tanggal": tanggal.toIso8601String(),
        "image": image,
    };
}
