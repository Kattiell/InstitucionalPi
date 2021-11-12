import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imgList = [
  'images/images_carousel/1.jpeg',
  'images/images_carousel/2.jpeg',
  'images/images_carousel/3.jpeg',
  'images/images_carousel/4.jpeg',
  'images/images_carousel/5.jpeg',
  'images/images_carousel/6.jpeg',
  'images/images_carousel/7.jpeg',
  'images/images_carousel/8.jpeg',
  'images/images_carousel/9.jpeg',
  'images/images_carousel/3.jpeg',
  'images/images_carousel/6.jpeg',
  'images/images_carousel/9.jpeg',
];



List<Widget> QuadraCarousel(List<String> imgList) {
  final List<Widget> listItems = List.empty(growable: true);

  for (var i = 0; i <= imgList.length - 1; i += 4) {
    listItems.add(Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Image.network(imgList[i], fit: BoxFit.cover, width: 350),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Image.network(imgList[i + 1], fit: BoxFit.cover, width: 350),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Image.network(imgList[i + 2], fit: BoxFit.cover, width: 350),
            ],
          ),
        ),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Image.network(imgList[i + 3], fit: BoxFit.cover, width: 350),
            ],
          ),
        ),
      ],
    ));
  }
  return listItems;
}

class CarouselSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
         color: Color(0xFFB4C56C).withOpacity(0.0),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          //color: Colors.black38 //black26
          ),
      width: 1560,
      child: Column(
        children: [
          Container(
            //color: Colors.black38,
            width: 1600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Parceiros',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 250,
                aspectRatio: 24 / 12,
                viewportFraction: 1,
                initialPage: 1,
                enableInfiniteScroll: true,
                reverse: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              ),
              items: QuadraCarousel(imgList),
            ),
          ),
        ],
      ),
    );
  }
}
