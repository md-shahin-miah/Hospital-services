import 'package:flutter/material.dart';

import '../../../models/career.dart';
import '../../pages/career/page_career_detail.dart';



class CareerButtonsWidget extends StatelessWidget {
  final List<Career> list;

  CareerButtonsWidget({required this.list}) {
    assert(list != null);
  }

  @override
  Widget build(BuildContext context) => Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return CareerButtonItem(
                caption: list[index].name,
                image: list[index].image,
                onClick: () {},
                event: list[index],
              );
            }),
      );
}

class CareerButtonItem extends StatelessWidget {
  final String? caption;
  final String image;
  final VoidCallback? onClick;
  final Career? event;

  const CareerButtonItem(
      {required this.caption,
      required this.image,
      this.onClick,
      required this.event});

  Function _processOnTap(Function onClick) {
    return onClick ?? () {};
  }

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
              height: 200,
              width: 300,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(

                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    image: AssetImage(image)),

              ),
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        caption!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        event!.shortDesc!,
                        style: TextStyle(),
                      )
                    ],
                  )),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CareerDetailPage(
                          event: event,
                        )),
              );
            },
          ),
        ));
  }
}
