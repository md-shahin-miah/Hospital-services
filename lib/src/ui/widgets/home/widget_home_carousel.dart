
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import '../../../constants/constant.dart';
import '../../components/cards/cards_carousel.dart';
import '../../pages/about/page_about_app.dart';
final List<String> imgLists = [
  'assets/images/hsp1.jpg',
  'assets/images/hsp2.jpg',
  'assets/images/hsp3.jpg',
  'assets/images/hsp4.jpg'

];
class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        child: CarouselSlider.builder(
          itemCount: imgLists.length,
          options: CarouselOptions(
            aspectRatio: 1.5,
            enlargeCenterPage: true,
            autoPlay: true,
          ),
          itemBuilder: (ctx, index, realIdx) {
            return  Stack(
              children: [
                Container(
                  height: 250,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgLists[index]),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: const Text(
                          "Overview of the Famous Hospital",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 15.0,
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                        )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: const Text(
                          "The Famous is the best hospital in Sylhet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            shadows: [
                              Shadow(
                                blurRadius: 15.0,
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(colorPrimary),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Colors.grey)))),

                      onPressed: (){
                        print("floating pressed!");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutDashboard()),
                        );
                      },
                      child: const Text('Read',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      )
                  ),
                ),
              ],
            );
          },
        ));
  }
}