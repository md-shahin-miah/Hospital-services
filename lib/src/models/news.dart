import 'dart:convert';

class News {
    News({
        required this.id,
        required this.title,
        required this.date,
        required this.image,
        required this.content,
    });

    String? id;
    String? title;
    String? date;
    String? image;
    String? content;

  factory News.fromRawJson(String str) =>
      News.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  News.fromJson(Map<String, dynamic> json) {
    this.id = json["id"] as String;
    this.title = json["title"] as String;
    this.date = json["date"] as String;
    this.image = json["image"] as String;
    this.content = json["content"] as String;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "date": date,
        "image": image,
        "content": content,
      };
}