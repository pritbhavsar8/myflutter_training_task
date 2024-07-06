
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class carouselSlider extends StatefulWidget {
  const carouselSlider({super.key});

  @override
  State<carouselSlider> createState() => _carouselSliderState();
}

class _carouselSliderState extends State<carouselSlider> {
  int initial = 0;
  List<String> image = ["assets/img/IMG_20191103_120414~2.jpg","assets/img/india map.png","assets/img/IMG_20191103_120414~2.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image[0]),
              ),
               ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image[1]),
              ),
               ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image[2]),
              )
            ],
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  initial = index;
                });
              },
              // autoPlay: true,
              aspectRatio: 1/1.4,
              autoPlayInterval: Duration(seconds: 2),
              // reverse: true,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
              initialPage: initial
            ),
          ),
          // SizedBox(height: 20.0,),
          AnimatedSmoothIndicator(
            activeIndex: initial,
            count: 3,
            effect: SwapEffect(
              activeDotColor: Colors.blue
            ),
          )
        ],
      ),
    );
  }
}