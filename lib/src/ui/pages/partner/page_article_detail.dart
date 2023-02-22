import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../../models/event.dart';
import '../../../models/news.dart';
import '../../widgets/home/widget_home_news.dart';

class ArticleDetailPage extends StatefulWidget {
  final Event? event;
  final News? news;

  const ArticleDetailPage({Key? key,  this.event,  this.news}) : super(key: key);

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
              iconTheme: IconThemeData(color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                widget.event != null ? widget.event!.image! : widget.news!.image!,
                fit: BoxFit.cover,
              ))),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.all(20),
                child: widget.news == null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Chip(
                            padding: EdgeInsets.all(0),
                            backgroundColor: Colors.deepPurple,
                            label: Text('EVENT & PROMO',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text(
                            widget.event!.nama!,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text("${widget.event!.tanggal!}",
                              style: TextStyle(color: Colors.grey)),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(widget.event!.deskripsi!),
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Chip(
                            padding: EdgeInsets.all(0),
                            backgroundColor: colorPrimary,
                            label: Text('BERITA',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text(
                            widget.news!.title!,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(widget.news!.date!,
                              style: TextStyle(color: Colors.grey)),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(widget.news!.content!),
                          ),
                          SizedBox(height: 50),
                          Column(
                            children: [
                              Text(
                                "- BERITA LAIN -",
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
