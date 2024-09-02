import 'package:flutter/material.dart';
import 'package:my_app/constants/constants.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size=MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.only(
        left: appPadding,
          right:appPadding,
          top:appPadding * 2
    ),
      child: Container(
        height: size.height* 0.22,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.sort_rounded),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.black.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.insights_rounded),
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('City',style:TextStyle(color: black.withOpacity(0.4),fontSize:18)),
                SizedBox(height:size.height*0.01,),
                Text('San Francisco',style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight : FontWeight.bold
                ),),
              ],

            ),
            Divider(),
          ],
        ),

      ),
    );
  }
}