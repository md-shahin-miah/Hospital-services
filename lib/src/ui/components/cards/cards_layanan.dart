

import 'package:flutter/material.dart';

import '../../../models/service.dart';
import '../../pages/layanan/page_layanan_detail.dart';



class LayananButtonsWidget extends StatelessWidget {
  final List<Service> list;

  LayananButtonsWidget({required this.list}) {
    assert(list != null);
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 100,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ServiceButtonItem(
                caption: list[index].nama!,
                image: list[index].image!,
                onClick: () {},
                layanan: list[index],
              );
            }),
      );
}

class ServiceButtonItem extends StatelessWidget {
  final String caption;
  final String? image;
  final VoidCallback? onClick;
  final Service layanan;

  const ServiceButtonItem(
      {required this.caption,
      required this.image,
      this.onClick,
      required this.layanan});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Material(
          color: Colors.black,
          child: InkWell(
            child: Container(
              width: 150,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.8), BlendMode.dstATop),
                    image: AssetImage(image!)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                child: Text(
                  caption,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ServiceDetailPage(
                    service: layanan,
                )
              ),
            );
          },
        ),
      )
    );
  }
}
