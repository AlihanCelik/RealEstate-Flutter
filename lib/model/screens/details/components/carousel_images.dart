import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constants/constants.dart';

class CarouselImages extends StatefulWidget{
  late final List<String> imagesListUrl;

  CarouselImages(this.imagesListUrl);
  @override
  _CarouselImagesState createState() => _CarouselImagesState();

}

class _CarouselImagesState extends State<CarouselImages>{
  @override
  Widget build(BuildContext context){
    Size size=MediaQuery.of(context).size;

    return Padding(padding: EdgeInsets.only(top: appPadding*3.7),
    child:   Container(
      height: size.height * 0.25,
      child: CarouselSlider(
        options: CarouselOptions(
          height: size.height * 0.35,
          autoPlay: false,
          enlargeCenterPage: true,
          aspectRatio: 16/9,
          viewportFraction: 0.8, // Slider'da birden fazla resim görünmesini sağlar
        ),
        items: widget.imagesListUrl.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20), // Köşeleri oval yapmak için
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover, // Resmi kapsayıcıya uydurur
                ),
              );
            },
          );
        }).toList(),
      ),
    ),);

  }
}