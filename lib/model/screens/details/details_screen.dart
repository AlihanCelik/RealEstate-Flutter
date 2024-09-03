import 'package:flutter/material.dart';
import 'package:my_app/model/screens/details/components/carousel_images.dart';
import 'package:my_app/model/screens/details/components/house_details.dart';

import '../../house.dart';
import '../details/components/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget{
  final House house;
  const DetailsScreen({required Key key,required this.house}):super(key: key);

  @override
  _DetailsScreenState createState() =>_DetailsScreenState();

}
class _DetailsScreenState extends State<DetailsScreen>{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              CarouselImages(widget.house.moreImagesUrl),
              CustomAppBar(),
            ],
          ),
          HouseDetails(widget.house)

        ],
      ),
    );
  }
}