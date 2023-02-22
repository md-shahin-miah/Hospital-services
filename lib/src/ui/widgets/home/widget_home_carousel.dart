import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';


import '../../../constants/constant.dart';
import '../../components/cards/cards_carousel.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: [
          Carousel(
            boxFit: BoxFit.cover,
            images:[
              CarouselCards(),
              CarouselCards(),
              CarouselCards(),
              CarouselCards(),
            ],
            autoplay: false,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomLeft,
            dotIncreasedColor: colorPrimary,
            dotSpacing: 18,
          ),
          
        ],
      )
    );
  }
}