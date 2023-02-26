import 'package:flutter/material.dart';
import 'package:hospital_management/src/models/service.dart';


class ServiceDetailPage extends StatefulWidget {
  final Service? service;

  const ServiceDetailPage({Key? key, this.service}) : super(key: key);

  @override
  _ServiceDetailPageState createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {
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
                widget.service!.image!,
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
                    label: Text('FACILITY',
                        style: TextStyle(color: Colors.white)),
                  ),
                  Text(
                    widget.service!.name!,
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text("8 Augusts 2020", style: TextStyle(color: Colors.grey)),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
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
