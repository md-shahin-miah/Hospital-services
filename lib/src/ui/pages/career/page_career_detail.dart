import 'package:flutter/material.dart';

import '../../../models/career.dart';


class CareerDetailPage extends StatefulWidget {
  final Career? event;

  const CareerDetailPage({Key? key, this.event}) : super(key: key);

  @override
  _CareerDetailPageState createState() => _CareerDetailPageState();
}

class _CareerDetailPageState extends State<CareerDetailPage> {
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
                widget.event!.image!,
                fit: BoxFit.cover,
              ))),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Chip(
                    padding: EdgeInsets.all(0),
                    backgroundColor: Colors.deepPurple,
                    label:
                        Text('CAREER', style: TextStyle(color: Colors.white)),
                  ),
                  Text(
                    widget.event!.name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text("8 August 2020", style: TextStyle(color: Colors.grey)),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus purus vitae pulvinar fermentum. Suspendisse vulputate at diam eget rhoncus. Maecenas vel gravida nisl. Etiam faucibus nibh eu orci pharetra placerat. Donec quis arcu ut orci pellentesque scelerisque. Etiam rutrum et sapien et posuere. Nam accumsan lorem lacus, euismod pretium metus dignissim eu. Integer in felis sem. Vivamus nec massa lorem. Etiam imperdiet leo ut libero posuere interdum. Etiam varius magna quis nisl egestas, porta porta nunc congue. Suspendisse in malesuada nisl. Quisque rutrum cursus varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rhoncus purus vitae pulvinar fermentum. Suspendisse vulputate at diam eget rhoncus. Maecenas vel gravida nisl. Etiam faucibus nibh eu orci pharetra placerat. Donec quis arcu ut orci pellentesque scelerisque. Etiam rutrum et sapien et posuere. Nam accumsan lorem lacus, euismod pretium metus dignissim eu. Integer in felis sem. Vivamus nec massa lorem. Etiam imperdiet leo ut libero posuere interdum. Etiam varius magna quis nisl egestas, porta porta nunc congue. Suspendisse in malesuada nisl. Quisque rutrum cursus varius."),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
