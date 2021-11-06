import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imgList = [
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1573755959/a736cac5-1b0f-4407-a5b4-ae886ad52cad',
  'http://res.cloudinary.com/dz5jygk3x/image/upload/v1537292534/f663b474-78d5-409c-bdb1-a23eddcae45e',
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1537460901/0f1e9da7-ed22-46ca-80bf-c95394bb20cc',
  'http://res.cloudinary.com/dz5jygk3x/image/upload/v1537292484/0720c467-52d5-4456-bdba-761bb805987a',
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1608816217/173856b6-cf04-4fe5-9970-3b40da5c843e',
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1608747321/bfac0838-383c-4eea-ae41-0f396a4cbf8a',
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1608743251/1728dc62-ce44-479b-8130-581d0828f85f',
  'http://res.cloudinary.com/hkctpkaed/image/upload/v1608743841/d516a25a-ce12-4129-ae69-355546f6a3c1',
  'http://res.cloudinary.com/dz5jygk3x/image/upload/v1537292575/1d6f6842-8f62-43aa-8967-20c7d11fa332',
];

List<Widget> tripleCarousel(List<String> imgList) {
  final List<Widget> listItems = List.empty(growable: true);

  for (var i = 0; i <= imgList.length - 1; i += 3) {
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
      width: 1460,
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
              items: tripleCarousel(imgList),
            ),
          ),
        ],
      ),
    );
  }
}
