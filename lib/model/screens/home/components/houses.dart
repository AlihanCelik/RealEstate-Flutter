import 'package:flutter/material.dart';
import 'package:my_app/constants/constants.dart';
import 'package:my_app/data/data.dart';

import '../../../house.dart';

class Houses extends StatefulWidget{
  @override
  _HousesState createState() => _HousesState();

}

class _HousesState extends State<Houses>{
  Widget _buildHouse (BuildContext context,int index){
    Size size=MediaQuery.of(context).size;
    House house= houseList[index];
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: appPadding,vertical: appPadding/2
    ),
    child: Container(
      height: 250,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage(house.imageUrl),
                height: 180,
                width: size.width,
                fit:BoxFit.cover),
              ),
              Positioned(right: appPadding/2,top:appPadding/2,
              child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(
                      icon: house.isFav?
                      Icon(Icons.favorite,color: Colors.red):
                      Icon(Icons.favorite_border_rounded,color: Colors.black),
                      onPressed:(){
                        setState(() {
                          house.isFav!=house.isFav;
                        }


                        );},
                    ),
                  ))

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('\$${house.price.toStringAsFixed(3)}',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(width: 10,),
              Expanded(child: 
              Text(house.address,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15,
                color: Colors.black.withOpacity(0.4)),
              )
              )
            ],
          ),
          Row(
            children: [
              Text('${house.bedRooms} bedrooms /',style: TextStyle(
                fontSize: 15,fontWeight: FontWeight.w600
              ),),
              Text('${house.bathRooms} bathrooms /',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600
              ),),
              Text('${house.sqFeet} sqft',style: TextStyle(
                  fontSize: 15,fontWeight: FontWeight.w600
              ),),
            ],
          )

        ],
      ),
    ),);
  }
  @override
  Widget build(BuildContext context){
    return Expanded(
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: houseList.length,
            itemBuilder:(context,index){
              return _buildHouse(context,index);
            } ));
  }
}