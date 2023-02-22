import 'dart:convert';

class Partner {
    Partner({
        required this.id,
        required this.partner,
        required this.logo,
    });

    String? id;
    String? partner;
    String? logo;

  factory Partner.fromRawJson(String str) =>
      Partner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  Partner.fromJson(Map<String, dynamic> json) {
    this.id = json["id"] as String;
    this.partner = json["partner"] as String;
    this.logo = json["logo"] as String;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": partner,
        "logo": logo,
      };
}
