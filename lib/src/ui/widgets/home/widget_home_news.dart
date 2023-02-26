import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../models/news.dart';
import '../../components/cards/cards_news.dart';


class HomeNews extends StatefulWidget {
  @override
  _HomeNewsState createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {

  List<News> newsList = <News>[];

  void getDummyNews() async {
    var jsonData = await rootBundle.loadString("assets/json/news.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        newsList.add(News.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getDummyNews();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: SizedBox(
        height: 260,
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int id) {
            return NewsCards(
              news: newsList[id],
            );
          },
          itemCount: newsList == null ? 0 : newsList.length,
        )        
      ),
    );
  }
}