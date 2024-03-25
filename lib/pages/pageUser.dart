import 'package:flutter/material.dart';
//Packages
import 'package:card_swiper/card_swiper.dart';

class PageUser extends StatelessWidget {
  PageUser({super.key});

  List<String> images = [
    "https://wallpaperaccess.com/full/6790193.jpg",
    "https://cdn-1.motorsport.com/images/mgl/6gpWEkn0/s8/sergio-perez-red-bull-racing-1.jpg",
    "https://d3cm515ijfiu6w.cloudfront.net/wp-content/uploads/2022/05/29182007/sergio-perez-stands-on-red-bull-monaco-2022-planetf1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
