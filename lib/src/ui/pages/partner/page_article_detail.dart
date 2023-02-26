import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../models/event.dart';
import '../../../models/news.dart';
import '../../widgets/home/widget_home_news.dart';

class ArticleDetailPage extends StatefulWidget {
  final Event? event;
  final News? news;

  const ArticleDetailPage({Key? key, this.event, this.news}) : super(key: key);

  @override
  _ArticleDetailPageState createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                widget.event != null
                    ? widget.event!.image
                    : widget.news!.image!,
                fit: BoxFit.cover,
              ))),
          SliverToBoxAdapter(
            child: Container(
                child: widget.news == null
                    ? Container(
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Chip(
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.deepPurple,
                              label: Text('EVENT & PROMO',
                                  style: TextStyle(color: Colors.white)),
                            ),
                            Text(
                              widget.event!.name,
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text("${widget.event!.date}",
                                style: const TextStyle(color: Colors.grey)),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              child: Text(widget.event!.description),
                            )
                          ],
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),

                            child: Column(

                              children: [
                                const Chip(
                                  padding: EdgeInsets.all(0),
                                  backgroundColor: colorPrimary,
                                  label: Text('NEWS',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                Text(
                                  widget.news!.title!,
                                  style: const TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                Text(widget.news!.date!,
                                    style: const TextStyle(color: Colors.grey)),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text(widget.news!.content!),
                                ),
                                const SizedBox(height: 30),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              const Text(
                                "- OTHER NEWS -",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: colorPrimary),
                              ),
                              HomeNews(),
                            ],
                          )
                        ],
                      )),
          )
        ],
      ),
    );
  }
}
